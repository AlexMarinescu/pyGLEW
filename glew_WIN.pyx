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

#GL_WIN_phong_shading

GL_WIN_phong_shading = gl.GL_WIN_phong_shading

GL_PHONG_WIN = gl.GL_PHONG_WIN
GL_PHONG_HINT_WIN = gl.GL_PHONG_HINT_WIN

#GL_WIN_specular_fog

GL_WIN_specular_fog = gl.GL_WIN_specular_fog

GL_FOG_SPECULAR_TEXTURE_WIN = gl.GL_FOG_SPECULAR_TEXTURE_WIN

#GL_WIN_swap_hint

GL_WIN_swap_hint = gl.GL_WIN_swap_hint

def glAddSwapHintRectWIN(x, y, width, height):
    gl.glAddSwapHintRectWIN(x, y, width, height)