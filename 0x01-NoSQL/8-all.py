#!/usr/bin/env python3
"""
Find docs with python
"""


def list_all(mongo_collection):
    """
    list all document
    """
    return [doc for doc in mongo_collection.find()]
