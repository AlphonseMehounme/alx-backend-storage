#!/usr/bin/env python3
"""
Insert new doc
"""


def insert_school(mongo_collection, **kwargs):
    """
    add new doc to mong_collection
    """
    doc = {}
    for key, val in kwargs.items():
        doc.update({key: val})
    insert = mongo_collection.insert_one(doc)
    return insert.inserted_id
