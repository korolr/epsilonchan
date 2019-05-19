import sys
from aiohttp import web
from aiohttp_graphql import GraphQLView
import logging

import schema

if sys.platform != 'win32':
    import uvloop
    uvloop.install()

stdio_handler = logging.StreamHandler()
stdio_handler.setLevel(logging.INFO)
_logger = logging.getLogger('aiohttp.access')
_logger.addHandler(stdio_handler)
_logger.setLevel(logging.DEBUG)

app = web.Application(logger=_logger)
GraphQLView.attach(app, schema=schema.schema, graphiql=True)

if __name__ == '__main__':
    web.run_app(app, port=7000)
