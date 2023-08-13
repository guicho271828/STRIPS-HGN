#!/usr/bin/env python

from distutils.core import setup

setup(
    name='STRIPS-HGN',
    version='1.0',
    description='A framework for learning domain-independent planning heuristics',
    author='William Shen',
    author_email='',
    url='https://github.com/williamshen-nz/STRIPS-HGN/',
    packages=['hypergraph_nets', 'strips_hgn'],
    package_dir = {'': 'src'},
)
