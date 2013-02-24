#!/usr/bin/env python

from watermains import __appname__, __version__
from setuptools import setup

long_description = open('README.md', 'r').read()

setup(
    name=__appname__,
    version=__version__,
    packages=[
        'watermains',
    ],
    author="Paul Tagliamonte",
    author_email="paultag@debian.org",
    long_description=long_description,
    description='does some stuff with things & stuff',
    license="Expat",
    url="",
    platforms=['any']
)
