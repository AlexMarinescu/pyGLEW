cimport gl

# pyGLEW - Cython GLEW Wrapper for Python
#
# Copyright (C) 2012, Matthew Sitton
#               2012, Alex Marinescu
#
# LICENSED UNDER THE BSD LICENSE
#
# YOU SHOULD HAVE RECIEVED A COPY ALONG WITH THIS PROGRAM,
# SEE "LICENSE" FOR MORE INFORMATION.

#GL_KTX_buffer_region

GL_KTX_buffer_region = gl.GL_KTX_buffer_region

GL_KTX_FRONT_REGION = gl.GL_KTX_FRONT_REGION
GL_KTX_BACK_REGION = gl.GL_KTX_BACK_REGION
GL_KTX_Z_REGION = gl.GL_KTX_Z_REGION
GL_KTX_STENCIL_REGION = gl.GL_KTX_STENCIL_REGION

def glBufferRegionEnabled():
    return gl.glBufferRegionEnabled()

def glDeleteBufferRegion(region):
    gl.glDeleteBufferRegion(region)

def glDrawBufferRegion(region, x, y, width, height, xDest, yDest):
    gl.glDrawBufferRegion(region, x, y, width, height, xDest, yDest)

def glNewBufferRegion(region):
    return gl.glNewBufferRegion(region)

def glReadBufferRegion(region, x, y, width, height):
    gl.glReadBufferRegion(region, x, y, width, height)