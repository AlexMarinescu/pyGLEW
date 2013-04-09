# pyGLEW - Cython GLEW Wrapper for Python
#
# Copyright (C) 2012, Matthew Sitton
#               2012, Alex Marinescu
#
# LICENSED UNDER THE BSD LICENSE
#
# YOU SHOULD HAVE RECIEVED A COPY ALONG WITH THIS PROGRAM,
# SEE "LICENSE" FOR MORE INFORMATION.

from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

setup(
    name = 'pyGLEW',
    version =' 0.0.1a',
    description='GLEW Python binding',
    author = 'Alex Marinescu, Matthew Sitton',
    author_email = 'Alex: ale632007@gmail.com, Matthew: matthewsitton@gmail.com',
    url = 'https://github.com/AlexMarinescu/pyGLEW',
    license = 'BSD',
    cmdclass = {'build_ext': build_ext},
    ext_modules = [
    
        Extension("glew_ARB", ["glew_ARB.pyx"],
                  libraries=["opengl32","glu32","glew32"])                  
        ]
)
