import sys
from aiohttp import web
from aiohttp_graphql import GraphQLView
if sys.platform == 'win32':
    from server.schema import schema
else:
    from schema import schema

if sys.platform != 'win32':
    import uvloop
    uvloop.install()

app = web.Application()
GraphQLView.attach(app, schema=schema, graphiql=True)

if __name__ == '__main__':
    web.run_app(app, port=7000)
