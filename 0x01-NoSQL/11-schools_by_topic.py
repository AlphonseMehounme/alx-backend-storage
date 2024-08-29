#!/usr/bin/env python3
"""
Where to find topics
"""


def schools_by_topic(mongo_collection, topic):
    """
    returns school with topic
    """
    return mongo_collection.find({ "topics": topic })
