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

#GL_OES_byte_coordinates

GL_OES_byte_coordinates = gl.GL_OES_byte_coordinates

GL_BYTE = gl.GL_BYTE

#GL_OES_compressed_paletted_texture

GL_OES_compressed_paletted_texture = gl.GL_OES_compressed_paletted_texture

GL_PALETTE4_RGB8_OES = gl.GL_PALETTE4_RGB8_OES
GL_PALETTE4_RGBA8_OES = gl.GL_PALETTE4_RGBA8_OES
GL_PALETTE4_R5_G6_B5_OES = gl.GL_PALETTE4_R5_G6_B5_OES
GL_PALETTE4_RGBA4_OES = gl.GL_PALETTE4_RGBA4_OES
GL_PALETTE4_RGB5_A1_OES = gl.GL_PALETTE4_RGB5_A1_OES
GL_PALETTE8_RGB8_OES = gl.GL_PALETTE8_RGB8_OES
GL_PALETTE8_RGBA8_OES = gl.GL_PALETTE8_RGBA8_OES
GL_PALETTE8_R5_G6_B5_OES = gl.GL_PALETTE8_R5_G6_B5_OES
GL_PALETTE8_RGBA4_OES = gl.GL_PALETTE8_RGBA4_OES
GL_PALETTE8_RGB5_A1_OES = gl.GL_PALETTE8_RGB5_A1_OES

#GL_OES_read_format

GL_OES_read_format = gl.GL_OES_read_format

GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = gl.GL_IMPLEMENTATION_COLOR_READ_TYPE_OES
GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = gl.GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES

#GL_OES_single_precision

GL_OES_single_precision = gl.GL_OES_single_precision

def glClearDepthfOES(depth):
    gl.glClearDepthfOES(depth)

def glClipPlanefOES(plane, float equation):
    cdef float* equation1 = &equation
    gl.glClipPlanefOES(plane,  equation1)

def glDepthRangefOES(n, f):
    gl.glDepthRangefOES(n, f)

def glFrustumfOES(l, r, b, t, n, f):
    gl.glFrustumfOES(l, r, b, t, n, f)

def glGetClipPlanefOES(plane, float equation):
    cdef float* equation1 = &equation
    gl.glGetClipPlanefOES(plane, equation1)

def glOrthofOES(l, r, b, t, n, f):
    gl.glOrthofOES(l, r, b, t, n, f)