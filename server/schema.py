from graphql import parse, build_ast_schema

with open('schema.graphql') as source:
    document = parse(source.read())
schema = build_ast_schema(document)
