import datetime as dt

from server.db.db_actions import create_post, delete_post, get_posts


async def post_post_request(id_, num, board, text):
    time = dt.datetime.now()
    return await create_post(id_, time, num, board, text)


async def get_posts_request(board):
    return await get_posts(board)


async def delete_post_request(id_):
    return await delete_post(id_)
