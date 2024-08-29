#!/usr/bin/env python3
"""
Update school topics
"""


def update_topics(mongo_collection, name, topics):
    """
    update a school topics
    """
    query = { "name": name }
    newval = { "$set": {"topics": topics } }
    mongo_collection.update_many(query, newval)
