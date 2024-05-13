#!/usr/bin/env python3
"""
provides some stats about Nginx logs stored in MongoDB
"""

from pymongo import MongoClient

if __name__ == "__main__":
    client = MongoClient('localhost', 27017)
    collection = client.logs.nginx
    print("{} logs".format(collection.count_documents({})))
    print("Methods:")
    for method in ("GET", "POST", "PUT", "PATCH", "DELETE"):
        count = collection.count_documents({"method": method})
        print("\tmethod {}: {}".format(method, count))

    with_status = collection.count_documents({"method": "GET", "path": "/status"})
    print("{} status check".format(with_status))
