"""
(c) ΔQ Programming LLP, July 2021
This program is free software; you may redistribute and/or modify
it under the terms of the Apache License v2.0.
"""

from fire import decorators


def _client():
    """
    Returns a ThothClient object
    @return:
    """
    from client import ThothClient
    return ThothClient(version="0.4.2")


def _raw_parse(value):
    """
    This function overrides fire's default argument parsing using decorators.
    We need this because, otherwise, fire converts '{field: x}' to a
    dictionary object, which messes with GraphQL parameters.
    @param value: the input value
    @return: the parsed value
    """
    return value


@decorators.SetParseFn(_raw_parse)
def works(limit=100, order=None, offset=0, publishers=None, filter_str=None,
          work_type=None, work_status=None, raw=False):
    """
    A list of works
    @param limit: the maximum number of results to return
    @param order: a GraphQL order query statement
    @param offset: the offset from which to retrieve results
    @param publishers: a list of publishers to limit by
    @param filter_str: a filter string to search
    @param work_type: the work type (e.g. MONOGRAPH)
    @param work_status: the work status (e.g. ACTIVE)
    @param raw: whether to return a python object or the raw server result
    """
    print(*_client().works(limit=limit, order=order, offset=offset,
                           publishers=publishers, filter_str=filter_str,
                           work_type=work_type, work_status=work_status,
                           raw=raw), sep='\n')


def works_from_publisher(publishers_id=None, limit=100, offset=0):
    """
    Get a list of works from a specific publisher
    @param publishers_id: the ID of the publishers
    @param limit: the maximum number of results to return (-1 for all)
    @param offset: the offset from which to return results
    """
    print(_client().works(limit=limit, publishers=publishers_id, offset=offset))


def publishers(json=False):
    """
    Full list of metadata formats that can be output by Thoth
    @param json: whether to return JSON or an object (default)
    """
    print(_client().publishers())


if __name__ == '__main__':
    import fire

    fire.Fire()