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

#GL_HP_convolution_border_modes

GL_HP_convolution_border_modes = gl.GL_HP_convolution_border_modes

#GL_HP_image_transform

GL_HP_image_transform = gl.GL_HP_image_transform

def glGetImageTransformParameterfvHP(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetImageTransformParameterfvHP(target, pname,  params1)

def glGetImageTransformParameterivHP(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetImageTransformParameterivHP(target, pname,  params1)

def glImageTransformParameterfHP(target, pname, param):
    gl.glImageTransformParameterfHP(target, pname, param)

def glImageTransformParameterfvHP(target, pname, float params):
    cdef float* params1 = &params
    gl.glImageTransformParameterfvHP(target, pname,  params1)

def glImageTransformParameteriHP(target, pname, param):
    gl.glImageTransformParameteriHP(target, pname, param)

def glImageTransformParameterivHP(target, pname, int params):
    cdef int* params1 = &params
    gl.glImageTransformParameterivHP(target, pname,  params1)

#GL_HP_occlusion_test

GL_HP_occlusion_test = gl.GL_HP_occlusion_test

GL_OCCLUSION_TEST_HP = gl.GL_OCCLUSION_TEST_HP
GL_OCCLUSION_TEST_RESULT_HP = gl.GL_OCCLUSION_TEST_RESULT_HP

#GL_HP_texture_lighting

GL_HP_texture_lighting = gl.GL_HP_texture_lighting