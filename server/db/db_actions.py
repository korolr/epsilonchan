from server.db.client import mongo


async def create_post(id_, time, num, board, text):
    # probably backend should return post id
    return await mongo.insert_one('posts',
                                  {'post_id': id_, 'time': time, 'num': num,
                                   'board': board, 'text': text})


async def get_posts(board):
    res = await mongo.find_many('posts', {'board': board})
    print(res)
    return res


async def delete_post(id_):
    return await mongo.delete_one('posts', {'post_id': id_})

if __name__ == '__main__':
    import asyncio
    loop = asyncio.get_event_loop()
    loop.run_until_complete(delete_post(1))