#!/usr/bin/env python3
"""
Cache class
"""
import redis
import uuid
from typing import Union


class Cache:
    """
    Cache class
    """
    def __init__(self):
        """
        Init
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[int, str, bytes, float]) -> str:
        """
        Store data
        """
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key
