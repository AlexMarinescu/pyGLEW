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

#GL_MESAX_texture_stack

GL_MESAX_texture_stack = gl.GL_MESAX_texture_stack

GL_TEXTURE_1D_STACK_MESAX = gl.GL_TEXTURE_1D_STACK_MESAX
GL_TEXTURE_2D_STACK_MESAX = gl.GL_TEXTURE_2D_STACK_MESAX
GL_PROXY_TEXTURE_1D_STACK_MESAX = gl.GL_PROXY_TEXTURE_1D_STACK_MESAX
GL_PROXY_TEXTURE_2D_STACK_MESAX = gl.GL_PROXY_TEXTURE_2D_STACK_MESAX
GL_TEXTURE_1D_STACK_BINDING_MESAX = gl.GL_TEXTURE_1D_STACK_BINDING_MESAX
GL_TEXTURE_2D_STACK_BINDING_MESAX = gl.GL_TEXTURE_2D_STACK_BINDING_MESAX

#GL_MESA_pack_invert

GL_MESA_pack_invert = gl.GL_MESA_pack_invert

GL_PACK_INVERT_MESA = gl.GL_PACK_INVERT_MESA

#GL_MESA_resize_buffers

GL_MESA_resize_buffers = gl.GL_MESA_resize_buffers

def glResizeBuffersMESA():
    gl.glResizeBuffersMESA()

#GL_MESA_window_pos

GL_MESA_window_pos = gl.GL_MESA_window_pos

def glWindowPos2dMESA(x, y):
    gl.glWindowPos2dMESA(x, y)

def glWindowPos2dvMESA(double p):
    cdef double* p1 = &p
    gl.glWindowPos2dvMESA( p1)

def glWindowPos2fMESA(x, y):
    gl.glWindowPos2fMESA(x, y)

def glWindowPos2fvMESA(float p):
    cdef float* p1 = &p
    gl.glWindowPos2fvMESA( p1)

def glWindowPos2iMESA(x, y):
    gl.glWindowPos2iMESA(x, y)

def glWindowPos2ivMESA(int p):
    cdef int* p1 = &p
    gl.glWindowPos2ivMESA( p1)

def glWindowPos2sMESA(x, y):
    gl.glWindowPos2sMESA(x, y)

def glWindowPos2svMESA(short p):
    cdef short* p1 = &p
    gl.glWindowPos2svMESA( p1)

def glWindowPos3dMESA(x, y, z):
    gl.glWindowPos3dMESA(x, y, z)

def glWindowPos3dvMESA( double p):
    cdef double* p1 = &p
    gl.glWindowPos3dvMESA( p1)

def glWindowPos3fMESA(x, y, z):
    gl.glWindowPos3fMESA(x, y, z)

def glWindowPos3fvMESA(float p):
    cdef float* p1 = &p
    gl.glWindowPos3fvMESA( p1)

def glWindowPos3iMESA(x, y, z):
    gl.glWindowPos3iMESA(x, y, z)

def glWindowPos3ivMESA(int p):
    cdef int* p1 = &p
    gl.glWindowPos3ivMESA( p1)

def glWindowPos3sMESA(x, y, z):
    gl.glWindowPos3sMESA(x, y, z)

def glWindowPos3svMESA(short p):
    cdef short* p1 = &p
    gl.glWindowPos3svMESA( p1)

def glWindowPos4dMESA(x, y, z, A):
    gl.glWindowPos4dMESA(x, y, z, A)

def glWindowPos4dvMESA(double p):
    cdef double* p1 = &p
    gl.glWindowPos4dvMESA( p1)

def glWindowPos4fMESA(x, y, z, w):
    gl.glWindowPos4fMESA(x, y, z, w)

def glWindowPos4fvMESA(float p):
    cdef float* p1 = &p
    gl.glWindowPos4fvMESA( p1)

def glWindowPos4iMESA(x, y, z, w):
    gl.glWindowPos4iMESA(x, y, z, w)

def glWindowPos4ivMESA(int p):
    cdef int* p1 = &p
    gl.glWindowPos4ivMESA( p1)

def glWindowPos4sMESA(x, y, z, w):
    gl.glWindowPos4sMESA(x, y, z, w)

def glWindowPos4svMESA(short p):
    cdef short* p1 = &p
    gl.glWindowPos4svMESA( p1)

#GL_MESA_ycbcr_texture

GL_MESA_ycbcr_texture = gl.GL_MESA_ycbcr_texture

GL_UNSIGNED_SHORT_8_8_MESA = gl.GL_UNSIGNED_SHORT_8_8_MESA
GL_UNSIGNED_SHORT_8_8_REV_MESA = gl.GL_UNSIGNED_SHORT_8_8_REV_MESA
GL_YCBCR_MESA = gl.GL_YCBCR_MESA