import sys

from aiohttp import web
from aiohttp_graphql import GraphQLView
from schema import schema

app = web.Application()
GraphQLView.attach(app, schema=schema, graphiql=True)

if sys.platform != 'win32':
    import uvloop
    uvloop.install()


if __name__ == '__main__':
    web.run_app(app, host='127.0.0.1', port=7000)
