#!/usr/bin/env python3
"""
returns the list of school having a specific topic
"""
from pymongo.collection import Collection


def schools_by_topic(mongo_collection: Collection, topic):
    mongo_collection.find({"topic": {"$in": [topic]}})
