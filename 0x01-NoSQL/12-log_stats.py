#!/usr/bin/env python3
"""
Log nginx stats
"""
import pymongo


if __name__ == "__main__":
    client = pymongo.MongoClient('mongodb://127.0.0.1:27017')
    ng = client.logs.nginx
    print(f"{ng.count_documents({})} logs")
    print("Methods:")
    for met in ["GET", "POST", "PUT", "PATCH", "DELETE"]:
        print("\tmethod {}: {}".format(met, ng.count_documents({ "method": met })))
    print("{} status check".format(ng.count_documents({ "$and": [ {"method": "GET"}, { "path": "/status" } ] })))
