from motor.motor_asyncio import AsyncIOMotorClient


class MongoClient:
    def __init__(self, default_database, **kwargs):
        self.client = AsyncIOMotorClient(**kwargs)
        print(self.client.is_mongos)
        self.database = self.client[default_database]

    async def insert_one(self, collection, data):
        collection = self._get_collection(collection)
        return await collection.insert_one(data)

    async def find_many(self, collection, filter_):
        cursor = self._get_collection(collection).find(filter_)
        return [document async for document in cursor]

    async def delete_one(self, collection, filter_):
        collection = self._get_collection(collection)
        return await collection.delete_one(filter_)

    def change_database(self, database):
        self.database = self.client[database]

    def _get_collection(self, collection):
        return self.database[collection]


mongo = MongoClient('production', host='mongo', port=27017)