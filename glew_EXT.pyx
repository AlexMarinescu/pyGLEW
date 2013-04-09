cimport gl
from ctypes import*

# pyGLEW - Cython GLEW Wrapper for Python
#
# Copyright (C) 2012, Matthew Sitton
#               2012, Alex Marinescu
#
# LICENSED UNDER THE BSD LICENSE
#
# YOU SHOULD HAVE RECIEVED A COPY ALONG WITH THIS PROGRAM,
# SEE "LICENSE" FOR MORE INFORMATION.

#GL_EXT_422_pixels

GL_EXT_422_pixels = gl.GL_EXT_422_pixels

GL_422_EXT = gl.GL_422_EXT
GL_422_REV_EXT = gl.GL_422_REV_EXT
GL_422_AVERAGE_EXT = gl.GL_422_AVERAGE_EXT
GL_422_REV_AVERAGE_EXT = gl.GL_422_REV_AVERAGE_EXT

#GL_EXT_Cg_shader

GL_EXT_Cg_shader = gl.GL_EXT_Cg_shader

GL_CG_VERTEX_SHADER_EXT = gl.GL_CG_VERTEX_SHADER_EXT
GL_CG_FRAGMENT_SHADER_EXT = gl.GL_CG_FRAGMENT_SHADER_EXT

#GL_EXT_abgr

GL_EXT_abgr = gl.GL_EXT_abgr

GL_ABGR_EXT = gl.GL_ABGR_EXT

#GL_EXT_bgra

GL_EXT_bgra = gl.GL_EXT_bgra

GL_BGR_EXT = gl.GL_BGR_EXT
GL_BGRA_EXT = gl.GL_BGRA_EXT

#GL_EXT_bindable_uniform

GL_EXT_bindable_uniform = gl.GL_EXT_bindable_uniform

GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT = gl.GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT
GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT = gl.GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT
GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT = gl.GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT
GL_MAX_BINDABLE_UNIFORM_SIZE_EXT = gl.GL_MAX_BINDABLE_UNIFORM_SIZE_EXT
GL_UNIFORM_BUFFER_EXT = gl.GL_UNIFORM_BUFFER_EXT
GL_UNIFORM_BUFFER_BINDING_EXT = gl.GL_UNIFORM_BUFFER_BINDING_EXT

def glGetUniformBufferSizeEXT(program, location):
    return gl.glGetUniformBufferSizeEXT(program, location)

def glGetUniformOffsetEXT(program, location):
    return gl.glGetUniformOffsetEXT(program, location)

def glUniformBufferEXT(program, location, buffer):
    gl.glUniformBufferEXT(program, location, buffer)

#GL_EXT_blend_color

GL_EXT_blend_color = gl.GL_EXT_blend_color

GL_CONSTANT_COLOR_EXT = gl.GL_CONSTANT_COLOR_EXT
GL_ONE_MINUS_CONSTANT_COLOR_EXT = gl.GL_ONE_MINUS_CONSTANT_COLOR_EXT
GL_CONSTANT_ALPHA_EXT = gl.GL_CONSTANT_ALPHA_EXT
GL_ONE_MINUS_CONSTANT_ALPHA_EXT = gl.GL_ONE_MINUS_CONSTANT_ALPHA_EXT
GL_BLEND_COLOR_EXT = gl.GL_BLEND_COLOR_EXT

def glBlendColorEXT(red, green, blue, alpha):
    gl.glBlendColorEXT(red, green, blue, alpha)

#GL_EXT_blend_equation_separate

GL_EXT_blend_equation_separate = gl.GL_EXT_blend_equation_separate

GL_BLEND_EQUATION_RGB_EXT = gl.GL_BLEND_EQUATION_RGB_EXT
GL_BLEND_EQUATION_ALPHA_EXT = gl.GL_BLEND_EQUATION_ALPHA_EXT

def glBlendEquationSeparateEXT(modeRGB, modeAlpha):
    gl.glBlendEquationSeparateEXT(modeRGB, modeAlpha)

#GL_EXT_blend_func_separate

GL_EXT_blend_func_separate = gl.GL_EXT_blend_func_separate

GL_BLEND_DST_RGB_EXT = gl.GL_BLEND_DST_RGB_EXT
GL_BLEND_SRC_RGB_EXT = gl.GL_BLEND_SRC_RGB_EXT
GL_BLEND_DST_ALPHA_EXT = gl.GL_BLEND_DST_ALPHA_EXT
GL_BLEND_SRC_ALPHA_EXT = gl.GL_BLEND_SRC_ALPHA_EXT

def glBlendFuncSeparateEXT(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha):
    gl.glBlendFuncSeparateEXT(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha)

#GL_EXT_blend_logic_op

GL_EXT_blend_logic_op = gl.GL_EXT_blend_logic_op

#GL_EXT_blend_minmax

GL_EXT_blend_minmax = gl.GL_EXT_blend_minmax

GL_FUNC_ADD_EXT = gl.GL_FUNC_ADD_EXT
GL_MIN_EXT = gl.GL_MIN_EXT
GL_MAX_EXT = gl.GL_MAX_EXT
GL_BLEND_EQUATION_EXT = gl.GL_BLEND_EQUATION_EXT

def glBlendEquationEXT(mode):
    gl.glBlendEquationEXT(mode)

#GL_EXT_blend_subtract

GL_EXT_blend_subtract = gl.GL_EXT_blend_subtract

GL_FUNC_SUBTRACT_EXT = gl.GL_FUNC_SUBTRACT_EXT
GL_FUNC_REVERSE_SUBTRACT_EXT = gl.GL_FUNC_REVERSE_SUBTRACT_EXT

#GL_EXT_clip_volume_hint

GL_EXT_clip_volume_hint = gl.GL_EXT_clip_volume_hint

GL_CLIP_VOLUME_CLIPPING_HINT_EXT = gl.GL_CLIP_VOLUME_CLIPPING_HINT_EXT

#GL_EXT_cmyka

GL_EXT_cmyka = gl.GL_EXT_cmyka

GL_CMYK_EXT = gl.GL_CMYK_EXT
GL_CMYKA_EXT = gl.GL_CMYKA_EXT
GL_PACK_CMYK_HINT_EXT = gl.GL_PACK_CMYK_HINT_EXT
GL_UNPACK_CMYK_HINT_EXT = gl.GL_UNPACK_CMYK_HINT_EXT

#GL_EXT_color_subtable

GL_EXT_color_subtable = gl.GL_EXT_color_subtable

def glColorSubTableEXT(target, start, count, format, type,  data):
    gl.glColorSubTableEXT(target, start, count, format, type,  <void*>data)

def glCopyColorSubTableEXT(target, start, x, y, width):
    gl.glCopyColorSubTableEXT(target, start, x, y, width)

#GL_EXT_compiled_vertex_array

GL_EXT_compiled_vertex_array = gl.GL_EXT_compiled_vertex_array

GL_ARRAY_ELEMENT_LOCK_FIRST_EXT = gl.GL_ARRAY_ELEMENT_LOCK_FIRST_EXT
GL_ARRAY_ELEMENT_LOCK_COUNT_EXT = gl.GL_ARRAY_ELEMENT_LOCK_COUNT_EXT

def glLockArraysEXT(first, count):
    gl.glLockArraysEXT(first, count)

def glUnlockArraysEXT():
    gl.glUnlockArraysEXT()

#GL_EXT_convolution

GL_EXT_convolution = gl.GL_EXT_convolution

GL_CONVOLUTION_1D_EXT = gl.GL_CONVOLUTION_1D_EXT
GL_CONVOLUTION_2D_EXT = gl.GL_CONVOLUTION_2D_EXT
GL_SEPARABLE_2D_EXT = gl.GL_SEPARABLE_2D_EXT
GL_CONVOLUTION_BORDER_MODE_EXT = gl.GL_CONVOLUTION_BORDER_MODE_EXT
GL_CONVOLUTION_FILTER_SCALE_EXT = gl.GL_CONVOLUTION_FILTER_SCALE_EXT
GL_CONVOLUTION_FILTER_BIAS_EXT = gl.GL_CONVOLUTION_FILTER_BIAS_EXT
GL_REDUCE_EXT = gl.GL_REDUCE_EXT
GL_CONVOLUTION_FORMAT_EXT = gl.GL_CONVOLUTION_FORMAT_EXT
GL_CONVOLUTION_WIDTH_EXT = gl.GL_CONVOLUTION_WIDTH_EXT
GL_CONVOLUTION_HEIGHT_EXT = gl.GL_CONVOLUTION_HEIGHT_EXT
GL_MAX_CONVOLUTION_WIDTH_EXT = gl.GL_MAX_CONVOLUTION_WIDTH_EXT
GL_MAX_CONVOLUTION_HEIGHT_EXT = gl.GL_MAX_CONVOLUTION_HEIGHT_EXT
GL_POST_CONVOLUTION_RED_SCALE_EXT = gl.GL_POST_CONVOLUTION_RED_SCALE_EXT
GL_POST_CONVOLUTION_GREEN_SCALE_EXT = gl.GL_POST_CONVOLUTION_GREEN_SCALE_EXT
GL_POST_CONVOLUTION_BLUE_SCALE_EXT = gl.GL_POST_CONVOLUTION_BLUE_SCALE_EXT
GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = gl.GL_POST_CONVOLUTION_ALPHA_SCALE_EXT
GL_POST_CONVOLUTION_RED_BIAS_EXT = gl.GL_POST_CONVOLUTION_RED_BIAS_EXT
GL_POST_CONVOLUTION_GREEN_BIAS_EXT = gl.GL_POST_CONVOLUTION_GREEN_BIAS_EXT
GL_POST_CONVOLUTION_BLUE_BIAS_EXT = gl.GL_POST_CONVOLUTION_BLUE_BIAS_EXT
GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = gl.GL_POST_CONVOLUTION_ALPHA_BIAS_EXT

def glConvolutionFilter1DEXT(target, internalformat, width, format, type,  image):
    gl.glConvolutionFilter1DEXT(target, internalformat, width, format, type,  <void*>image)

def glConvolutionFilter2DEXT(target, internalformat, width, height, format, type,  image):
    gl.glConvolutionFilter2DEXT(target, internalformat, width, height, format, type,  <void*>image)

def glConvolutionParameterfEXT(target, pname, param):
    gl.glConvolutionParameterfEXT(target, pname, param)

def glConvolutionParameterfvEXT(target, pname, float params):
    cdef float* params1 = &params
    gl.glConvolutionParameterfvEXT(target, pname,  params1)

def glConvolutionParameteriEXT(target, pname, param):
    gl.glConvolutionParameteriEXT(target, pname, param)

def glConvolutionParameterivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glConvolutionParameterivEXT(target, pname,  params1)

def glCopyConvolutionFilter1DEXT(target, internalformat, x, y, width):
    gl.glCopyConvolutionFilter1DEXT(target, internalformat, x, y, width)

def glCopyConvolutionFilter2DEXT(target, internalformat, x, y, width, height):
    gl.glCopyConvolutionFilter2DEXT(target, internalformat, x, y, width, height)

def glGetConvolutionFilterEXT(target, format, type, image):
    gl.glGetConvolutionFilterEXT(target, format, type, <void*>image)

def glGetConvolutionParameterfvEXT(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetConvolutionParameterfvEXT(target, pname, params1)

def glGetConvolutionParameterivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetConvolutionParameterivEXT(target, pname, params1)

def glGetSeparableFilterEXT(target, format, type, row, column, span):
    gl.glGetSeparableFilterEXT(target, format, type, <void*>row, <void*>column, <void*>span)

def glSeparableFilter2DEXT(target, internalformat, width, height, format, type,  row,  column):
    gl.glSeparableFilter2DEXT(target, internalformat, width, height, format, type,  <void*>row,  <void*>column)

#GL_EXT_coordinate_frame

GL_EXT_coordinate_frame = gl.GL_EXT_coordinate_frame

GL_TANGENT_ARRAY_EXT = gl.GL_TANGENT_ARRAY_EXT
GL_BINORMAL_ARRAY_EXT = gl.GL_BINORMAL_ARRAY_EXT
GL_CURRENT_TANGENT_EXT = gl.GL_CURRENT_TANGENT_EXT
GL_CURRENT_BINORMAL_EXT = gl.GL_CURRENT_BINORMAL_EXT
GL_TANGENT_ARRAY_TYPE_EXT = gl.GL_TANGENT_ARRAY_TYPE_EXT
GL_TANGENT_ARRAY_STRIDE_EXT = gl.GL_TANGENT_ARRAY_STRIDE_EXT
GL_BINORMAL_ARRAY_TYPE_EXT = gl.GL_BINORMAL_ARRAY_TYPE_EXT
GL_BINORMAL_ARRAY_STRIDE_EXT = gl.GL_BINORMAL_ARRAY_STRIDE_EXT
GL_TANGENT_ARRAY_POINTER_EXT = gl.GL_TANGENT_ARRAY_POINTER_EXT
GL_BINORMAL_ARRAY_POINTER_EXT = gl.GL_BINORMAL_ARRAY_POINTER_EXT
GL_MAP1_TANGENT_EXT = gl.GL_MAP1_TANGENT_EXT
GL_MAP2_TANGENT_EXT = gl.GL_MAP2_TANGENT_EXT
GL_MAP1_BINORMAL_EXT = gl.GL_MAP1_BINORMAL_EXT
GL_MAP2_BINORMAL_EXT = gl.GL_MAP2_BINORMAL_EXT

def glBinormalPointerEXT(type, stride, pointer):
    gl.glBinormalPointerEXT(type, stride, <void*>pointer)

def glTangentPointerEXT(type, stride, pointer):
    gl.glTangentPointerEXT(type, stride, <void*>pointer)

#GL_EXT_copy_texture

GL_EXT_copy_texture = gl.GL_EXT_copy_texture

def glCopyTexImage1DEXT(target, level, internalformat, x, y, width, border):
    gl.glCopyTexImage1DEXT(target, level, internalformat, x, y, width, border)

def glCopyTexImage2DEXT(target, level, internalformat, x, y, width, height, border):
    gl.glCopyTexImage2DEXT(target, level, internalformat, x, y, width, height, border)

def glCopyTexSubImage1DEXT(target, level, xoffset, x, y, width):
    gl.glCopyTexSubImage1DEXT(target, level, xoffset, x, y, width)

def glCopyTexSubImage2DEXT(target, level, xoffset, yoffset, x, y, width, height):
    gl.glCopyTexSubImage2DEXT(target, level, xoffset, yoffset, x, y, width, height)

def glCopyTexSubImage3DEXT(target, level, xoffset, yoffset, zoffset, x, y, width, height):
    gl.glCopyTexSubImage3DEXT(target, level, xoffset, yoffset, zoffset, x, y, width, height)

#GL_EXT_cull_vertex

GL_EXT_cull_vertex = gl.GL_EXT_cull_vertex

GL_CULL_VERTEX_EXT = gl.GL_CULL_VERTEX_EXT
GL_CULL_VERTEX_EYE_POSITION_EXT = gl.GL_CULL_VERTEX_EYE_POSITION_EXT
GL_CULL_VERTEX_OBJECT_POSITION_EXT = gl.GL_CULL_VERTEX_OBJECT_POSITION_EXT

def glCullParameterdvEXT(pname, double params):
    cdef double* params1 = &params
    gl.glCullParameterdvEXT(pname, params1)

def glCullParameterfvEXT(pname, float params):
    cdef float* params1 = &params
    gl.glCullParameterfvEXT(pname, params1)

#GL_EXT_depth_bounds_test

GL_EXT_depth_bounds_test = gl.GL_EXT_depth_bounds_test

GL_DEPTH_BOUNDS_TEST_EXT = gl.GL_DEPTH_BOUNDS_TEST_EXT
GL_DEPTH_BOUNDS_EXT = gl.GL_DEPTH_BOUNDS_EXT

def glDepthBoundsEXT(zmin, zmax):
    gl.glDepthBoundsEXT(zmin, zmax)

#GL_EXT_direct_state_access

GL_EXT_direct_state_access = gl.GL_EXT_direct_state_access

GL_PROGRAM_MATRIX_EXT = gl.GL_PROGRAM_MATRIX_EXT
GL_TRANSPOSE_PROGRAM_MATRIX_EXT = gl.GL_TRANSPOSE_PROGRAM_MATRIX_EXT
GL_PROGRAM_MATRIX_STACK_DEPTH_EXT = gl.GL_PROGRAM_MATRIX_STACK_DEPTH_EXT

def glBindMultiTextureEXT(texunit, target, texture):
    gl.glBindMultiTextureEXT(texunit, target, texture)

def glCheckNamedFramebufferStatusEXT(framebuffer, target):
    return gl.glCheckNamedFramebufferStatusEXT(framebuffer, target)

def glClientAttribDefaultEXT(mask):
    gl.glClientAttribDefaultEXT(mask)

def glCompressedMultiTexImage1DEXT(texunit, target, level, internalformat, width, border, imageSize,  data):
    gl.glCompressedMultiTexImage1DEXT(texunit, target, level, internalformat, width, border, imageSize,  <void*>data)

def glCompressedMultiTexImage2DEXT(texunit, target, level, internalformat, width, height, border, imageSize,  data):
    gl.glCompressedMultiTexImage2DEXT(texunit, target, level, internalformat, width, height, border, imageSize,  <void*>data)

def glCompressedMultiTexImage3DEXT(texunit, target, level, internalformat, width, height, depth, border, imageSize,  data):
    gl.glCompressedMultiTexImage3DEXT(texunit, target, level, internalformat, width, height, depth, border, imageSize,  <void*>data)

def glCompressedMultiTexSubImage1DEXT(texunit, target, level, xoffset, width, format, imageSize,  data):
    gl.glCompressedMultiTexSubImage1DEXT(texunit, target, level, xoffset, width, format, imageSize,  <void*>data)

def glCompressedMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, width, height, format, imageSize,  data):
    gl.glCompressedMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, width, height, format, imageSize,  <void*>data)

def glCompressedMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize,  data):
    gl.glCompressedMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize,  <void*>data)

def glCompressedTextureImage1DEXT(texture, target, level, internalformat, width, border, imageSize,  data):
    gl.glCompressedTextureImage1DEXT(texture, target, level, internalformat, width, border, imageSize,  <void*>data)

def glCompressedTextureImage2DEXT(texture, target, level, internalformat, width, height, border, imageSize,  data):
    gl.glCompressedTextureImage2DEXT(texture, target, level, internalformat, width, height, border, imageSize,  <void*>data)

def glCompressedTextureImage3DEXT(texture, target, level, internalformat, width, height, depth, border, imageSize,  data):
    gl.glCompressedTextureImage3DEXT(texture, target, level, internalformat, width, height, depth, border, imageSize,  <void*>data)

def glCompressedTextureSubImage1DEXT(texture, target, level, xoffset, width, format, imageSize,  data):
    gl.glCompressedTextureSubImage1DEXT(texture, target, level, xoffset, width, format, imageSize,  <void*>data)

def glCompressedTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, width, height, format, imageSize,  data):
    gl.glCompressedTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, width, height, format, imageSize,  <void*>data)

def glCompressedTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize,  data):
    gl.glCompressedTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize,  <void*>data)

def glCopyMultiTexImage1DEXT(texunit, target, level, internalformat, x, y, width, border):
    gl.glCopyMultiTexImage1DEXT(texunit, target, level, internalformat, x, y, width, border)

def glCopyMultiTexImage2DEXT(texunit, target, level, internalformat, x, y, width, height, border):
    gl.glCopyMultiTexImage2DEXT(texunit, target, level, internalformat, x, y, width, height, border)

def glCopyMultiTexSubImage1DEXT(texunit, target, level, xoffset, x, y, width):
    gl.glCopyMultiTexSubImage1DEXT(texunit, target, level, xoffset, x, y, width)

def glCopyMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, x, y, width, height):
    gl.glCopyMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, x, y, width, height)

def glCopyMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, x, y, width, height):
    gl.glCopyMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, x, y, width, height)

def glCopyTextureImage1DEXT(texture, target, level, internalformat, x, y, width, border):
    gl.glCopyTextureImage1DEXT(texture, target, level, internalformat, x, y, width, border)

def glCopyTextureImage2DEXT(texture, target, level, internalformat, x, y, width, height, border):
    gl.glCopyTextureImage2DEXT(texture, target, level, internalformat, x, y, width, height, border)

def glCopyTextureSubImage1DEXT(texture, target, level, xoffset, x, y, width):
    gl.glCopyTextureSubImage1DEXT(texture, target, level, xoffset, x, y, width)

def glCopyTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, x, y, width, height):
    gl.glCopyTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, x, y, width, height)

def glCopyTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, x, y, width, height):
    gl.glCopyTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, x, y, width, height)

def glDisableClientStateIndexedEXT(array, index):
    gl.glDisableClientStateIndexedEXT(array, index)

def glDisableClientStateiEXT(array, index):
    gl.glDisableClientStateiEXT(array, index)

def glDisableVertexArrayAttribEXT(vaobj, index):
    gl.glDisableVertexArrayAttribEXT(vaobj, index)

def glDisableVertexArrayEXT(vaobj, array):
    gl.glDisableVertexArrayEXT(vaobj, array)

def glEnableClientStateIndexedEXT(array, index):
    gl.glEnableClientStateIndexedEXT(array, index)

def glEnableClientStateiEXT(array, index):
    gl.glEnableClientStateiEXT(array, index)

def glEnableVertexArrayAttribEXT(vaobj, index):
    gl.glEnableVertexArrayAttribEXT(vaobj, index)

def glEnableVertexArrayEXT(vaobj, array):
    gl.glEnableVertexArrayEXT(vaobj, array)

def glFlushMappedNamedBufferRangeEXT(buffer, offset, length):
    gl.glFlushMappedNamedBufferRangeEXT(buffer, offset, length)

def glFramebufferDrawBufferEXT(framebuffer, mode):
    gl.glFramebufferDrawBufferEXT(framebuffer, mode)

def glFramebufferDrawBuffersEXT(framebuffer, n, bufs):
    gl.glFramebufferDrawBuffersEXT(framebuffer, n, bufs)

def glFramebufferReadBufferEXT(framebuffer, mode):
    gl.glFramebufferReadBufferEXT(framebuffer, mode)

def glGenerateMultiTexMipmapEXT(texunit, target):
    gl.glGenerateMultiTexMipmapEXT(texunit, target)

def glGenerateTextureMipmapEXT(texture, target):
    gl.glGenerateTextureMipmapEXT(texture, target)

def glGetCompressedMultiTexImageEXT(texunit, target, level, img):
    gl.glGetCompressedMultiTexImageEXT(texunit, target, level, <void*>img)

def glGetCompressedTextureImageEXT(texture, target, level, img):
    gl.glGetCompressedTextureImageEXT(texture, target, level, <void*>img)

def glGetDoubleIndexedvEXT(target, index, double params):
    cdef double* params1 = &params
    gl.glGetDoubleIndexedvEXT(target, index, params1)

def glGetDoublei_vEXT(pname, index, double params):
    cdef double* params1 = &params
    gl.glGetDoublei_vEXT(pname, index, params1)

def glGetFloatIndexedvEXT(target, index, float params):
    cdef float* params1 = &params
    gl.glGetFloatIndexedvEXT(target, index, params1)

def glGetFloati_vEXT(pname, index, float params):
    cdef float* params1 = &params
    gl.glGetFloati_vEXT(pname, index, params1)

def glGetFramebufferParameterivEXT(framebuffer, pname, int param):
    cdef int* param1 = &param
    gl.glGetFramebufferParameterivEXT(framebuffer, pname, param1)

def glGetMultiTexEnvfvEXT(texunit, target, pname, float params):
    cdef float* params1 = &params
    gl.glGetMultiTexEnvfvEXT(texunit, target, pname, params1)

def glGetMultiTexEnvivEXT(texunit, target, pname, int params):
    cdef int* params1 = &params
    gl.glGetMultiTexEnvivEXT(texunit, target, pname, params1)

def glGetMultiTexGendvEXT(texunit, coord, pname, double params):
    cdef double* params1 = &params
    gl.glGetMultiTexGendvEXT(texunit, coord, pname, params1)

def glGetMultiTexGenfvEXT(texunit, coord, pname, float params):
    cdef float* params1 = &params
    gl.glGetMultiTexGenfvEXT(texunit, coord, pname, params1)

def glGetMultiTexGenivEXT(texunit, coord, pname, int params):
    cdef int* params1 = &params
    gl.glGetMultiTexGenivEXT(texunit, coord, pname, params1)

def glGetMultiTexImageEXT(texunit, target, level, format, type, pixels):
    gl.glGetMultiTexImageEXT(texunit, target, level, format, type, <void*>pixels)

def glGetMultiTexLevelParameterfvEXT(texunit, target, level, pname, float params):
    cdef float* params1 = &params
    gl.glGetMultiTexLevelParameterfvEXT(texunit, target, level, pname, params1)

def glGetMultiTexLevelParameterivEXT(texunit, target, level, pname, int params):
    cdef int* params1 = &params
    gl.glGetMultiTexLevelParameterivEXT(texunit, target, level, pname, params1)

def glGetMultiTexParameterIivEXT(texunit, target, pname, int params):
    cdef int* params1 = &params
    gl.glGetMultiTexParameterIivEXT(texunit, target, pname, params1)

def glGetMultiTexParameterIuivEXT(texunit, target, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetMultiTexParameterIuivEXT(texunit, target, pname, params1)

def glGetMultiTexParameterfvEXT(texunit, target, pname, float params):
    cdef float* params1 = &params
    gl.glGetMultiTexParameterfvEXT(texunit, target, pname, params1)

def glGetMultiTexParameterivEXT(texunit, target, pname, int params):
    cdef int* params1 = &params
    gl.glGetMultiTexParameterivEXT(texunit, target, pname, params1)

def glGetNamedBufferParameterivEXT(buffer, pname, int params):
    cdef int* params1 = &params
    gl.glGetNamedBufferParameterivEXT(buffer, pname, params1)

def glGetNamedBufferPointervEXT(buffer, pname, params):
    cdef void* t = <void*>params
    gl.glGetNamedBufferPointervEXT(buffer, pname, &t)

def glGetNamedBufferSubDataEXT(buffer, offset, size, data):
    gl.glGetNamedBufferSubDataEXT(buffer, offset, size, <void*>data)

def glGetNamedFramebufferAttachmentParameterivEXT(framebuffer, attachment, pname, int params):
    cdef int* params1 = &params
    gl.glGetNamedFramebufferAttachmentParameterivEXT(framebuffer, attachment, pname, params1)

def glGetNamedProgramLocalParameterIivEXT(program, target, index, int params):
    cdef int* params1 = &params
    gl.glGetNamedProgramLocalParameterIivEXT(program, target, index, params1)

def glGetNamedProgramLocalParameterIuivEXT(program, target, index, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetNamedProgramLocalParameterIuivEXT(program, target, index, params1)

def glGetNamedProgramLocalParameterdvEXT(program, target, index, double params):
    cdef double* params1 = &params
    gl.glGetNamedProgramLocalParameterdvEXT(program, target, index, params1)

def glGetNamedProgramLocalParameterfvEXT(program, target, index, float params):
    cdef float* params1 = &params
    gl.glGetNamedProgramLocalParameterfvEXT(program, target, index, params1)

def glGetNamedProgramStringEXT(program, target, pname, string):
    gl.glGetNamedProgramStringEXT(program, target, pname, <void*>string)

def glGetNamedProgramivEXT(program, target, pname, int params):
    cdef int* params1 = &params
    gl.glGetNamedProgramivEXT(program, target, pname, params1)

def glGetNamedRenderbufferParameterivEXT(renderbuffer, pname, int params):
    cdef int* params1 = &params
    gl.glGetNamedRenderbufferParameterivEXT(renderbuffer, pname, params1)

def glGetPointerIndexedvEXT(target, index, params):
    cdef void* t = <void*>params
    gl.glGetPointerIndexedvEXT(target, index, &t)

def glGetPointeri_vEXT(pname, index, params):
    cdef void* t = <void*>params
    gl.glGetPointeri_vEXT(pname, index, &t)

def glGetTextureImageEXT(texture, target, level, format, type, pixels):
    gl.glGetTextureImageEXT(texture, target, level, format, type, <void*>pixels)

def glGetTextureLevelParameterfvEXT(texture, target, level, pname, float params):
    cdef float* params1 = &params
    gl.glGetTextureLevelParameterfvEXT(texture, target, level, pname, params1)

def glGetTextureLevelParameterivEXT(texture, target, level, pname, int params):
    cdef int* params1 = &params
    gl.glGetTextureLevelParameterivEXT(texture, target, level, pname, params1)

def glGetTextureParameterIivEXT(texture, target, pname, int params):
    cdef int* params1 = &params
    gl.glGetTextureParameterIivEXT(texture, target, pname, params1)

def glGetTextureParameterIuivEXT(texture, target, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetTextureParameterIuivEXT(texture, target, pname, params1)

def glGetTextureParameterfvEXT(texture, target, pname, float params):
    cdef float* params1 = &params
    gl.glGetTextureParameterfvEXT(texture, target, pname, params1)

def glGetTextureParameterivEXT(texture, target, pname, int params):
    cdef int* params1 = &params
    gl.glGetTextureParameterivEXT(texture, target, pname, params1)

def glGetVertexArrayIntegeri_vEXT(vaobj, index, pname, int param):
    cdef int* param1 = &param
    gl.glGetVertexArrayIntegeri_vEXT(vaobj, index, pname, param1)

def glGetVertexArrayIntegervEXT(vaobj, pname, int param):
    cdef int* param1 = &param
    gl.glGetVertexArrayIntegervEXT(vaobj, pname, param1)

def glGetVertexArrayPointeri_vEXT(vaobj, index, pname, param):
    cdef void* t = <void*>param
    gl.glGetVertexArrayPointeri_vEXT(vaobj, index, pname, &t)

def glGetVertexArrayPointervEXT(vaobj, pname, param):
    cdef void* t = <void*>param
    gl.glGetVertexArrayPointervEXT(vaobj, pname, &t)

cdef void *cglMapNamedBufferEXT(buffer, access):
    return gl.glMapNamedBufferEXT(buffer, access)
    
def glMapNamedBufferEXT(buffer, access):
    test = <char*>cglMapNamedBufferEXT(buffer,access)
    return ctypes.cast(test,ctypes.c_void_p).value

cdef void *cglMapNamedBufferRangeEXT(buffer, offset, length, access):
    return gl.glMapNamedBufferRangeEXT(buffer, offset, lengt, access)
    
def glMapNamedBufferRangeEXT(buffer, offset, length, access):
    test = <char*>cglMapNamedBufferRangeEXT(buffer, offset, length, access)
    return ctypes.cast(test,ctypes.c_void_p).value

def glMatrixFrustumEXT(matrixMode, l, r, b, t, n, f):
    gl.glMatrixFrustumEXT(matrixMode, l, r, b, t, n, f)

def glMatrixLoadIdentityEXT(matrixMode):
    gl.glMatrixLoadIdentityEXT(matrixMode)

def glMatrixLoadTransposedEXT(matrixMode, double m):
    cdef double* m1 = &m
    gl.glMatrixLoadTransposedEXT(matrixMode,  m1)

def glMatrixLoadTransposefEXT(matrixMode, float m):
    cdef float* m1 = &m
    gl.glMatrixLoadTransposefEXT(matrixMode,  m1)

def glMatrixLoaddEXT(matrixMode, double m):
    cdef double* m1 = &m
    gl.glMatrixLoaddEXT(matrixMode,  m1)

def glMatrixLoadfEXT(matrixMode, float m):
    cdef float* m1 = &m
    gl.glMatrixLoadfEXT(matrixMode,  m1)

def glMatrixMultTransposedEXT(matrixMode, double m):
    cdef double* m1 = &m
    gl.glMatrixMultTransposedEXT(matrixMode,  m1)

def glMatrixMultTransposefEXT(matrixMode, float m):
    cdef float* m1 = &m
    gl.glMatrixMultTransposefEXT(matrixMode,  m1)

def glMatrixMultdEXT(matrixMode, double m):
    cdef double* m1 = &m
    gl.glMatrixMultdEXT(matrixMode,  m1)

def glMatrixMultfEXT(matrixMode, float m):
    cdef float* m1 = &m
    gl.glMatrixMultfEXT(matrixMode,  m1)

def glMatrixOrthoEXT(matrixMode, l, r, b, t, n, f):
    gl.glMatrixOrthoEXT(matrixMode, l, r, b, t, n, f)

def glMatrixPopEXT(matrixMode):
    gl.glMatrixPopEXT(matrixMode)

def glMatrixPushEXT(matrixMode):
    gl.glMatrixPushEXT(matrixMode)

def glMatrixRotatedEXT(matrixMode, angle, x, y, z):
    gl.glMatrixRotatedEXT(matrixMode, angle, x, y, z)

def glMatrixRotatefEXT(matrixMode, angle, x, y, z):
    gl.glMatrixRotatefEXT(matrixMode, angle, x, y, z)

def glMatrixScaledEXT(matrixMode, x, y, z):
    gl.glMatrixScaledEXT(matrixMode, x, y, z)

def glMatrixScalefEXT(matrixMode, x, y, z):
    gl.glMatrixScalefEXT(matrixMode, x, y, z)

def glMatrixTranslatedEXT(matrixMode, x, y, z):
    gl.glMatrixTranslatedEXT(matrixMode, x, y, z)

def glMatrixTranslatefEXT(matrixMode, x, y, z):
    gl.glMatrixTranslatefEXT(matrixMode, x, y, z)

def glMultiTexBufferEXT(texunit, target, internalformat, buffer):
    gl.glMultiTexBufferEXT(texunit, target, internalformat, buffer)

def glMultiTexCoordPointerEXT(texunit, size, type, stride,  pointer):
    gl.glMultiTexCoordPointerEXT(texunit, size, type, stride,  <void*>pointer)

def glMultiTexEnvfEXT(texunit, target, pname, param):
    gl.glMultiTexEnvfEXT(texunit, target, pname, param)

def glMultiTexEnvfvEXT(texunit, target, pname, float params):
    cdef float* params1 = &params
    gl.glMultiTexEnvfvEXT(texunit, target, pname,  params1)

def glMultiTexEnviEXT(texunit, target, pname, param):
    gl.glMultiTexEnviEXT(texunit, target, pname, param)

def glMultiTexEnvivEXT(texunit, target, pname, int params):
    cdef int* params1 = &params
    gl.glMultiTexEnvivEXT(texunit, target, pname,  params1)

def glMultiTexGendEXT(texunit, coord, pname, param):
    gl.glMultiTexGendEXT(texunit, coord, pname, param)

def glMultiTexGendvEXT(texunit, coord, pname, double params):
    cdef double* params1 = &params
    gl.glMultiTexGendvEXT(texunit, coord, pname,  params1)

def glMultiTexGenfEXT(texunit, coord, pname, param):
    gl.glMultiTexGenfEXT(texunit, coord, pname, param)

def glMultiTexGenfvEXT(texunit, coord, pname, float params):
    cdef float* params1 = &params
    gl.glMultiTexGenfvEXT(texunit, coord, pname,  params1)

def glMultiTexGeniEXT(texunit, coord, pname, param):
    gl.glMultiTexGeniEXT(texunit, coord, pname, param)

def glMultiTexGenivEXT(texunit, coord, pname, int params):
    cdef int* params1 = &params
    gl.glMultiTexGenivEXT(texunit, coord, pname,  params1)

def glMultiTexImage1DEXT(texunit, target, level, internalformat, width, border, format, type,  pixels):
    gl.glMultiTexImage1DEXT(texunit, target, level, internalformat, width, border, format, type,  <void*>pixels)

def glMultiTexImage2DEXT(texunit, target, level, internalformat, width, height, border, format, type,  pixels):
    gl.glMultiTexImage2DEXT(texunit, target, level, internalformat, width, height, border, format, type,  <void*>pixels)

def glMultiTexImage3DEXT(texunit, target, level, internalformat, width, height, depth, border, format, type,  pixels):
    gl.glMultiTexImage3DEXT(texunit, target, level, internalformat, width, height, depth, border, format, type,  <void*>pixels)

def glMultiTexParameterIivEXT(texunit, target, pname, int params):
    cdef int* params1 = &params
    gl.glMultiTexParameterIivEXT(texunit, target, pname,  params1)

def glMultiTexParameterIuivEXT(texunit, target, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glMultiTexParameterIuivEXT(texunit, target, pname, params1)

def glMultiTexParameterfEXT(texunit, target, pname, param):
    gl.glMultiTexParameterfEXT(texunit, target, pname, param)

def glMultiTexParameterfvEXT(texunit, target, pname, float param):
    cdef float* param1 = &param
    gl.glMultiTexParameterfvEXT(texunit, target, pname,  param1)

def glMultiTexParameteriEXT(texunit, target, pname, param):
    gl.glMultiTexParameteriEXT(texunit, target, pname, param)

def glMultiTexParameterivEXT(texunit, target, pname, int param):
    cdef int* param1 = &param
    gl.glMultiTexParameterivEXT(texunit, target, pname,  param1)

def glMultiTexRenderbufferEXT(texunit, target, renderbuffer):
    gl.glMultiTexRenderbufferEXT(texunit, target, renderbuffer)

def glMultiTexSubImage1DEXT(texunit, target, level, xoffset, width, format, type,  pixels):
    gl.glMultiTexSubImage1DEXT(texunit, target, level, xoffset, width, format, type,  <void*>pixels)

def glMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, width, height, format, type,  pixels):
    gl.glMultiTexSubImage2DEXT(texunit, target, level, xoffset, yoffset, width, height, format, type,  <void*>pixels)

def glMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type,  pixels):
    gl.glMultiTexSubImage3DEXT(texunit, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type,  <void*>pixels)

def glNamedBufferDataEXT(buffer, size,  data, usage):
    gl.glNamedBufferDataEXT(buffer, size,  <void*>data, usage)

def glNamedBufferSubDataEXT(buffer, offset, size,  data):
    gl.glNamedBufferSubDataEXT(buffer, offset, size,  <void*>data)

def glNamedCopyBufferSubDataEXT(readBuffer, writeBuffer, readOffset, writeOffset, size):
    gl.glNamedCopyBufferSubDataEXT(readBuffer, writeBuffer, readOffset, writeOffset, size)

def glNamedFramebufferRenderbufferEXT(framebuffer, attachment, renderbuffertarget, renderbuffer):
    gl.glNamedFramebufferRenderbufferEXT(framebuffer, attachment, renderbuffertarget, renderbuffer)

def glNamedFramebufferTexture1DEXT(framebuffer, attachment, textarget, texture, level):
    gl.glNamedFramebufferTexture1DEXT(framebuffer, attachment, textarget, texture, level)

def glNamedFramebufferTexture2DEXT(framebuffer, attachment, textarget, texture, level):
    gl.glNamedFramebufferTexture2DEXT(framebuffer, attachment, textarget, texture, level)

def glNamedFramebufferTexture3DEXT(framebuffer, attachment, textarget, texture, level, zoffset):
    gl.glNamedFramebufferTexture3DEXT(framebuffer, attachment, textarget, texture, level, zoffset)

def glNamedFramebufferTextureEXT(framebuffer, attachment, texture, level):
    gl.glNamedFramebufferTextureEXT(framebuffer, attachment, texture, level)

def glNamedFramebufferTextureFaceEXT(framebuffer, attachment, texture, level, face):
    gl.glNamedFramebufferTextureFaceEXT(framebuffer, attachment, texture, level, face)

def glNamedFramebufferTextureLayerEXT(framebuffer, attachment, texture, level, layer):
    gl.glNamedFramebufferTextureLayerEXT(framebuffer, attachment, texture, level, layer)

def glNamedProgramLocalParameter4dEXT(program, target, index, x, y, z, w):
    gl.glNamedProgramLocalParameter4dEXT(program, target, index, x, y, z, w)

def glNamedProgramLocalParameter4dvEXT(program, target, index, double params):
    cdef double* params1 = &params
    gl.glNamedProgramLocalParameter4dvEXT(program, target, index,  params1)

def glNamedProgramLocalParameter4fEXT(program, target, index, x, y, z, w):
    gl.glNamedProgramLocalParameter4fEXT(program, target, index, x, y, z, w)

def glNamedProgramLocalParameter4fvEXT(program, target, index, float params):
    cdef float* params1 = &params
    gl.glNamedProgramLocalParameter4fvEXT(program, target, index,  params1)

def glNamedProgramLocalParameterI4iEXT(program, target, index, x, y, z, w):
    gl.glNamedProgramLocalParameterI4iEXT(program, target, index, x, y, z, w)

def glNamedProgramLocalParameterI4ivEXT(program, target, index, int params):
    cdef int* params1 = &params
    gl.glNamedProgramLocalParameterI4ivEXT(program, target, index,  params1)

def glNamedProgramLocalParameterI4uiEXT(program, target, index, x, y, z, w):
    gl.glNamedProgramLocalParameterI4uiEXT(program, target, index, x, y, z, w)

def glNamedProgramLocalParameterI4uivEXT(program, target, index, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glNamedProgramLocalParameterI4uivEXT(program, target, index, params1)

def glNamedProgramLocalParameters4fvEXT(program, target, index, count, float params):
    cdef float* params1 = &params
    gl.glNamedProgramLocalParameters4fvEXT(program, target, index, count,  params1)

def glNamedProgramLocalParametersI4ivEXT(program, target, index, count, int params):
    cdef int* params1 = &params
    gl.glNamedProgramLocalParametersI4ivEXT(program, target, index, count,  params1)

def glNamedProgramLocalParametersI4uivEXT(program, target, index, count, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glNamedProgramLocalParametersI4uivEXT(program, target, index, count, params1)

def glNamedProgramStringEXT(program, target, format, len,  string):
    gl.glNamedProgramStringEXT(program, target, format, len,  <void*>string)

def glNamedRenderbufferStorageEXT(renderbuffer, internalformat, width, height):
    gl.glNamedRenderbufferStorageEXT(renderbuffer, internalformat, width, height)

def glNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer, coverageSamples, colorSamples, internalformat, width, height):
    gl.glNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer, coverageSamples, colorSamples, internalformat, width, height)

def glNamedRenderbufferStorageMultisampleEXT(renderbuffer, samples, internalformat, width, height):
    gl.glNamedRenderbufferStorageMultisampleEXT(renderbuffer, samples, internalformat, width, height)

def glProgramUniform1fEXT(program, location, v0):
    gl.glProgramUniform1fEXT(program, location, v0)

def glProgramUniform1fvEXT(program, location, count, float value):
    cdef float* value1 = &value
    gl.glProgramUniform1fvEXT(program, location, count,  value1)

def glProgramUniform1iEXT(program, location, v0):
    gl.glProgramUniform1iEXT(program, location, v0)

def glProgramUniform1ivEXT(program, location, count, int value):
    cdef int* value1 = &value
    gl.glProgramUniform1ivEXT(program, location, count,  value1)

def glProgramUniform1uiEXT(program, location, v0):
    gl.glProgramUniform1uiEXT(program, location, v0)

def glProgramUniform1uivEXT(program, location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glProgramUniform1uivEXT(program, location, count, value1)

def glProgramUniform2fEXT(program, location, v0, v1):
    gl.glProgramUniform2fEXT(program, location, v0, v1)

def glProgramUniform2fvEXT(program, location, count, float value):
    cdef float* value1 = &value
    gl.glProgramUniform2fvEXT(program, location, count,  value1)

def glProgramUniform2iEXT(program, location, v0, v1):
    gl.glProgramUniform2iEXT(program, location, v0, v1)

def glProgramUniform2ivEXT(program, location, count, int value):
    cdef int* value1 = &value
    gl.glProgramUniform2ivEXT(program, location, count,  value1)

def glProgramUniform2uiEXT(program, location, v0, v1):
    gl.glProgramUniform2uiEXT(program, location, v0, v1)

def glProgramUniform2uivEXT(program, location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glProgramUniform2uivEXT(program, location, count, value1)

def glProgramUniform3fEXT(program, location, v0, v1, v2):
    gl.glProgramUniform3fEXT(program, location, v0, v1, v2)

def glProgramUniform3fvEXT(program, location, count, float value):
    cdef float* value1 = &value
    gl.glProgramUniform3fvEXT(program, location, count,  value1)

def glProgramUniform3iEXT(program, location, v0, v1, v2):
    gl.glProgramUniform3iEXT(program, location, v0, v1, v2)

def glProgramUniform3ivEXT(program, location, count, int value):
    cdef int* value1 = &value
    gl.glProgramUniform3ivEXT(program, location, count,  value1)

def glProgramUniform3uiEXT(program, location, v0, v1, v2):
    gl.glProgramUniform3uiEXT(program, location, v0, v1, v2)

def glProgramUniform3uivEXT(program, location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glProgramUniform3uivEXT(program, location, count, value1)

def glProgramUniform4fEXT(program, location, v0, v1, v2, v3):
    gl.glProgramUniform4fEXT(program, location, v0, v1, v2, v3)

def glProgramUniform4fvEXT(program, location, count, float value):
    cdef float* value1 = &value
    gl.glProgramUniform4fvEXT(program, location, count,  value1)

def glProgramUniform4iEXT(program, location, v0, v1, v2, v3):
    gl.glProgramUniform4iEXT(program, location, v0, v1, v2, v3)

def glProgramUniform4ivEXT(program, location, count, int value):
    cdef int* value1 = &value
    gl.glProgramUniform4ivEXT(program, location, count,  value1)

def glProgramUniform4uiEXT(program, location, v0, v1, v2, v3):
    gl.glProgramUniform4uiEXT(program, location, v0, v1, v2, v3)

def glProgramUniform4uivEXT(program, location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glProgramUniform4uivEXT(program, location, count, value1)

def glProgramUniformMatrix2fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix2fvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix2x3fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix2x3fvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix2x4fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix2x4fvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix3fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix3fvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix3x2fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix3x2fvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix3x4fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix3x4fvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix4fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix4fvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix4x2fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix4x2fvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix4x3fvEXT(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix4x3fvEXT(program, location, count, transpose,  value1)

def glPushClientAttribDefaultEXT(mask):
    gl.glPushClientAttribDefaultEXT(mask)

def glTextureBufferEXT(texture, target, internalformat, buffer):
    gl.glTextureBufferEXT(texture, target, internalformat, buffer)

def glTextureImage1DEXT(texture, target, level, internalformat, width, border, format, type,  pixels):
    gl.glTextureImage1DEXT(texture, target, level, internalformat, width, border, format, type,  <void*>pixels)

def glTextureImage2DEXT(texture, target, level, internalformat, width, height, border, format, type,  pixels):
    gl.glTextureImage2DEXT(texture, target, level, internalformat, width, height, border, format, type,  <void*>pixels)

def glTextureImage3DEXT(texture, target, level, internalformat, width, height, depth, border, format, type,  pixels):
    gl.glTextureImage3DEXT(texture, target, level, internalformat, width, height, depth, border, format, type,  <void*>pixels)

def glTextureParameterIivEXT(texture, target, pname, int params):
    cdef int* params1 = &params
    gl.glTextureParameterIivEXT(texture, target, pname,  params1)

def glTextureParameterIuivEXT(texture, target, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glTextureParameterIuivEXT(texture, target, pname, params1)

def glTextureParameterfEXT(texture, target, pname, param):
    gl.glTextureParameterfEXT(texture, target, pname, param)

def glTextureParameterfvEXT(texture, target, pname, float param):
    cdef float* param1 = &param
    gl.glTextureParameterfvEXT(texture, target, pname,  param1)

def glTextureParameteriEXT(texture, target, pname, param):
    gl.glTextureParameteriEXT(texture, target, pname, param)

def glTextureParameterivEXT(texture, target, pname, int param):
    cdef int* param1 = &param
    gl.glTextureParameterivEXT(texture, target, pname,  param1)

def glTextureRenderbufferEXT(texture, target, renderbuffer):
    gl.glTextureRenderbufferEXT(texture, target, renderbuffer)

def glTextureSubImage1DEXT(texture, target, level, xoffset, width, format, type,  pixels):
    gl.glTextureSubImage1DEXT(texture, target, level, xoffset, width, format, type,  <void*>pixels)

def glTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, width, height, format, type,  pixels):
    gl.glTextureSubImage2DEXT(texture, target, level, xoffset, yoffset, width, height, format, type,  <void*>pixels)

def glTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type,  pixels):
    gl.glTextureSubImage3DEXT(texture, target, level, xoffset, yoffset, zoffset, width, height, depth, format, type,  <void*>pixels)

def glUnmapNamedBufferEXT(buffer):
    return gl.glUnmapNamedBufferEXT(buffer)

def glVertexArrayColorOffsetEXT(vaobj, buffer, size, type, stride, offset):
    gl.glVertexArrayColorOffsetEXT(vaobj, buffer, size, type, stride, offset)

def glVertexArrayEdgeFlagOffsetEXT(vaobj, buffer, stride, offset):
    gl.glVertexArrayEdgeFlagOffsetEXT(vaobj, buffer, stride, offset)

def glVertexArrayFogCoordOffsetEXT(vaobj, buffer, type, stride, offset):
    gl.glVertexArrayFogCoordOffsetEXT(vaobj, buffer, type, stride, offset)

def glVertexArrayIndexOffsetEXT(vaobj, buffer, type, stride, offset):
    gl.glVertexArrayIndexOffsetEXT(vaobj, buffer, type, stride, offset)

def glVertexArrayMultiTexCoordOffsetEXT(vaobj, buffer, texunit, size, type, stride, offset):
    gl.glVertexArrayMultiTexCoordOffsetEXT(vaobj, buffer, texunit, size, type, stride, offset)

def glVertexArrayNormalOffsetEXT(vaobj, buffer, type, stride, offset):
    gl.glVertexArrayNormalOffsetEXT(vaobj, buffer, type, stride, offset)

def glVertexArraySecondaryColorOffsetEXT(vaobj, buffer, size, type, stride, offset):
    gl.glVertexArraySecondaryColorOffsetEXT(vaobj, buffer, size, type, stride, offset)

def glVertexArrayTexCoordOffsetEXT(vaobj, buffer, size, type, stride, offset):
    gl.glVertexArrayTexCoordOffsetEXT(vaobj, buffer, size, type, stride, offset)

def glVertexArrayVertexAttribIOffsetEXT(vaobj, buffer, index, size, type, stride, offset):
    gl.glVertexArrayVertexAttribIOffsetEXT(vaobj, buffer, index, size, type, stride, offset)

def glVertexArrayVertexAttribOffsetEXT(vaobj, buffer, index, size, type, normalized, stride, offset):
    gl.glVertexArrayVertexAttribOffsetEXT(vaobj, buffer, index, size, type, normalized, stride, offset)

def glVertexArrayVertexOffsetEXT(vaobj, buffer, size, type, stride, offset):
    gl.glVertexArrayVertexOffsetEXT(vaobj, buffer, size, type, stride, offset)

#GL_EXT_draw_buffers2

GL_EXT_draw_buffers2 = gl.GL_EXT_draw_buffers2

def glColorMaskIndexedEXT(buf, r, g, b, a):
    gl.glColorMaskIndexedEXT(buf, r, g, b, a)

def glDisableIndexedEXT(target, index):
    gl.glDisableIndexedEXT(target, index)

def glEnableIndexedEXT(target, index):
    gl.glEnableIndexedEXT(target, index)

def glGetBooleanIndexedvEXT(value, index, bint data):
    cdef bint* data1 = &data
    gl.glGetBooleanIndexedvEXT(value, index, data1)

def glGetIntegerIndexedvEXT(value, index, int data):
    cdef int* data1 = &data
    gl.glGetIntegerIndexedvEXT(value, index, data1)

def glIsEnabledIndexedEXT(target, index):
    return gl.glIsEnabledIndexedEXT(target, index)

#GL_EXT_draw_instanced

GL_EXT_draw_instanced = gl.GL_EXT_draw_instanced

def glDrawArraysInstancedEXT(mode, start, count, primcount):
    gl.glDrawArraysInstancedEXT(mode, start, count, primcount)

def glDrawElementsInstancedEXT(mode, count, type, indices, primcount):
    gl.glDrawElementsInstancedEXT(mode, count, type, <void*>indices, primcount)

#GL_EXT_draw_range_elements

GL_EXT_draw_range_elements = gl.GL_EXT_draw_range_elements

GL_MAX_ELEMENTS_VERTICES_EXT = gl.GL_MAX_ELEMENTS_VERTICES_EXT
GL_MAX_ELEMENTS_INDICES_EXT = gl.GL_MAX_ELEMENTS_INDICES_EXT

def glDrawRangeElementsEXT(mode, start, end, count, type, indices):
    gl.glDrawRangeElementsEXT(mode, start, end, count, type, <void*>indices)

#GL_EXT_fog_coord

GL_EXT_fog_coord = gl.GL_EXT_fog_coord

GL_FOG_COORDINATE_SOURCE_EXT = gl.GL_FOG_COORDINATE_SOURCE_EXT
GL_FOG_COORDINATE_EXT = gl.GL_FOG_COORDINATE_EXT
GL_FRAGMENT_DEPTH_EXT = gl.GL_FRAGMENT_DEPTH_EXT
GL_CURRENT_FOG_COORDINATE_EXT = gl.GL_CURRENT_FOG_COORDINATE_EXT
GL_FOG_COORDINATE_ARRAY_TYPE_EXT = gl.GL_FOG_COORDINATE_ARRAY_TYPE_EXT
GL_FOG_COORDINATE_ARRAY_STRIDE_EXT = gl.GL_FOG_COORDINATE_ARRAY_STRIDE_EXT
GL_FOG_COORDINATE_ARRAY_POINTER_EXT = gl.GL_FOG_COORDINATE_ARRAY_POINTER_EXT
GL_FOG_COORDINATE_ARRAY_EXT = gl.GL_FOG_COORDINATE_ARRAY_EXT

def glFogCoordPointerEXT(type, stride, pointer):
    gl.glFogCoordPointerEXT(type, stride, <void*>pointer)

def glFogCoorddEXT(coord):
    gl.glFogCoorddEXT(coord)

def glFogCoorddvEXT(double coord):
    cdef double* coord1 = &coord
    gl.glFogCoorddvEXT(coord1)

def glFogCoordfEXT(coord):
    gl.glFogCoordfEXT(coord)

def glFogCoordfvEXT(float coord):
    cdef float* coord1 = &coord
    gl.glFogCoordfvEXT(coord1)

#GL_EXT_fragment_lighting

GL_EXT_fragment_lighting = gl.GL_EXT_fragment_lighting

GL_FRAGMENT_LIGHTING_EXT = gl.GL_FRAGMENT_LIGHTING_EXT
GL_FRAGMENT_COLOR_MATERIAL_EXT = gl.GL_FRAGMENT_COLOR_MATERIAL_EXT
GL_FRAGMENT_COLOR_MATERIAL_FACE_EXT = gl.GL_FRAGMENT_COLOR_MATERIAL_FACE_EXT
GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT = gl.GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT
GL_MAX_FRAGMENT_LIGHTS_EXT = gl.GL_MAX_FRAGMENT_LIGHTS_EXT
GL_MAX_ACTIVE_LIGHTS_EXT = gl.GL_MAX_ACTIVE_LIGHTS_EXT
GL_CURRENT_RASTER_NORMAL_EXT = gl.GL_CURRENT_RASTER_NORMAL_EXT
GL_LIGHT_ENV_MODE_EXT = gl.GL_LIGHT_ENV_MODE_EXT
GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT = gl.GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT
GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT = gl.GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT
GL_FRAGMENT_LIGHT_MODEL_AMBIENT_EXT = gl.GL_FRAGMENT_LIGHT_MODEL_AMBIENT_EXT
GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT = gl.GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT
GL_FRAGMENT_LIGHT0_EXT = gl.GL_FRAGMENT_LIGHT0_EXT
GL_FRAGMENT_LIGHT7_EXT = gl.GL_FRAGMENT_LIGHT7_EXT

def glFragmentColorMaterialEXT(face, mode):
    gl.glFragmentColorMaterialEXT(face, mode)

def glFragmentLightModelfEXT(pname, param):
    gl.glFragmentLightModelfEXT(pname, param)

def glFragmentLightModelfvEXT(pname, float params):
    cdef float* params1 = &params
    gl.glFragmentLightModelfvEXT(pname, params1)

def glFragmentLightModeliEXT(pname, param):
    gl.glFragmentLightModeliEXT(pname, param)

def glFragmentLightModelivEXT(pname, int params):
    cdef int* params1 = &params
    gl.glFragmentLightModelivEXT(pname, params1)

def glFragmentLightfEXT(light, pname, param):
    gl.glFragmentLightfEXT(light, pname, param)

def glFragmentLightfvEXT(light, pname, float params):
    cdef float* params1 = &params
    gl.glFragmentLightfvEXT(light, pname, params1)

def glFragmentLightiEXT(light, pname, param):
    gl.glFragmentLightiEXT(light, pname, param)

def glFragmentLightivEXT(light, pname, int params):
    cdef int* params1 = &params
    gl.glFragmentLightivEXT(light, pname, params1)

def glFragmentMaterialfEXT(face, pname, param):
    gl.glFragmentMaterialfEXT(face, pname, param)

def glFragmentMaterialfvEXT(face, pname, float params):
    cdef float* params1 = &params
    gl.glFragmentMaterialfvEXT(face, pname,  params1)

def glFragmentMaterialiEXT(face, pname, param):
    gl.glFragmentMaterialiEXT(face, pname, param)

def glFragmentMaterialivEXT(face, pname, int params):
    cdef int* params1 = &params
    gl.glFragmentMaterialivEXT(face, pname,  params1)

def glGetFragmentLightfvEXT(light, pname, float params):
    cdef float* params1 = &params
    gl.glGetFragmentLightfvEXT(light, pname, params1)

def glGetFragmentLightivEXT(light, pname, int params):
    cdef int* params1 = &params
    gl.glGetFragmentLightivEXT(light, pname, params1)

def glGetFragmentMaterialfvEXT(face, pname, float params):
    cdef float* params1 = &params
    gl.glGetFragmentMaterialfvEXT(face, pname,  params1)

def glGetFragmentMaterialivEXT(face, pname, int params):
    cdef int* params1 = &params
    gl.glGetFragmentMaterialivEXT(face, pname,  params1)

def glLightEnviEXT(pname, param):
    gl.glLightEnviEXT(pname, param)

#GL_EXT_framebuffer_blit

GL_EXT_framebuffer_blit = gl.GL_EXT_framebuffer_blit

GL_DRAW_FRAMEBUFFER_BINDING_EXT = gl.GL_DRAW_FRAMEBUFFER_BINDING_EXT
GL_READ_FRAMEBUFFER_EXT = gl.GL_READ_FRAMEBUFFER_EXT
GL_DRAW_FRAMEBUFFER_EXT = gl.GL_DRAW_FRAMEBUFFER_EXT
GL_READ_FRAMEBUFFER_BINDING_EXT = gl.GL_READ_FRAMEBUFFER_BINDING_EXT

def glBlitFramebufferEXT(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter):
    gl.glBlitFramebufferEXT(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)

#GL_EXT_framebuffer_multisample

GL_EXT_framebuffer_multisample = gl.GL_EXT_framebuffer_multisample

GL_RENDERBUFFER_SAMPLES_EXT = gl.GL_RENDERBUFFER_SAMPLES_EXT
GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT
GL_MAX_SAMPLES_EXT = gl.GL_MAX_SAMPLES_EXT

def glRenderbufferStorageMultisampleEXT(target, samples, internalformat, width, height):
    gl.glRenderbufferStorageMultisampleEXT(target, samples, internalformat, width, height)

#GL_EXT_framebuffer_multisample_blit_scaled

GL_EXT_framebuffer_multisample_blit_scaled = gl.GL_EXT_framebuffer_multisample_blit_scaled

GL_SCALED_RESOLVE_FASTEST_EXT = gl.GL_SCALED_RESOLVE_FASTEST_EXT
GL_SCALED_RESOLVE_NICEST_EXT = gl.GL_SCALED_RESOLVE_NICEST_EXT

#GL_EXT_framebuffer_object

GL_EXT_framebuffer_object = gl.GL_EXT_framebuffer_object

GL_INVALID_FRAMEBUFFER_OPERATION_EXT = gl.GL_INVALID_FRAMEBUFFER_OPERATION_EXT
GL_MAX_RENDERBUFFER_SIZE_EXT = gl.GL_MAX_RENDERBUFFER_SIZE_EXT
GL_FRAMEBUFFER_BINDING_EXT = gl.GL_FRAMEBUFFER_BINDING_EXT
GL_RENDERBUFFER_BINDING_EXT = gl.GL_RENDERBUFFER_BINDING_EXT
GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = gl.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT
GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = gl.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = gl.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = gl.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = gl.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT
GL_FRAMEBUFFER_COMPLETE_EXT = gl.GL_FRAMEBUFFER_COMPLETE_EXT
GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT
GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT
GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT
GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT
GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT
GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT
GL_FRAMEBUFFER_UNSUPPORTED_EXT = gl.GL_FRAMEBUFFER_UNSUPPORTED_EXT
GL_MAX_COLOR_ATTACHMENTS_EXT = gl.GL_MAX_COLOR_ATTACHMENTS_EXT
GL_COLOR_ATTACHMENT0_EXT = gl.GL_COLOR_ATTACHMENT0_EXT
GL_COLOR_ATTACHMENT1_EXT = gl.GL_COLOR_ATTACHMENT1_EXT
GL_COLOR_ATTACHMENT2_EXT = gl.GL_COLOR_ATTACHMENT2_EXT
GL_COLOR_ATTACHMENT3_EXT = gl.GL_COLOR_ATTACHMENT3_EXT
GL_COLOR_ATTACHMENT4_EXT = gl.GL_COLOR_ATTACHMENT4_EXT
GL_COLOR_ATTACHMENT5_EXT = gl.GL_COLOR_ATTACHMENT5_EXT
GL_COLOR_ATTACHMENT6_EXT = gl.GL_COLOR_ATTACHMENT6_EXT
GL_COLOR_ATTACHMENT7_EXT = gl.GL_COLOR_ATTACHMENT7_EXT
GL_COLOR_ATTACHMENT8_EXT = gl.GL_COLOR_ATTACHMENT8_EXT
GL_COLOR_ATTACHMENT9_EXT = gl.GL_COLOR_ATTACHMENT9_EXT
GL_COLOR_ATTACHMENT10_EXT = gl.GL_COLOR_ATTACHMENT10_EXT
GL_COLOR_ATTACHMENT11_EXT = gl.GL_COLOR_ATTACHMENT11_EXT
GL_COLOR_ATTACHMENT12_EXT = gl.GL_COLOR_ATTACHMENT12_EXT
GL_COLOR_ATTACHMENT13_EXT = gl.GL_COLOR_ATTACHMENT13_EXT
GL_COLOR_ATTACHMENT14_EXT = gl.GL_COLOR_ATTACHMENT14_EXT
GL_COLOR_ATTACHMENT15_EXT = gl.GL_COLOR_ATTACHMENT15_EXT
GL_DEPTH_ATTACHMENT_EXT = gl.GL_DEPTH_ATTACHMENT_EXT
GL_STENCIL_ATTACHMENT_EXT = gl.GL_STENCIL_ATTACHMENT_EXT
GL_FRAMEBUFFER_EXT = gl.GL_FRAMEBUFFER_EXT
GL_RENDERBUFFER_EXT = gl.GL_RENDERBUFFER_EXT
GL_RENDERBUFFER_WIDTH_EXT = gl.GL_RENDERBUFFER_WIDTH_EXT
GL_RENDERBUFFER_HEIGHT_EXT = gl.GL_RENDERBUFFER_HEIGHT_EXT
GL_RENDERBUFFER_INTERNAL_FORMAT_EXT = gl.GL_RENDERBUFFER_INTERNAL_FORMAT_EXT
GL_STENCIL_INDEX1_EXT = gl.GL_STENCIL_INDEX1_EXT
GL_STENCIL_INDEX4_EXT = gl.GL_STENCIL_INDEX4_EXT
GL_STENCIL_INDEX8_EXT = gl.GL_STENCIL_INDEX8_EXT
GL_STENCIL_INDEX16_EXT = gl.GL_STENCIL_INDEX16_EXT
GL_RENDERBUFFER_RED_SIZE_EXT = gl.GL_RENDERBUFFER_RED_SIZE_EXT
GL_RENDERBUFFER_GREEN_SIZE_EXT = gl.GL_RENDERBUFFER_GREEN_SIZE_EXT
GL_RENDERBUFFER_BLUE_SIZE_EXT = gl.GL_RENDERBUFFER_BLUE_SIZE_EXT
GL_RENDERBUFFER_ALPHA_SIZE_EXT = gl.GL_RENDERBUFFER_ALPHA_SIZE_EXT
GL_RENDERBUFFER_DEPTH_SIZE_EXT = gl.GL_RENDERBUFFER_DEPTH_SIZE_EXT
GL_RENDERBUFFER_STENCIL_SIZE_EXT = gl.GL_RENDERBUFFER_STENCIL_SIZE_EXT

def glBindFramebufferEXT(target, framebuffer):
    gl.glBindFramebufferEXT(target, framebuffer)

def glBindRenderbufferEXT(target, renderbuffer):
    gl.glBindRenderbufferEXT(target, renderbuffer)

def glCheckFramebufferStatusEXT(target):
    return gl.glCheckFramebufferStatusEXT(target)

def glDeleteFramebuffersEXT(n, framebuffers):
    gl.glDeleteFramebuffersEXT(n, framebuffers)

def glDeleteRenderbuffersEXT(n, renderbuffers):
    gl.glDeleteRenderbuffersEXT(n, renderbuffers)

def glFramebufferRenderbufferEXT(target, attachment, renderbuffertarget, renderbuffer):
    gl.glFramebufferRenderbufferEXT(target, attachment, renderbuffertarget, renderbuffer)

def glFramebufferTexture1DEXT(target, attachment, textarget, texture, level):
    gl.glFramebufferTexture1DEXT(target, attachment, textarget, texture, level)

def glFramebufferTexture2DEXT(target, attachment, textarget, texture, level):
    gl.glFramebufferTexture2DEXT(target, attachment, textarget, texture, level)

def glFramebufferTexture3DEXT(target, attachment, textarget, texture, level, zoffset):
    gl.glFramebufferTexture3DEXT(target, attachment, textarget, texture, level, zoffset)

def glGenFramebuffersEXT(n):
    cdef unsigned int framebuffers
    gl.glGenFramebuffersEXT(n, &framebuffers)
    return framebuffers

def glGenRenderbuffersEXT(n):
    cdef unsigned int renderbuffers
    gl.glGenRenderbuffersEXT(n, &renderbuffers)
    return renderbuffers

def glGenerateMipmapEXT(target):
    gl.glGenerateMipmapEXT(target)

def glGetFramebufferAttachmentParameterivEXT(target, attachment, pname, int params):
    gl.glGetFramebufferAttachmentParameterivEXT(target, attachment, pname, <int*>params)

def glGetRenderbufferParameterivEXT(target, pname, int params):
    gl.glGetRenderbufferParameterivEXT(target, pname, <int*>params)

def glIsFramebufferEXT(framebuffer):
    return gl.glIsFramebufferEXT(framebuffer)

def glIsRenderbufferEXT(renderbuffer):
    return gl.glIsRenderbufferEXT(renderbuffer)

def glRenderbufferStorageEXT(target, internalformat, width, height):
    gl.glRenderbufferStorageEXT(target, internalformat, width, height)

#GL_EXT_framebuffer_sRGB

GL_EXT_framebuffer_sRGB = gl.GL_EXT_framebuffer_sRGB

GL_FRAMEBUFFER_SRGB_EXT = gl.GL_FRAMEBUFFER_SRGB_EXT
GL_FRAMEBUFFER_SRGB_CAPABLE_EXT = gl.GL_FRAMEBUFFER_SRGB_CAPABLE_EXT

#GL_EXT_geometry_shader4

GL_EXT_geometry_shader4 = gl.GL_EXT_geometry_shader4

GL_LINES_ADJACENCY_EXT = gl.GL_LINES_ADJACENCY_EXT
GL_LINE_STRIP_ADJACENCY_EXT = gl.GL_LINE_STRIP_ADJACENCY_EXT
GL_TRIANGLES_ADJACENCY_EXT = gl.GL_TRIANGLES_ADJACENCY_EXT
GL_TRIANGLE_STRIP_ADJACENCY_EXT = gl.GL_TRIANGLE_STRIP_ADJACENCY_EXT
GL_PROGRAM_POINT_SIZE_EXT = gl.GL_PROGRAM_POINT_SIZE_EXT
GL_MAX_VARYING_COMPONENTS_EXT = gl.GL_MAX_VARYING_COMPONENTS_EXT
GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT = gl.GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = gl.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = gl.GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT = gl.GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
GL_GEOMETRY_SHADER_EXT = gl.GL_GEOMETRY_SHADER_EXT
GL_GEOMETRY_VERTICES_OUT_EXT = gl.GL_GEOMETRY_VERTICES_OUT_EXT
GL_GEOMETRY_INPUT_TYPE_EXT = gl.GL_GEOMETRY_INPUT_TYPE_EXT
GL_GEOMETRY_OUTPUT_TYPE_EXT = gl.GL_GEOMETRY_OUTPUT_TYPE_EXT
GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT = gl.GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT
GL_MAX_VERTEX_VARYING_COMPONENTS_EXT = gl.GL_MAX_VERTEX_VARYING_COMPONENTS_EXT
GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT = gl.GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT
GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT = gl.GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT
GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT = gl.GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT

def glFramebufferTextureEXT(target, attachment, texture, level):
    gl.glFramebufferTextureEXT(target, attachment, texture, level)

def glFramebufferTextureFaceEXT(target, attachment, texture, level, face):
    gl.glFramebufferTextureFaceEXT(target, attachment, texture, level, face)

def glProgramParameteriEXT(program, pname, value):
    gl.glProgramParameteriEXT(program, pname, value)

#GL_EXT_gpu_program_parameters

GL_EXT_gpu_program_parameters = gl.GL_EXT_gpu_program_parameters

def glProgramEnvParameters4fvEXT(target, index, count, float params):
    cdef float* params1 = &params
    gl.glProgramEnvParameters4fvEXT(target, index, count,  params1)

def glProgramLocalParameters4fvEXT(target, index, count, float params):
    cdef float* params1 = &params
    gl.glProgramLocalParameters4fvEXT(target, index, count,  params1)

#GL_EXT_gpu_shader4

GL_EXT_gpu_shader4 = gl.GL_EXT_gpu_shader4

GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT = gl.GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT
GL_SAMPLER_1D_ARRAY_EXT = gl.GL_SAMPLER_1D_ARRAY_EXT
GL_SAMPLER_2D_ARRAY_EXT = gl.GL_SAMPLER_2D_ARRAY_EXT
GL_SAMPLER_BUFFER_EXT = gl.GL_SAMPLER_BUFFER_EXT
GL_SAMPLER_1D_ARRAY_SHADOW_EXT = gl.GL_SAMPLER_1D_ARRAY_SHADOW_EXT
GL_SAMPLER_2D_ARRAY_SHADOW_EXT = gl.GL_SAMPLER_2D_ARRAY_SHADOW_EXT
GL_SAMPLER_CUBE_SHADOW_EXT = gl.GL_SAMPLER_CUBE_SHADOW_EXT
GL_UNSIGNED_INT_VEC2_EXT = gl.GL_UNSIGNED_INT_VEC2_EXT
GL_UNSIGNED_INT_VEC3_EXT = gl.GL_UNSIGNED_INT_VEC3_EXT
GL_UNSIGNED_INT_VEC4_EXT = gl.GL_UNSIGNED_INT_VEC4_EXT
GL_INT_SAMPLER_1D_EXT = gl.GL_INT_SAMPLER_1D_EXT
GL_INT_SAMPLER_2D_EXT = gl.GL_INT_SAMPLER_2D_EXT
GL_INT_SAMPLER_3D_EXT = gl.GL_INT_SAMPLER_3D_EXT
GL_INT_SAMPLER_CUBE_EXT = gl.GL_INT_SAMPLER_CUBE_EXT
GL_INT_SAMPLER_2D_RECT_EXT = gl.GL_INT_SAMPLER_2D_RECT_EXT
GL_INT_SAMPLER_1D_ARRAY_EXT = gl.GL_INT_SAMPLER_1D_ARRAY_EXT
GL_INT_SAMPLER_2D_ARRAY_EXT = gl.GL_INT_SAMPLER_2D_ARRAY_EXT
GL_INT_SAMPLER_BUFFER_EXT = gl.GL_INT_SAMPLER_BUFFER_EXT
GL_UNSIGNED_INT_SAMPLER_1D_EXT = gl.GL_UNSIGNED_INT_SAMPLER_1D_EXT
GL_UNSIGNED_INT_SAMPLER_2D_EXT = gl.GL_UNSIGNED_INT_SAMPLER_2D_EXT
GL_UNSIGNED_INT_SAMPLER_3D_EXT = gl.GL_UNSIGNED_INT_SAMPLER_3D_EXT
GL_UNSIGNED_INT_SAMPLER_CUBE_EXT = gl.GL_UNSIGNED_INT_SAMPLER_CUBE_EXT
GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT = gl.GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT
GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT = gl.GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT
GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT = gl.GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT
GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT = gl.GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT

def glBindFragDataLocationEXT(program, color, name):
    gl.glBindFragDataLocationEXT(program, color, name)

def glGetFragDataLocationEXT(program, name):
    return gl.glGetFragDataLocationEXT(program, name)

def glGetUniformuivEXT(program, location, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetUniformuivEXT(program, location, params1)

def glGetVertexAttribIivEXT(index, pname, int params):
    cdef int* params1 = &params
    gl.glGetVertexAttribIivEXT(index, pname, params1)

def glGetVertexAttribIuivEXT(index, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetVertexAttribIuivEXT(index, pname, params1)

def glUniform1uiEXT(location, v0):
    gl.glUniform1uiEXT(location, v0)

def glUniform1uivEXT(location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glUniform1uivEXT(location, count, value1)

def glUniform2uiEXT(location, v0, v1):
    gl.glUniform2uiEXT(location, v0, v1)

def glUniform2uivEXT(location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glUniform2uivEXT(location, count, value1)

def glUniform3uiEXT(location, v0, v1, v2):
    gl.glUniform3uiEXT(location, v0, v1, v2)

def glUniform3uivEXT(location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glUniform3uivEXT(location, count, value1)

def glUniform4uiEXT(location, v0, v1, v2, v3):
    gl.glUniform4uiEXT(location, v0, v1, v2, v3)

def glUniform4uivEXT(location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glUniform4uivEXT(location, count, value1)

def glVertexAttribI1iEXT(index, x):
    gl.glVertexAttribI1iEXT(index, x)

def glVertexAttribI1ivEXT(index, int v):
    cdef int* v1 = &v
    gl.glVertexAttribI1ivEXT(index, v1)

def glVertexAttribI1uiEXT(index, x):
    gl.glVertexAttribI1uiEXT(index, x)

def glVertexAttribI1uivEXT(index, unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glVertexAttribI1uivEXT(index, v1)

def glVertexAttribI2iEXT(index, x, y):
    gl.glVertexAttribI2iEXT(index, x, y)

def glVertexAttribI2ivEXT(index, int v):
    cdef int* v1 = &v
    gl.glVertexAttribI2ivEXT(index, v1)

def glVertexAttribI2uiEXT(index, x, y):
    gl.glVertexAttribI2uiEXT(index, x, y)

def glVertexAttribI2uivEXT(index, unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glVertexAttribI2uivEXT(index, v1)

def glVertexAttribI3iEXT(index, x, y, z):
    gl.glVertexAttribI3iEXT(index, x, y, z)

def glVertexAttribI3ivEXT(index, int v):
    cdef int* v1 = &v
    gl.glVertexAttribI3ivEXT(index, v1)

def glVertexAttribI3uiEXT(index, x, y, z):
    gl.glVertexAttribI3uiEXT(index, x, y, z)

def glVertexAttribI3uivEXT(index, unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glVertexAttribI3uivEXT(index, v1)

def glVertexAttribI4bvEXT(index, signed char v):
    cdef signed char* v1 = &v
    gl.glVertexAttribI4bvEXT(index, v1)

def glVertexAttribI4iEXT(index, x, y, z, w):
    gl.glVertexAttribI4iEXT(index, x, y, z, w)

def glVertexAttribI4ivEXT(index, int v):
    cdef int* v1 = &v
    gl.glVertexAttribI4ivEXT(index, v1)

def glVertexAttribI4svEXT(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttribI4svEXT(index, v1)

def glVertexAttribI4ubvEXT(index, unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glVertexAttribI4ubvEXT(index, v1)

def glVertexAttribI4uiEXT(index, x, y, z, w):
    gl.glVertexAttribI4uiEXT(index, x, y, z, w)

def glVertexAttribI4uivEXT(index, unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glVertexAttribI4uivEXT(index, v1)

def glVertexAttribI4usvEXT(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttribI4usvEXT(index, v1)

def glVertexAttribIPointerEXT(index, size, type, stride, pointer):
    gl.glVertexAttribIPointerEXT(index, size, type, stride, <void*>pointer)

#GL_EXT_histogram

GL_EXT_histogram = gl.GL_EXT_histogram

GL_HISTOGRAM_EXT = gl.GL_HISTOGRAM_EXT
GL_PROXY_HISTOGRAM_EXT = gl.GL_PROXY_HISTOGRAM_EXT
GL_HISTOGRAM_WIDTH_EXT = gl.GL_HISTOGRAM_WIDTH_EXT
GL_HISTOGRAM_FORMAT_EXT = gl.GL_HISTOGRAM_FORMAT_EXT
GL_HISTOGRAM_RED_SIZE_EXT = gl.GL_HISTOGRAM_RED_SIZE_EXT
GL_HISTOGRAM_GREEN_SIZE_EXT = gl.GL_HISTOGRAM_GREEN_SIZE_EXT
GL_HISTOGRAM_BLUE_SIZE_EXT = gl.GL_HISTOGRAM_BLUE_SIZE_EXT
GL_HISTOGRAM_ALPHA_SIZE_EXT = gl.GL_HISTOGRAM_ALPHA_SIZE_EXT
GL_HISTOGRAM_LUMINANCE_SIZE_EXT = gl.GL_HISTOGRAM_LUMINANCE_SIZE_EXT
GL_HISTOGRAM_SINK_EXT = gl.GL_HISTOGRAM_SINK_EXT
GL_MINMAX_EXT = gl.GL_MINMAX_EXT
GL_MINMAX_FORMAT_EXT = gl.GL_MINMAX_FORMAT_EXT
GL_MINMAX_SINK_EXT = gl.GL_MINMAX_SINK_EXT

def glGetHistogramEXT(target, reset, format, type, values):
    gl.glGetHistogramEXT(target, reset, format, type, <void*>values)

def glGetHistogramParameterfvEXT(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetHistogramParameterfvEXT(target, pname, params1)

def glGetHistogramParameterivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetHistogramParameterivEXT(target, pname, params1)

def glGetMinmaxEXT(target, reset, format, type, values):
    gl.glGetMinmaxEXT(target, reset, format, type, <void*>values)

def glGetMinmaxParameterfvEXT(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetMinmaxParameterfvEXT(target, pname, params1)

def glGetMinmaxParameterivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetMinmaxParameterivEXT(target, pname, params1)

def glHistogramEXT(target, width, internalformat, sink):
    gl.glHistogramEXT(target, width, internalformat, sink)

def glMinmaxEXT(target, internalformat, sink):
    gl.glMinmaxEXT(target, internalformat, sink)

def glResetHistogramEXT(target):
    gl.glResetHistogramEXT(target)

def glResetMinmaxEXT(target):
    gl.glResetMinmaxEXT(target)

#GL_EXT_index_array_formats

GL_EXT_index_array_formats = gl.GL_EXT_index_array_formats

#GL_EXT_index_func

GL_EXT_index_func = gl.GL_EXT_index_func

def glIndexFuncEXT(func, ref):
    gl.glIndexFuncEXT(func, ref)

#GL_EXT_index_material

GL_EXT_index_material = gl.GL_EXT_index_material

def glIndexMaterialEXT(face, mode):
    gl.glIndexMaterialEXT(face, mode)

#GL_EXT_index_texture

GL_EXT_index_texture = gl.GL_EXT_index_texture

#GL_EXT_light_texture

GL_EXT_light_texture = gl.GL_EXT_light_texture

GL_FRAGMENT_MATERIAL_EXT = gl.GL_FRAGMENT_MATERIAL_EXT
GL_FRAGMENT_NORMAL_EXT = gl.GL_FRAGMENT_NORMAL_EXT
GL_FRAGMENT_COLOR_EXT = gl.GL_FRAGMENT_COLOR_EXT
GL_ATTENUATION_EXT = gl.GL_ATTENUATION_EXT
GL_SHADOW_ATTENUATION_EXT = gl.GL_SHADOW_ATTENUATION_EXT
GL_TEXTURE_APPLICATION_MODE_EXT = gl.GL_TEXTURE_APPLICATION_MODE_EXT
GL_TEXTURE_LIGHT_EXT = gl.GL_TEXTURE_LIGHT_EXT
GL_TEXTURE_MATERIAL_FACE_EXT = gl.GL_TEXTURE_MATERIAL_FACE_EXT
GL_TEXTURE_MATERIAL_PARAMETER_EXT = gl.GL_TEXTURE_MATERIAL_PARAMETER_EXT
GL_FRAGMENT_DEPTH_EXT = gl.GL_FRAGMENT_DEPTH_EXT

def glApplyTextureEXT(mode):
    gl.glApplyTextureEXT(mode)

def glTextureLightEXT(pname):
    gl.glTextureLightEXT(pname)

def glTextureMaterialEXT(face, mode):
    gl.glTextureMaterialEXT(face, mode)

#GL_EXT_misc_attribute

GL_EXT_misc_attribute = gl.GL_EXT_misc_attribute

#GL_EXT_multi_draw_arrays

GL_EXT_multi_draw_arrays = gl.GL_EXT_multi_draw_arrays

def glMultiDrawArraysEXT(mode,  first, count, primcount):
    gl.glMultiDrawArraysEXT(mode,  first, count, primcount)

def glMultiDrawElementsEXT(mode, int count, type, indices, primcount):
    cdef int* count1 = &count
    gl.glMultiDrawElementsEXT(mode, count1, type, <void*>indices, primcount)

#GL_EXT_multisample

GL_EXT_multisample = gl.GL_EXT_multisample

GL_MULTISAMPLE_EXT = gl.GL_MULTISAMPLE_EXT
GL_SAMPLE_ALPHA_TO_MASK_EXT = gl.GL_SAMPLE_ALPHA_TO_MASK_EXT
GL_SAMPLE_ALPHA_TO_ONE_EXT = gl.GL_SAMPLE_ALPHA_TO_ONE_EXT
GL_SAMPLE_MASK_EXT = gl.GL_SAMPLE_MASK_EXT
GL_1PASS_EXT = gl.GL_1PASS_EXT
GL_2PASS_0_EXT = gl.GL_2PASS_0_EXT
GL_2PASS_1_EXT = gl.GL_2PASS_1_EXT
GL_4PASS_0_EXT = gl.GL_4PASS_0_EXT
GL_4PASS_1_EXT = gl.GL_4PASS_1_EXT
GL_4PASS_2_EXT = gl.GL_4PASS_2_EXT
GL_4PASS_3_EXT = gl.GL_4PASS_3_EXT
GL_SAMPLE_BUFFERS_EXT = gl.GL_SAMPLE_BUFFERS_EXT
GL_SAMPLES_EXT = gl.GL_SAMPLES_EXT
GL_SAMPLE_MASK_VALUE_EXT = gl.GL_SAMPLE_MASK_VALUE_EXT
GL_SAMPLE_MASK_INVERT_EXT = gl.GL_SAMPLE_MASK_INVERT_EXT
GL_SAMPLE_PATTERN_EXT = gl.GL_SAMPLE_PATTERN_EXT
GL_MULTISAMPLE_BIT_EXT = gl.GL_MULTISAMPLE_BIT_EXT

def glSampleMaskEXT(value, invert):
    gl.glSampleMaskEXT(value, invert)

def glSamplePatternEXT(pattern):
    gl.glSamplePatternEXT(pattern)

#GL_EXT_packed_depth_stencil

GL_EXT_packed_depth_stencil = gl.GL_EXT_packed_depth_stencil

GL_DEPTH_STENCIL_EXT = gl.GL_DEPTH_STENCIL_EXT
GL_UNSIGNED_INT_24_8_EXT = gl.GL_UNSIGNED_INT_24_8_EXT
GL_DEPTH24_STENCIL8_EXT = gl.GL_DEPTH24_STENCIL8_EXT
GL_TEXTURE_STENCIL_SIZE_EXT = gl.GL_TEXTURE_STENCIL_SIZE_EXT

#GL_EXT_packed_float

GL_EXT_packed_float = gl.GL_EXT_packed_float

GL_R11F_G11F_B10F_EXT = gl.GL_R11F_G11F_B10F_EXT
GL_UNSIGNED_INT_10F_11F_11F_REV_EXT = gl.GL_UNSIGNED_INT_10F_11F_11F_REV_EXT
GL_RGBA_SIGNED_COMPONENTS_EXT = gl.GL_RGBA_SIGNED_COMPONENTS_EXT

#GL_EXT_packed_pixels

GL_EXT_packed_pixels = gl.GL_EXT_packed_pixels

GL_UNSIGNED_BYTE_3_3_2_EXT = gl.GL_UNSIGNED_BYTE_3_3_2_EXT
GL_UNSIGNED_SHORT_4_4_4_4_EXT = gl.GL_UNSIGNED_SHORT_4_4_4_4_EXT
GL_UNSIGNED_SHORT_5_5_5_1_EXT = gl.GL_UNSIGNED_SHORT_5_5_5_1_EXT
GL_UNSIGNED_INT_8_8_8_8_EXT = gl.GL_UNSIGNED_INT_8_8_8_8_EXT
GL_UNSIGNED_INT_10_10_10_2_EXT = gl.GL_UNSIGNED_INT_10_10_10_2_EXT

#GL_EXT_paletted_texture

GL_EXT_paletted_texture = gl.GL_EXT_paletted_texture

GL_TEXTURE_1D = gl.GL_TEXTURE_1D
GL_TEXTURE_2D = gl.GL_TEXTURE_2D
GL_PROXY_TEXTURE_1D = gl.GL_PROXY_TEXTURE_1D
GL_PROXY_TEXTURE_2D = gl.GL_PROXY_TEXTURE_2D
GL_TEXTURE_3D_EXT = gl.GL_TEXTURE_3D_EXT
GL_PROXY_TEXTURE_3D_EXT = gl.GL_PROXY_TEXTURE_3D_EXT
GL_COLOR_TABLE_FORMAT_EXT = gl.GL_COLOR_TABLE_FORMAT_EXT
GL_COLOR_TABLE_WIDTH_EXT = gl.GL_COLOR_TABLE_WIDTH_EXT
GL_COLOR_TABLE_RED_SIZE_EXT = gl.GL_COLOR_TABLE_RED_SIZE_EXT
GL_COLOR_TABLE_GREEN_SIZE_EXT = gl.GL_COLOR_TABLE_GREEN_SIZE_EXT
GL_COLOR_TABLE_BLUE_SIZE_EXT = gl.GL_COLOR_TABLE_BLUE_SIZE_EXT
GL_COLOR_TABLE_ALPHA_SIZE_EXT = gl.GL_COLOR_TABLE_ALPHA_SIZE_EXT
GL_COLOR_TABLE_LUMINANCE_SIZE_EXT = gl.GL_COLOR_TABLE_LUMINANCE_SIZE_EXT
GL_COLOR_TABLE_INTENSITY_SIZE_EXT = gl.GL_COLOR_TABLE_INTENSITY_SIZE_EXT
GL_COLOR_INDEX1_EXT = gl.GL_COLOR_INDEX1_EXT
GL_COLOR_INDEX2_EXT = gl.GL_COLOR_INDEX2_EXT
GL_COLOR_INDEX4_EXT = gl.GL_COLOR_INDEX4_EXT
GL_COLOR_INDEX8_EXT = gl.GL_COLOR_INDEX8_EXT
GL_COLOR_INDEX12_EXT = gl.GL_COLOR_INDEX12_EXT
GL_COLOR_INDEX16_EXT = gl.GL_COLOR_INDEX16_EXT
GL_TEXTURE_INDEX_SIZE_EXT = gl.GL_TEXTURE_INDEX_SIZE_EXT
GL_TEXTURE_CUBE_MAP_ARB = gl.GL_TEXTURE_CUBE_MAP_ARB
GL_PROXY_TEXTURE_CUBE_MAP_ARB = gl.GL_PROXY_TEXTURE_CUBE_MAP_ARB

def glColorTableEXT(target, internalFormat, width, format, type,  data):
    gl.glColorTableEXT(target, internalFormat, width, format, type,  <void*>data)

def glGetColorTableEXT(target, format, type, data):
    gl.glGetColorTableEXT(target, format, type, <void*>data)

def glGetColorTableParameterfvEXT(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetColorTableParameterfvEXT(target, pname, params1)

def glGetColorTableParameterivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetColorTableParameterivEXT(target, pname, params1)

#GL_EXT_pixel_buffer_object

GL_EXT_pixel_buffer_object = gl.GL_EXT_pixel_buffer_object

GL_PIXEL_PACK_BUFFER_EXT = gl.GL_PIXEL_PACK_BUFFER_EXT
GL_PIXEL_UNPACK_BUFFER_EXT = gl.GL_PIXEL_UNPACK_BUFFER_EXT
GL_PIXEL_PACK_BUFFER_BINDING_EXT = gl.GL_PIXEL_PACK_BUFFER_BINDING_EXT
GL_PIXEL_UNPACK_BUFFER_BINDING_EXT = gl.GL_PIXEL_UNPACK_BUFFER_BINDING_EXT

#GL_EXT_pixel_transform

GL_EXT_pixel_transform = gl.GL_EXT_pixel_transform

GL_PIXEL_TRANSFORM_2D_EXT = gl.GL_PIXEL_TRANSFORM_2D_EXT
GL_PIXEL_MAG_FILTER_EXT = gl.GL_PIXEL_MAG_FILTER_EXT
GL_PIXEL_MIN_FILTER_EXT = gl.GL_PIXEL_MIN_FILTER_EXT
GL_PIXEL_CUBIC_WEIGHT_EXT = gl.GL_PIXEL_CUBIC_WEIGHT_EXT
GL_CUBIC_EXT = gl.GL_CUBIC_EXT
GL_AVERAGE_EXT = gl.GL_AVERAGE_EXT
GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = gl.GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = gl.GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
GL_PIXEL_TRANSFORM_2D_MATRIX_EXT = gl.GL_PIXEL_TRANSFORM_2D_MATRIX_EXT

def glGetPixelTransformParameterfvEXT(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetPixelTransformParameterfvEXT(target, pname,  params1)

def glGetPixelTransformParameterivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetPixelTransformParameterivEXT(target, pname,  params1)

def glPixelTransformParameterfEXT(target, pname, param):
    gl.glPixelTransformParameterfEXT(target, pname, param)

def glPixelTransformParameterfvEXT(target, pname, float params):
    cdef float* params1 = &params
    gl.glPixelTransformParameterfvEXT(target, pname,  params1)

def glPixelTransformParameteriEXT(target, pname, param):
    gl.glPixelTransformParameteriEXT(target, pname, param)

def glPixelTransformParameterivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glPixelTransformParameterivEXT(target, pname,  params1)

#GL_EXT_pixel_transform_color_table

GL_EXT_pixel_transform_color_table = gl.GL_EXT_pixel_transform_color_table

#GL_EXT_point_parameters

GL_EXT_point_parameters = gl.GL_EXT_point_parameters

GL_POINT_SIZE_MIN_EXT = gl.GL_POINT_SIZE_MIN_EXT
GL_POINT_SIZE_MAX_EXT = gl.GL_POINT_SIZE_MAX_EXT
GL_POINT_FADE_THRESHOLD_SIZE_EXT = gl.GL_POINT_FADE_THRESHOLD_SIZE_EXT
GL_DISTANCE_ATTENUATION_EXT = gl.GL_DISTANCE_ATTENUATION_EXT

def glPointParameterfEXT(pname, param):
    gl.glPointParameterfEXT(pname, param)

def glPointParameterfvEXT(pname, float params):
    cdef float* params1 = &params
    gl.glPointParameterfvEXT(pname,  params1)

#GL_EXT_polygon_offset

GL_EXT_polygon_offset = gl.GL_EXT_polygon_offset

GL_POLYGON_OFFSET_EXT = gl.GL_POLYGON_OFFSET_EXT
GL_POLYGON_OFFSET_FACTOR_EXT = gl.GL_POLYGON_OFFSET_FACTOR_EXT
GL_POLYGON_OFFSET_BIAS_EXT = gl.GL_POLYGON_OFFSET_BIAS_EXT

def glPolygonOffsetEXT(factor, bias):
    gl.glPolygonOffsetEXT(factor, bias)

#GL_EXT_provoking_vertex

GL_EXT_provoking_vertex = gl.GL_EXT_provoking_vertex

GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT = gl.GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT
GL_FIRST_VERTEX_CONVENTION_EXT = gl.GL_FIRST_VERTEX_CONVENTION_EXT
GL_LAST_VERTEX_CONVENTION_EXT = gl.GL_LAST_VERTEX_CONVENTION_EXT
GL_PROVOKING_VERTEX_EXT = gl.GL_PROVOKING_VERTEX_EXT

def glProvokingVertexEXT(mode):
    gl.glProvokingVertexEXT(mode)

#GL_EXT_rescale_normal

GL_EXT_rescale_normal = gl.GL_EXT_rescale_normal

GL_RESCALE_NORMAL_EXT = gl.GL_RESCALE_NORMAL_EXT

#GL_EXT_scene_marker

GL_EXT_scene_marker = gl.GL_EXT_scene_marker

def glBeginSceneEXT():
    gl.glBeginSceneEXT()

def glEndSceneEXT():
    gl.glEndSceneEXT()

#GL_EXT_secondary_color

GL_EXT_secondary_color = gl.GL_EXT_secondary_color

GL_COLOR_SUM_EXT = gl.GL_COLOR_SUM_EXT
GL_CURRENT_SECONDARY_COLOR_EXT = gl.GL_CURRENT_SECONDARY_COLOR_EXT
GL_SECONDARY_COLOR_ARRAY_SIZE_EXT = gl.GL_SECONDARY_COLOR_ARRAY_SIZE_EXT
GL_SECONDARY_COLOR_ARRAY_TYPE_EXT = gl.GL_SECONDARY_COLOR_ARRAY_TYPE_EXT
GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT = gl.GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT
GL_SECONDARY_COLOR_ARRAY_POINTER_EXT = gl.GL_SECONDARY_COLOR_ARRAY_POINTER_EXT
GL_SECONDARY_COLOR_ARRAY_EXT = gl.GL_SECONDARY_COLOR_ARRAY_EXT

def glSecondaryColor3bEXT(red, green, blue):
    gl.glSecondaryColor3bEXT(red, green, blue)

def glSecondaryColor3bvEXT(signed char v):
    cdef signed char* v1 = &v
    gl.glSecondaryColor3bvEXT(v1)

def glSecondaryColor3dEXT(red, green, blue):
    gl.glSecondaryColor3dEXT(red, green, blue)

def glSecondaryColor3dvEXT(double v):
    cdef double* v1 = &v
    gl.glSecondaryColor3dvEXT(v1)

def glSecondaryColor3fEXT(red, green, blue):
    gl.glSecondaryColor3fEXT(red, green, blue)

def glSecondaryColor3fvEXT(float v):
    cdef float* v1 = &v
    gl.glSecondaryColor3fvEXT(v1)

def glSecondaryColor3iEXT(red, green, blue):
    gl.glSecondaryColor3iEXT(red, green, blue)

def glSecondaryColor3ivEXT(int v):
    cdef int* v1 = &v
    gl.glSecondaryColor3ivEXT(v1)

def glSecondaryColor3sEXT(red, green, blue):
    gl.glSecondaryColor3sEXT(red, green, blue)

def glSecondaryColor3svEXT(short v):
    cdef short* v1 = &v
    gl.glSecondaryColor3svEXT(v1)

def glSecondaryColor3ubEXT(red, green, blue):
    gl.glSecondaryColor3ubEXT(red, green, blue)

def glSecondaryColor3ubvEXT(unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glSecondaryColor3ubvEXT(v1)

def glSecondaryColor3uiEXT(red, green, blue):
    gl.glSecondaryColor3uiEXT(red, green, blue)

def glSecondaryColor3uivEXT(unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glSecondaryColor3uivEXT(v1)

def glSecondaryColor3usEXT(red, green, blue):
    gl.glSecondaryColor3usEXT(red, green, blue)

def glSecondaryColor3usvEXT(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glSecondaryColor3usvEXT(v1)

def glSecondaryColorPointerEXT(size, type, stride, pointer):
    gl.glSecondaryColorPointerEXT(size, type, stride, <void*>pointer)

#GL_EXT_separate_shader_objects

GL_EXT_separate_shader_objects = gl.GL_EXT_separate_shader_objects

GL_ACTIVE_PROGRAM_EXT = gl.GL_ACTIVE_PROGRAM_EXT

def glActiveProgramEXT(program):
    gl.glActiveProgramEXT(program)

def glCreateShaderProgramEXT(type,  string):
    cdef char* string1 = string
    return gl.glCreateShaderProgramEXT(type,  string1)

def glUseShaderProgramEXT(type, program):
    gl.glUseShaderProgramEXT(type, program)

#GL_EXT_separate_specular_color

GL_EXT_separate_specular_color = gl.GL_EXT_separate_specular_color

GL_LIGHT_MODEL_COLOR_CONTROL_EXT = gl.GL_LIGHT_MODEL_COLOR_CONTROL_EXT
GL_SINGLE_COLOR_EXT = gl.GL_SINGLE_COLOR_EXT
GL_SEPARATE_SPECULAR_COLOR_EXT = gl.GL_SEPARATE_SPECULAR_COLOR_EXT

#GL_EXT_shader_image_load_store

GL_EXT_shader_image_load_store = gl.GL_EXT_shader_image_load_store

GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT = gl.GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT
GL_ELEMENT_ARRAY_BARRIER_BIT_EXT = gl.GL_ELEMENT_ARRAY_BARRIER_BIT_EXT
GL_UNIFORM_BARRIER_BIT_EXT = gl.GL_UNIFORM_BARRIER_BIT_EXT
GL_TEXTURE_FETCH_BARRIER_BIT_EXT = gl.GL_TEXTURE_FETCH_BARRIER_BIT_EXT
GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT = gl.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT
GL_COMMAND_BARRIER_BIT_EXT = gl.GL_COMMAND_BARRIER_BIT_EXT
GL_PIXEL_BUFFER_BARRIER_BIT_EXT = gl.GL_PIXEL_BUFFER_BARRIER_BIT_EXT
GL_TEXTURE_UPDATE_BARRIER_BIT_EXT = gl.GL_TEXTURE_UPDATE_BARRIER_BIT_EXT
GL_BUFFER_UPDATE_BARRIER_BIT_EXT = gl.GL_BUFFER_UPDATE_BARRIER_BIT_EXT
GL_FRAMEBUFFER_BARRIER_BIT_EXT = gl.GL_FRAMEBUFFER_BARRIER_BIT_EXT
GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT = gl.GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT
GL_ATOMIC_COUNTER_BARRIER_BIT_EXT = gl.GL_ATOMIC_COUNTER_BARRIER_BIT_EXT
GL_MAX_IMAGE_UNITS_EXT = gl.GL_MAX_IMAGE_UNITS_EXT
GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT = gl.GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT
GL_IMAGE_BINDING_NAME_EXT = gl.GL_IMAGE_BINDING_NAME_EXT
GL_IMAGE_BINDING_LEVEL_EXT = gl.GL_IMAGE_BINDING_LEVEL_EXT
GL_IMAGE_BINDING_LAYERED_EXT = gl.GL_IMAGE_BINDING_LAYERED_EXT
GL_IMAGE_BINDING_LAYER_EXT = gl.GL_IMAGE_BINDING_LAYER_EXT
GL_IMAGE_BINDING_ACCESS_EXT = gl.GL_IMAGE_BINDING_ACCESS_EXT
GL_IMAGE_1D_EXT = gl.GL_IMAGE_1D_EXT
GL_IMAGE_2D_EXT = gl.GL_IMAGE_2D_EXT
GL_IMAGE_3D_EXT = gl.GL_IMAGE_3D_EXT
GL_IMAGE_2D_RECT_EXT = gl.GL_IMAGE_2D_RECT_EXT
GL_IMAGE_CUBE_EXT = gl.GL_IMAGE_CUBE_EXT
GL_IMAGE_BUFFER_EXT = gl.GL_IMAGE_BUFFER_EXT
GL_IMAGE_1D_ARRAY_EXT = gl.GL_IMAGE_1D_ARRAY_EXT
GL_IMAGE_2D_ARRAY_EXT = gl.GL_IMAGE_2D_ARRAY_EXT
GL_IMAGE_CUBE_MAP_ARRAY_EXT = gl.GL_IMAGE_CUBE_MAP_ARRAY_EXT
GL_IMAGE_2D_MULTISAMPLE_EXT = gl.GL_IMAGE_2D_MULTISAMPLE_EXT
GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = gl.GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
GL_INT_IMAGE_1D_EXT = gl.GL_INT_IMAGE_1D_EXT
GL_INT_IMAGE_2D_EXT = gl.GL_INT_IMAGE_2D_EXT
GL_INT_IMAGE_3D_EXT = gl.GL_INT_IMAGE_3D_EXT
GL_INT_IMAGE_2D_RECT_EXT = gl.GL_INT_IMAGE_2D_RECT_EXT
GL_INT_IMAGE_CUBE_EXT = gl.GL_INT_IMAGE_CUBE_EXT
GL_INT_IMAGE_BUFFER_EXT = gl.GL_INT_IMAGE_BUFFER_EXT
GL_INT_IMAGE_1D_ARRAY_EXT = gl.GL_INT_IMAGE_1D_ARRAY_EXT
GL_INT_IMAGE_2D_ARRAY_EXT = gl.GL_INT_IMAGE_2D_ARRAY_EXT
GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT = gl.GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT
GL_INT_IMAGE_2D_MULTISAMPLE_EXT = gl.GL_INT_IMAGE_2D_MULTISAMPLE_EXT
GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = gl.GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
GL_UNSIGNED_INT_IMAGE_1D_EXT = gl.GL_UNSIGNED_INT_IMAGE_1D_EXT
GL_UNSIGNED_INT_IMAGE_2D_EXT = gl.GL_UNSIGNED_INT_IMAGE_2D_EXT
GL_UNSIGNED_INT_IMAGE_3D_EXT = gl.GL_UNSIGNED_INT_IMAGE_3D_EXT
GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT = gl.GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT
GL_UNSIGNED_INT_IMAGE_CUBE_EXT = gl.GL_UNSIGNED_INT_IMAGE_CUBE_EXT
GL_UNSIGNED_INT_IMAGE_BUFFER_EXT = gl.GL_UNSIGNED_INT_IMAGE_BUFFER_EXT
GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT = gl.GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT
GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT = gl.GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT
GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT = gl.GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT
GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT = gl.GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT
GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT = gl.GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
GL_MAX_IMAGE_SAMPLES_EXT = gl.GL_MAX_IMAGE_SAMPLES_EXT
GL_IMAGE_BINDING_FORMAT_EXT = gl.GL_IMAGE_BINDING_FORMAT_EXT
GL_ALL_BARRIER_BITS_EXT = gl.GL_ALL_BARRIER_BITS_EXT

def glBindImageTextureEXT(index, texture, level, layered, layer, access, format):
    gl.glBindImageTextureEXT(index, texture, level, layered, layer, access, format)

def glMemoryBarrierEXT(barriers):
    gl.glMemoryBarrierEXT(barriers)

#GL_EXT_shadow_funcs

GL_EXT_shadow_funcs = gl.GL_EXT_shadow_funcs

#GL_EXT_shared_texture_palette

GL_EXT_shared_texture_palette = gl.GL_EXT_shared_texture_palette

GL_SHARED_TEXTURE_PALETTE_EXT = gl.GL_SHARED_TEXTURE_PALETTE_EXT

#GL_EXT_stencil_clear_tag

GL_EXT_stencil_clear_tag = gl.GL_EXT_stencil_clear_tag

GL_STENCIL_TAG_BITS_EXT = gl.GL_STENCIL_TAG_BITS_EXT
GL_STENCIL_CLEAR_TAG_VALUE_EXT = gl.GL_STENCIL_CLEAR_TAG_VALUE_EXT

#GL_EXT_stencil_two_side

GL_EXT_stencil_two_side = gl.GL_EXT_stencil_two_side

GL_STENCIL_TEST_TWO_SIDE_EXT = gl.GL_STENCIL_TEST_TWO_SIDE_EXT
GL_ACTIVE_STENCIL_FACE_EXT = gl.GL_ACTIVE_STENCIL_FACE_EXT

def glActiveStencilFaceEXT(face):
    gl.glActiveStencilFaceEXT(face)

#GL_EXT_stencil_wrap

GL_EXT_stencil_wrap = gl.GL_EXT_stencil_wrap

GL_INCR_WRAP_EXT = gl.GL_INCR_WRAP_EXT
GL_DECR_WRAP_EXT = gl.GL_DECR_WRAP_EXT

#GL_EXT_subtexture

GL_EXT_subtexture = gl.GL_EXT_subtexture

def glTexSubImage1DEXT(target, level, xoffset, width, format, type,  pixels):
    gl.glTexSubImage1DEXT(target, level, xoffset, width, format, type,  <void*>pixels)

def glTexSubImage2DEXT(target, level, xoffset, yoffset, width, height, format, type,  pixels):
    gl.glTexSubImage2DEXT(target, level, xoffset, yoffset, width, height, format, type,  <void*>pixels)

def glTexSubImage3DEXT(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type,  pixels):
    gl.glTexSubImage3DEXT(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type,  <void*>pixels)

#GL_EXT_texture

GL_EXT_texture = gl.GL_EXT_texture

GL_ALPHA4_EXT = gl.GL_ALPHA4_EXT
GL_ALPHA8_EXT = gl.GL_ALPHA8_EXT
GL_ALPHA12_EXT = gl.GL_ALPHA12_EXT
GL_ALPHA16_EXT = gl.GL_ALPHA16_EXT
GL_LUMINANCE4_EXT = gl.GL_LUMINANCE4_EXT
GL_LUMINANCE8_EXT = gl.GL_LUMINANCE8_EXT
GL_LUMINANCE12_EXT = gl.GL_LUMINANCE12_EXT
GL_LUMINANCE16_EXT = gl.GL_LUMINANCE16_EXT
GL_LUMINANCE4_ALPHA4_EXT = gl.GL_LUMINANCE4_ALPHA4_EXT
GL_LUMINANCE6_ALPHA2_EXT = gl.GL_LUMINANCE6_ALPHA2_EXT
GL_LUMINANCE8_ALPHA8_EXT = gl.GL_LUMINANCE8_ALPHA8_EXT
GL_LUMINANCE12_ALPHA4_EXT = gl.GL_LUMINANCE12_ALPHA4_EXT
GL_LUMINANCE12_ALPHA12_EXT = gl.GL_LUMINANCE12_ALPHA12_EXT
GL_LUMINANCE16_ALPHA16_EXT = gl.GL_LUMINANCE16_ALPHA16_EXT
GL_INTENSITY_EXT = gl.GL_INTENSITY_EXT
GL_INTENSITY4_EXT = gl.GL_INTENSITY4_EXT
GL_INTENSITY8_EXT = gl.GL_INTENSITY8_EXT
GL_INTENSITY12_EXT = gl.GL_INTENSITY12_EXT
GL_INTENSITY16_EXT = gl.GL_INTENSITY16_EXT
GL_RGB2_EXT = gl.GL_RGB2_EXT
GL_RGB4_EXT = gl.GL_RGB4_EXT
GL_RGB5_EXT = gl.GL_RGB5_EXT
GL_RGB8_EXT = gl.GL_RGB8_EXT
GL_RGB10_EXT = gl.GL_RGB10_EXT
GL_RGB12_EXT = gl.GL_RGB12_EXT
GL_RGB16_EXT = gl.GL_RGB16_EXT
GL_RGBA2_EXT = gl.GL_RGBA2_EXT
GL_RGBA4_EXT = gl.GL_RGBA4_EXT
GL_RGB5_A1_EXT = gl.GL_RGB5_A1_EXT
GL_RGBA8_EXT = gl.GL_RGBA8_EXT
GL_RGB10_A2_EXT = gl.GL_RGB10_A2_EXT
GL_RGBA12_EXT = gl.GL_RGBA12_EXT
GL_RGBA16_EXT = gl.GL_RGBA16_EXT
GL_TEXTURE_RED_SIZE_EXT = gl.GL_TEXTURE_RED_SIZE_EXT
GL_TEXTURE_GREEN_SIZE_EXT = gl.GL_TEXTURE_GREEN_SIZE_EXT
GL_TEXTURE_BLUE_SIZE_EXT = gl.GL_TEXTURE_BLUE_SIZE_EXT
GL_TEXTURE_ALPHA_SIZE_EXT = gl.GL_TEXTURE_ALPHA_SIZE_EXT
GL_TEXTURE_LUMINANCE_SIZE_EXT = gl.GL_TEXTURE_LUMINANCE_SIZE_EXT
GL_TEXTURE_INTENSITY_SIZE_EXT = gl.GL_TEXTURE_INTENSITY_SIZE_EXT
GL_REPLACE_EXT = gl.GL_REPLACE_EXT
GL_PROXY_TEXTURE_1D_EXT = gl.GL_PROXY_TEXTURE_1D_EXT
GL_PROXY_TEXTURE_2D_EXT = gl.GL_PROXY_TEXTURE_2D_EXT

#GL_EXT_texture3D

GL_EXT_texture3D = gl.GL_EXT_texture3D

GL_PACK_SKIP_IMAGES_EXT = gl.GL_PACK_SKIP_IMAGES_EXT
GL_PACK_IMAGE_HEIGHT_EXT = gl.GL_PACK_IMAGE_HEIGHT_EXT
GL_UNPACK_SKIP_IMAGES_EXT = gl.GL_UNPACK_SKIP_IMAGES_EXT
GL_UNPACK_IMAGE_HEIGHT_EXT = gl.GL_UNPACK_IMAGE_HEIGHT_EXT
GL_TEXTURE_3D_EXT = gl.GL_TEXTURE_3D_EXT
GL_PROXY_TEXTURE_3D_EXT = gl.GL_PROXY_TEXTURE_3D_EXT
GL_TEXTURE_DEPTH_EXT = gl.GL_TEXTURE_DEPTH_EXT
GL_TEXTURE_WRAP_R_EXT = gl.GL_TEXTURE_WRAP_R_EXT
GL_MAX_3D_TEXTURE_SIZE_EXT = gl.GL_MAX_3D_TEXTURE_SIZE_EXT

def glTexImage3DEXT(target, level, internalformat, width, height, depth, border, format, type,  pixels):
    gl.glTexImage3DEXT(target, level, internalformat, width, height, depth, border, format, type,  <void*>pixels)

#GL_EXT_texture_array

GL_EXT_texture_array = gl.GL_EXT_texture_array

GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT = gl.GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT
GL_MAX_ARRAY_TEXTURE_LAYERS_EXT = gl.GL_MAX_ARRAY_TEXTURE_LAYERS_EXT
GL_TEXTURE_1D_ARRAY_EXT = gl.GL_TEXTURE_1D_ARRAY_EXT
GL_PROXY_TEXTURE_1D_ARRAY_EXT = gl.GL_PROXY_TEXTURE_1D_ARRAY_EXT
GL_TEXTURE_2D_ARRAY_EXT = gl.GL_TEXTURE_2D_ARRAY_EXT
GL_PROXY_TEXTURE_2D_ARRAY_EXT = gl.GL_PROXY_TEXTURE_2D_ARRAY_EXT
GL_TEXTURE_BINDING_1D_ARRAY_EXT = gl.GL_TEXTURE_BINDING_1D_ARRAY_EXT
GL_TEXTURE_BINDING_2D_ARRAY_EXT = gl.GL_TEXTURE_BINDING_2D_ARRAY_EXT

def glFramebufferTextureLayerEXT(target, attachment, texture, level, layer):
    gl.glFramebufferTextureLayerEXT(target, attachment, texture, level, layer)

#GL_EXT_texture_buffer_object

GL_EXT_texture_buffer_object = gl.GL_EXT_texture_buffer_object

GL_TEXTURE_BUFFER_EXT = gl.GL_TEXTURE_BUFFER_EXT
GL_MAX_TEXTURE_BUFFER_SIZE_EXT = gl.GL_MAX_TEXTURE_BUFFER_SIZE_EXT
GL_TEXTURE_BINDING_BUFFER_EXT = gl.GL_TEXTURE_BINDING_BUFFER_EXT
GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT = gl.GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT
GL_TEXTURE_BUFFER_FORMAT_EXT = gl.GL_TEXTURE_BUFFER_FORMAT_EXT

def glTexBufferEXT(target, internalformat, buffer):
    gl.glTexBufferEXT(target, internalformat, buffer)

#GL_EXT_texture_compression_dxt1

GL_EXT_texture_compression_dxt1 = gl.GL_EXT_texture_compression_dxt1

GL_COMPRESSED_RGB_S3TC_DXT1_EXT = gl.GL_COMPRESSED_RGB_S3TC_DXT1_EXT
GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = gl.GL_COMPRESSED_RGBA_S3TC_DXT1_EXT

#GL_EXT_texture_compression_latc

GL_EXT_texture_compression_latc = gl.GL_EXT_texture_compression_latc

GL_COMPRESSED_LUMINANCE_LATC1_EXT = gl.GL_COMPRESSED_LUMINANCE_LATC1_EXT
GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT = gl.GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT
GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT = gl.GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT
GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT = gl.GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT

#GL_EXT_texture_compression_rgtc

GL_EXT_texture_compression_rgtc = gl.GL_EXT_texture_compression_rgtc

GL_COMPRESSED_RED_RGTC1_EXT = gl.GL_COMPRESSED_RED_RGTC1_EXT
GL_COMPRESSED_SIGNED_RED_RGTC1_EXT = gl.GL_COMPRESSED_SIGNED_RED_RGTC1_EXT
GL_COMPRESSED_RED_GREEN_RGTC2_EXT = gl.GL_COMPRESSED_RED_GREEN_RGTC2_EXT
GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = gl.GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT

#GL_EXT_texture_compression_s3tc

GL_EXT_texture_compression_s3tc = gl.GL_EXT_texture_compression_s3tc

GL_COMPRESSED_RGB_S3TC_DXT1_EXT = gl.GL_COMPRESSED_RGB_S3TC_DXT1_EXT
GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = gl.GL_COMPRESSED_RGBA_S3TC_DXT1_EXT
GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = gl.GL_COMPRESSED_RGBA_S3TC_DXT3_EXT
GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = gl.GL_COMPRESSED_RGBA_S3TC_DXT5_EXT

#GL_EXT_texture_cube_map

GL_EXT_texture_cube_map = gl.GL_EXT_texture_cube_map

GL_NORMAL_MAP_EXT = gl.GL_NORMAL_MAP_EXT
GL_REFLECTION_MAP_EXT = gl.GL_REFLECTION_MAP_EXT
GL_TEXTURE_CUBE_MAP_EXT = gl.GL_TEXTURE_CUBE_MAP_EXT
GL_TEXTURE_BINDING_CUBE_MAP_EXT = gl.GL_TEXTURE_BINDING_CUBE_MAP_EXT
GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT
GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT
GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT
GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT
GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT
GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT
GL_PROXY_TEXTURE_CUBE_MAP_EXT = gl.GL_PROXY_TEXTURE_CUBE_MAP_EXT
GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT = gl.GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT

#GL_EXT_texture_edge_clamp

GL_EXT_texture_edge_clamp = gl.GL_EXT_texture_edge_clamp

GL_CLAMP_TO_EDGE_EXT = gl.GL_CLAMP_TO_EDGE_EXT

#GL_EXT_texture_env

GL_EXT_texture_env = gl.GL_EXT_texture_env

GL_TEXTURE_ENV0_EXT = gl.GL_TEXTURE_ENV0_EXT
GL_ENV_BLEND_EXT = gl.GL_ENV_BLEND_EXT
GL_TEXTURE_ENV_SHIFT_EXT = gl.GL_TEXTURE_ENV_SHIFT_EXT
GL_ENV_REPLACE_EXT = gl.GL_ENV_REPLACE_EXT
GL_ENV_ADD_EXT = gl.GL_ENV_ADD_EXT
GL_ENV_SUBTRACT_EXT = gl.GL_ENV_SUBTRACT_EXT
GL_TEXTURE_ENV_MODE_ALPHA_EXT = gl.GL_TEXTURE_ENV_MODE_ALPHA_EXT
GL_ENV_REVERSE_SUBTRACT_EXT = gl.GL_ENV_REVERSE_SUBTRACT_EXT
GL_ENV_REVERSE_BLEND_EXT = gl.GL_ENV_REVERSE_BLEND_EXT
GL_ENV_COPY_EXT = gl.GL_ENV_COPY_EXT
GL_ENV_MODULATE_EXT = gl.GL_ENV_MODULATE_EXT

#GL_EXT_texture_env_add

GL_EXT_texture_env_add = gl.GL_EXT_texture_env_add

#GL_EXT_texture_env_combine

GL_EXT_texture_env_combine = gl.GL_EXT_texture_env_combine

GL_COMBINE_EXT = gl.GL_COMBINE_EXT
GL_COMBINE_RGB_EXT = gl.GL_COMBINE_RGB_EXT
GL_COMBINE_ALPHA_EXT = gl.GL_COMBINE_ALPHA_EXT
GL_RGB_SCALE_EXT = gl.GL_RGB_SCALE_EXT
GL_ADD_SIGNED_EXT = gl.GL_ADD_SIGNED_EXT
GL_INTERPOLATE_EXT = gl.GL_INTERPOLATE_EXT
GL_CONSTANT_EXT = gl.GL_CONSTANT_EXT
GL_PRIMARY_COLOR_EXT = gl.GL_PRIMARY_COLOR_EXT
GL_PREVIOUS_EXT = gl.GL_PREVIOUS_EXT
GL_SOURCE0_RGB_EXT = gl.GL_SOURCE0_RGB_EXT
GL_SOURCE1_RGB_EXT = gl.GL_SOURCE1_RGB_EXT
GL_SOURCE2_RGB_EXT = gl.GL_SOURCE2_RGB_EXT
GL_SOURCE0_ALPHA_EXT = gl.GL_SOURCE0_ALPHA_EXT
GL_SOURCE1_ALPHA_EXT = gl.GL_SOURCE1_ALPHA_EXT
GL_SOURCE2_ALPHA_EXT = gl.GL_SOURCE2_ALPHA_EXT
GL_OPERAND0_RGB_EXT = gl.GL_OPERAND0_RGB_EXT
GL_OPERAND1_RGB_EXT = gl.GL_OPERAND1_RGB_EXT
GL_OPERAND2_RGB_EXT = gl.GL_OPERAND2_RGB_EXT
GL_OPERAND0_ALPHA_EXT = gl.GL_OPERAND0_ALPHA_EXT
GL_OPERAND1_ALPHA_EXT = gl.GL_OPERAND1_ALPHA_EXT
GL_OPERAND2_ALPHA_EXT = gl.GL_OPERAND2_ALPHA_EXT

#GL_EXT_texture_env_dot3

GL_EXT_texture_env_dot3 = gl.GL_EXT_texture_env_dot3

GL_DOT3_RGB_EXT = gl.GL_DOT3_RGB_EXT
GL_DOT3_RGBA_EXT = gl.GL_DOT3_RGBA_EXT

#GL_EXT_texture_filter_anisotropic

GL_EXT_texture_filter_anisotropic = gl.GL_EXT_texture_filter_anisotropic

GL_TEXTURE_MAX_ANISOTROPY_EXT = gl.GL_TEXTURE_MAX_ANISOTROPY_EXT
GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = gl.GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT

#GL_EXT_texture_integer

GL_EXT_texture_integer = gl.GL_EXT_texture_integer

GL_RGBA32UI_EXT = gl.GL_RGBA32UI_EXT
GL_RGB32UI_EXT = gl.GL_RGB32UI_EXT
GL_ALPHA32UI_EXT = gl.GL_ALPHA32UI_EXT
GL_INTENSITY32UI_EXT = gl.GL_INTENSITY32UI_EXT
GL_LUMINANCE32UI_EXT = gl.GL_LUMINANCE32UI_EXT
GL_LUMINANCE_ALPHA32UI_EXT = gl.GL_LUMINANCE_ALPHA32UI_EXT
GL_RGBA16UI_EXT = gl.GL_RGBA16UI_EXT
GL_RGB16UI_EXT = gl.GL_RGB16UI_EXT
GL_ALPHA16UI_EXT = gl.GL_ALPHA16UI_EXT
GL_INTENSITY16UI_EXT = gl.GL_INTENSITY16UI_EXT
GL_LUMINANCE16UI_EXT = gl.GL_LUMINANCE16UI_EXT
GL_LUMINANCE_ALPHA16UI_EXT = gl.GL_LUMINANCE_ALPHA16UI_EXT
GL_RGBA8UI_EXT = gl.GL_RGBA8UI_EXT
GL_RGB8UI_EXT = gl.GL_RGB8UI_EXT
GL_ALPHA8UI_EXT = gl.GL_ALPHA8UI_EXT
GL_INTENSITY8UI_EXT = gl.GL_INTENSITY8UI_EXT
GL_LUMINANCE8UI_EXT = gl.GL_LUMINANCE8UI_EXT
GL_LUMINANCE_ALPHA8UI_EXT = gl.GL_LUMINANCE_ALPHA8UI_EXT
GL_RGBA32I_EXT = gl.GL_RGBA32I_EXT
GL_RGB32I_EXT = gl.GL_RGB32I_EXT
GL_ALPHA32I_EXT = gl.GL_ALPHA32I_EXT
GL_INTENSITY32I_EXT = gl.GL_INTENSITY32I_EXT
GL_LUMINANCE32I_EXT = gl.GL_LUMINANCE32I_EXT
GL_LUMINANCE_ALPHA32I_EXT = gl.GL_LUMINANCE_ALPHA32I_EXT
GL_RGBA16I_EXT = gl.GL_RGBA16I_EXT
GL_RGB16I_EXT = gl.GL_RGB16I_EXT
GL_ALPHA16I_EXT = gl.GL_ALPHA16I_EXT
GL_INTENSITY16I_EXT = gl.GL_INTENSITY16I_EXT
GL_LUMINANCE16I_EXT = gl.GL_LUMINANCE16I_EXT
GL_LUMINANCE_ALPHA16I_EXT = gl.GL_LUMINANCE_ALPHA16I_EXT
GL_RGBA8I_EXT = gl.GL_RGBA8I_EXT
GL_RGB8I_EXT = gl.GL_RGB8I_EXT
GL_ALPHA8I_EXT = gl.GL_ALPHA8I_EXT
GL_INTENSITY8I_EXT = gl.GL_INTENSITY8I_EXT
GL_LUMINANCE8I_EXT = gl.GL_LUMINANCE8I_EXT
GL_LUMINANCE_ALPHA8I_EXT = gl.GL_LUMINANCE_ALPHA8I_EXT
GL_RED_INTEGER_EXT = gl.GL_RED_INTEGER_EXT
GL_GREEN_INTEGER_EXT = gl.GL_GREEN_INTEGER_EXT
GL_BLUE_INTEGER_EXT = gl.GL_BLUE_INTEGER_EXT
GL_ALPHA_INTEGER_EXT = gl.GL_ALPHA_INTEGER_EXT
GL_RGB_INTEGER_EXT = gl.GL_RGB_INTEGER_EXT
GL_RGBA_INTEGER_EXT = gl.GL_RGBA_INTEGER_EXT
GL_BGR_INTEGER_EXT = gl.GL_BGR_INTEGER_EXT
GL_BGRA_INTEGER_EXT = gl.GL_BGRA_INTEGER_EXT
GL_LUMINANCE_INTEGER_EXT = gl.GL_LUMINANCE_INTEGER_EXT
GL_LUMINANCE_ALPHA_INTEGER_EXT = gl.GL_LUMINANCE_ALPHA_INTEGER_EXT
GL_RGBA_INTEGER_MODE_EXT = gl.GL_RGBA_INTEGER_MODE_EXT

def glClearColorIiEXT(red, green, blue, alpha):
    gl.glClearColorIiEXT(red, green, blue, alpha)

def glClearColorIuiEXT(red, green, blue, alpha):
    gl.glClearColorIuiEXT(red, green, blue, alpha)

def glGetTexParameterIivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetTexParameterIivEXT(target, pname, params1)

def glGetTexParameterIuivEXT(target, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetTexParameterIuivEXT(target, pname, params1)

def glTexParameterIivEXT(target, pname, int params):
    cdef int* params1 = &params
    gl.glTexParameterIivEXT(target, pname, params1)

def glTexParameterIuivEXT(target, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glTexParameterIuivEXT(target, pname, params1)

#GL_EXT_texture_lod_bias

GL_EXT_texture_lod_bias = gl.GL_EXT_texture_lod_bias

GL_MAX_TEXTURE_LOD_BIAS_EXT = gl.GL_MAX_TEXTURE_LOD_BIAS_EXT
GL_TEXTURE_FILTER_CONTROL_EXT = gl.GL_TEXTURE_FILTER_CONTROL_EXT
GL_TEXTURE_LOD_BIAS_EXT = gl.GL_TEXTURE_LOD_BIAS_EXT

#GL_EXT_texture_mirror_clamp

GL_EXT_texture_mirror_clamp = gl.GL_EXT_texture_mirror_clamp

GL_MIRROR_CLAMP_EXT = gl.GL_MIRROR_CLAMP_EXT
GL_MIRROR_CLAMP_TO_EDGE_EXT = gl.GL_MIRROR_CLAMP_TO_EDGE_EXT
GL_MIRROR_CLAMP_TO_BORDER_EXT = gl.GL_MIRROR_CLAMP_TO_BORDER_EXT

#GL_EXT_texture_object

GL_EXT_texture_object = gl.GL_EXT_texture_object

GL_TEXTURE_PRIORITY_EXT = gl.GL_TEXTURE_PRIORITY_EXT
GL_TEXTURE_RESIDENT_EXT = gl.GL_TEXTURE_RESIDENT_EXT
GL_TEXTURE_1D_BINDING_EXT = gl.GL_TEXTURE_1D_BINDING_EXT
GL_TEXTURE_2D_BINDING_EXT = gl.GL_TEXTURE_2D_BINDING_EXT
GL_TEXTURE_3D_BINDING_EXT = gl.GL_TEXTURE_3D_BINDING_EXT

def glAreTexturesResidentEXT(n, textures, bint residences):
    cdef bint* residences1 = &residences
    return gl.glAreTexturesResidentEXT(n, textures, residences1)

def glBindTextureEXT(target, texture):
    gl.glBindTextureEXT(target, texture)

def glDeleteTexturesEXT(n, unsigned int textures):
    cdef unsigned int* textures1 = &textures
    gl.glDeleteTexturesEXT(n, textures1)

def glGenTexturesEXT(n, unsigned int textures):
    cdef unsigned int* textures1 = &textures
    gl.glGenTexturesEXT(n, textures1)

def glIsTextureEXT(texture):
    return gl.glIsTextureEXT(texture)

def glPrioritizeTexturesEXT(n, unsigned int textures, float priorities):
    cdef unsigned int* textures1 = &textures
    cdef float* priorities1 = &priorities
    gl.glPrioritizeTexturesEXT(n, textures1, priorities1)

#GL_EXT_texture_perturb_normal

GL_EXT_texture_perturb_normal = gl.GL_EXT_texture_perturb_normal

GL_PERTURB_EXT = gl.GL_PERTURB_EXT
GL_TEXTURE_NORMAL_EXT = gl.GL_TEXTURE_NORMAL_EXT

def glTextureNormalEXT(mode):
    gl.glTextureNormalEXT(mode)

#GL_EXT_texture_rectangle

GL_EXT_texture_rectangle = gl.GL_EXT_texture_rectangle

GL_TEXTURE_RECTANGLE_EXT = gl.GL_TEXTURE_RECTANGLE_EXT
GL_TEXTURE_BINDING_RECTANGLE_EXT = gl.GL_TEXTURE_BINDING_RECTANGLE_EXT
GL_PROXY_TEXTURE_RECTANGLE_EXT = gl.GL_PROXY_TEXTURE_RECTANGLE_EXT
GL_MAX_RECTANGLE_TEXTURE_SIZE_EXT = gl.GL_MAX_RECTANGLE_TEXTURE_SIZE_EXT

#GL_EXT_texture_sRGB

GL_EXT_texture_sRGB = gl.GL_EXT_texture_sRGB

GL_SRGB_EXT = gl.GL_SRGB_EXT
GL_SRGB8_EXT = gl.GL_SRGB8_EXT
GL_SRGB_ALPHA_EXT = gl.GL_SRGB_ALPHA_EXT
GL_SRGB8_ALPHA8_EXT = gl.GL_SRGB8_ALPHA8_EXT
GL_SLUMINANCE_ALPHA_EXT = gl.GL_SLUMINANCE_ALPHA_EXT
GL_SLUMINANCE8_ALPHA8_EXT = gl.GL_SLUMINANCE8_ALPHA8_EXT
GL_SLUMINANCE_EXT = gl.GL_SLUMINANCE_EXT
GL_SLUMINANCE8_EXT = gl.GL_SLUMINANCE8_EXT
GL_COMPRESSED_SRGB_EXT = gl.GL_COMPRESSED_SRGB_EXT
GL_COMPRESSED_SRGB_ALPHA_EXT = gl.GL_COMPRESSED_SRGB_ALPHA_EXT
GL_COMPRESSED_SLUMINANCE_EXT = gl.GL_COMPRESSED_SLUMINANCE_EXT
GL_COMPRESSED_SLUMINANCE_ALPHA_EXT = gl.GL_COMPRESSED_SLUMINANCE_ALPHA_EXT
GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = gl.GL_COMPRESSED_SRGB_S3TC_DXT1_EXT
GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = gl.GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT
GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = gl.GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT
GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = gl.GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT

#GL_EXT_texture_sRGB_decode

GL_EXT_texture_sRGB_decode = gl.GL_EXT_texture_sRGB_decode

GL_TEXTURE_SRGB_DECODE_EXT = gl.GL_TEXTURE_SRGB_DECODE_EXT
GL_DECODE_EXT = gl.GL_DECODE_EXT
GL_SKIP_DECODE_EXT = gl.GL_SKIP_DECODE_EXT

#GL_EXT_texture_shared_exponent

GL_EXT_texture_shared_exponent = gl.GL_EXT_texture_shared_exponent

GL_RGB9_E5_EXT = gl.GL_RGB9_E5_EXT
GL_UNSIGNED_INT_5_9_9_9_REV_EXT = gl.GL_UNSIGNED_INT_5_9_9_9_REV_EXT
GL_TEXTURE_SHARED_SIZE_EXT = gl.GL_TEXTURE_SHARED_SIZE_EXT

#GL_EXT_texture_snorm

GL_EXT_texture_snorm = gl.GL_EXT_texture_snorm

GL_RED_SNORM = gl.GL_RED_SNORM
GL_RG_SNORM = gl.GL_RG_SNORM
GL_RGB_SNORM = gl.GL_RGB_SNORM
GL_RGBA_SNORM = gl.GL_RGBA_SNORM
GL_R8_SNORM = gl.GL_R8_SNORM
GL_RG8_SNORM = gl.GL_RG8_SNORM
GL_RGB8_SNORM = gl.GL_RGB8_SNORM
GL_RGBA8_SNORM = gl.GL_RGBA8_SNORM
GL_R16_SNORM = gl.GL_R16_SNORM
GL_RG16_SNORM = gl.GL_RG16_SNORM
GL_RGB16_SNORM = gl.GL_RGB16_SNORM
GL_RGBA16_SNORM = gl.GL_RGBA16_SNORM
GL_SIGNED_NORMALIZED = gl.GL_SIGNED_NORMALIZED
GL_ALPHA_SNORM = gl.GL_ALPHA_SNORM
GL_LUMINANCE_SNORM = gl.GL_LUMINANCE_SNORM
GL_LUMINANCE_ALPHA_SNORM = gl.GL_LUMINANCE_ALPHA_SNORM
GL_INTENSITY_SNORM = gl.GL_INTENSITY_SNORM
GL_ALPHA8_SNORM = gl.GL_ALPHA8_SNORM
GL_LUMINANCE8_SNORM = gl.GL_LUMINANCE8_SNORM
GL_LUMINANCE8_ALPHA8_SNORM = gl.GL_LUMINANCE8_ALPHA8_SNORM
GL_INTENSITY8_SNORM = gl.GL_INTENSITY8_SNORM
GL_ALPHA16_SNORM = gl.GL_ALPHA16_SNORM
GL_LUMINANCE16_SNORM = gl.GL_LUMINANCE16_SNORM
GL_LUMINANCE16_ALPHA16_SNORM = gl.GL_LUMINANCE16_ALPHA16_SNORM
GL_INTENSITY16_SNORM = gl.GL_INTENSITY16_SNORM

#GL_EXT_texture_swizzle

GL_EXT_texture_swizzle = gl.GL_EXT_texture_swizzle

GL_TEXTURE_SWIZZLE_R_EXT = gl.GL_TEXTURE_SWIZZLE_R_EXT
GL_TEXTURE_SWIZZLE_G_EXT = gl.GL_TEXTURE_SWIZZLE_G_EXT
GL_TEXTURE_SWIZZLE_B_EXT = gl.GL_TEXTURE_SWIZZLE_B_EXT
GL_TEXTURE_SWIZZLE_A_EXT = gl.GL_TEXTURE_SWIZZLE_A_EXT
GL_TEXTURE_SWIZZLE_RGBA_EXT = gl.GL_TEXTURE_SWIZZLE_RGBA_EXT

#GL_EXT_timer_query

GL_EXT_timer_query = gl.GL_EXT_timer_query

GL_TIME_ELAPSED_EXT = gl.GL_TIME_ELAPSED_EXT

def glGetQueryObjecti64vEXT(id, pname, signed long long params):
    cdef signed long long* params1 = &params
    gl.glGetQueryObjecti64vEXT(id, pname, params1)

def glGetQueryObjectui64vEXT(id, pname, unsigned long long params):
    cdef unsigned long long* params1 = &params
    gl.glGetQueryObjectui64vEXT(id, pname, params1)

#GL_EXT_transform_feedback

GL_EXT_transform_feedback = gl.GL_EXT_transform_feedback

GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT = gl.GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT
GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT = gl.GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT = gl.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT
GL_TRANSFORM_FEEDBACK_VARYINGS_EXT = gl.GL_TRANSFORM_FEEDBACK_VARYINGS_EXT
GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT = gl.GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT
GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT = gl.GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT
GL_PRIMITIVES_GENERATED_EXT = gl.GL_PRIMITIVES_GENERATED_EXT
GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT = gl.GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT
GL_RASTERIZER_DISCARD_EXT = gl.GL_RASTERIZER_DISCARD_EXT
GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT = gl.GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT = gl.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT
GL_INTERLEAVED_ATTRIBS_EXT = gl.GL_INTERLEAVED_ATTRIBS_EXT
GL_SEPARATE_ATTRIBS_EXT = gl.GL_SEPARATE_ATTRIBS_EXT
GL_TRANSFORM_FEEDBACK_BUFFER_EXT = gl.GL_TRANSFORM_FEEDBACK_BUFFER_EXT
GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT = gl.GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT

def glBeginTransformFeedbackEXT(primitiveMode):
    gl.glBeginTransformFeedbackEXT(primitiveMode)

def glBindBufferBaseEXT(target, index, buffer):
    gl.glBindBufferBaseEXT(target, index, buffer)

def glBindBufferOffsetEXT(target, index, buffer, offset):
    gl.glBindBufferOffsetEXT(target, index, buffer, offset)

def glBindBufferRangeEXT(target, index, buffer, offset, size):
    gl.glBindBufferRangeEXT(target, index, buffer, offset, size)

def glEndTransformFeedbackEXT():
    gl.glEndTransformFeedbackEXT()

def glGetTransformFeedbackVaryingEXT(program, index, bufSize, int length, int size, unsigned int type, name):
    cdef int* length1 = &length
    cdef int* size1 = &size
    cdef unsigned int* type1 = &type
    cdef char* name1 = name
    gl.glGetTransformFeedbackVaryingEXT(program, index, bufSize, length1, size1, type1, name1)

def glTransformFeedbackVaryingsEXT(program, count,  varyings, bufferMode):
    cdef char* c = <char*>varyings
    gl.glTransformFeedbackVaryingsEXT(program, count,  &c, bufferMode)

#GL_EXT_vertex_array

GL_EXT_vertex_array = gl.GL_EXT_vertex_array

GL_DOUBLE_EXT = gl.GL_DOUBLE_EXT
GL_VERTEX_ARRAY_EXT = gl.GL_VERTEX_ARRAY_EXT
GL_NORMAL_ARRAY_EXT = gl.GL_NORMAL_ARRAY_EXT
GL_COLOR_ARRAY_EXT = gl.GL_COLOR_ARRAY_EXT
GL_INDEX_ARRAY_EXT = gl.GL_INDEX_ARRAY_EXT
GL_TEXTURE_COORD_ARRAY_EXT = gl.GL_TEXTURE_COORD_ARRAY_EXT
GL_EDGE_FLAG_ARRAY_EXT = gl.GL_EDGE_FLAG_ARRAY_EXT
GL_VERTEX_ARRAY_SIZE_EXT = gl.GL_VERTEX_ARRAY_SIZE_EXT
GL_VERTEX_ARRAY_TYPE_EXT = gl.GL_VERTEX_ARRAY_TYPE_EXT
GL_VERTEX_ARRAY_STRIDE_EXT = gl.GL_VERTEX_ARRAY_STRIDE_EXT
GL_VERTEX_ARRAY_COUNT_EXT = gl.GL_VERTEX_ARRAY_COUNT_EXT
GL_NORMAL_ARRAY_TYPE_EXT = gl.GL_NORMAL_ARRAY_TYPE_EXT
GL_NORMAL_ARRAY_STRIDE_EXT = gl.GL_NORMAL_ARRAY_STRIDE_EXT
GL_NORMAL_ARRAY_COUNT_EXT = gl.GL_NORMAL_ARRAY_COUNT_EXT
GL_COLOR_ARRAY_SIZE_EXT = gl.GL_COLOR_ARRAY_SIZE_EXT
GL_COLOR_ARRAY_TYPE_EXT = gl.GL_COLOR_ARRAY_TYPE_EXT
GL_COLOR_ARRAY_STRIDE_EXT = gl.GL_COLOR_ARRAY_STRIDE_EXT
GL_COLOR_ARRAY_COUNT_EXT = gl.GL_COLOR_ARRAY_COUNT_EXT
GL_INDEX_ARRAY_TYPE_EXT = gl.GL_INDEX_ARRAY_TYPE_EXT
GL_INDEX_ARRAY_STRIDE_EXT = gl.GL_INDEX_ARRAY_STRIDE_EXT
GL_INDEX_ARRAY_COUNT_EXT = gl.GL_INDEX_ARRAY_COUNT_EXT
GL_TEXTURE_COORD_ARRAY_SIZE_EXT = gl.GL_TEXTURE_COORD_ARRAY_SIZE_EXT
GL_TEXTURE_COORD_ARRAY_TYPE_EXT = gl.GL_TEXTURE_COORD_ARRAY_TYPE_EXT
GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = gl.GL_TEXTURE_COORD_ARRAY_STRIDE_EXT
GL_TEXTURE_COORD_ARRAY_COUNT_EXT = gl.GL_TEXTURE_COORD_ARRAY_COUNT_EXT
GL_EDGE_FLAG_ARRAY_STRIDE_EXT = gl.GL_EDGE_FLAG_ARRAY_STRIDE_EXT
GL_EDGE_FLAG_ARRAY_COUNT_EXT = gl.GL_EDGE_FLAG_ARRAY_COUNT_EXT
GL_VERTEX_ARRAY_POINTER_EXT = gl.GL_VERTEX_ARRAY_POINTER_EXT
GL_NORMAL_ARRAY_POINTER_EXT = gl.GL_NORMAL_ARRAY_POINTER_EXT
GL_COLOR_ARRAY_POINTER_EXT = gl.GL_COLOR_ARRAY_POINTER_EXT
GL_INDEX_ARRAY_POINTER_EXT = gl.GL_INDEX_ARRAY_POINTER_EXT
GL_TEXTURE_COORD_ARRAY_POINTER_EXT = gl.GL_TEXTURE_COORD_ARRAY_POINTER_EXT
GL_EDGE_FLAG_ARRAY_POINTER_EXT = gl.GL_EDGE_FLAG_ARRAY_POINTER_EXT

def glArrayElementEXT(i):
    gl.glArrayElementEXT(i)

def glColorPointerEXT(size, type, stride, count,  pointer):
    cdef void* t = <void*>pointer
    gl.glColorPointerEXT(size, type, stride, count,  &t)

def glDrawArraysEXT(mode, first, count):
    gl.glDrawArraysEXT(mode, first, count)

def glEdgeFlagPointerEXT(stride, count, pointer):
    gl.glEdgeFlagPointerEXT(stride, count, pointer)

def glIndexPointerEXT(type, stride, count,  pointer):
    gl.glIndexPointerEXT(type, stride, count,  <void*>pointer)

def glNormalPointerEXT(type, stride, count,  pointer):
    gl.glNormalPointerEXT(type, stride, count,  <void*>pointer)

def glTexCoordPointerEXT(size, type, stride, count,  pointer):
    gl.glTexCoordPointerEXT(size, type, stride, count,  <void*>pointer)

def glVertexPointerEXT(size, type, stride, count,  pointer):
    gl.glVertexPointerEXT(size, type, stride, count,  <void*>pointer)

#GL_EXT_vertex_array_bgra

GL_EXT_vertex_array_bgra = gl.GL_EXT_vertex_array_bgra

GL_BGRA = gl.GL_BGRA

#GL_EXT_vertex_attrib_64bit

GL_EXT_vertex_attrib_64bit = gl.GL_EXT_vertex_attrib_64bit

GL_DOUBLE_MAT2_EXT = gl.GL_DOUBLE_MAT2_EXT
GL_DOUBLE_MAT3_EXT = gl.GL_DOUBLE_MAT3_EXT
GL_DOUBLE_MAT4_EXT = gl.GL_DOUBLE_MAT4_EXT
GL_DOUBLE_MAT2x3_EXT = gl.GL_DOUBLE_MAT2x3_EXT
GL_DOUBLE_MAT2x4_EXT = gl.GL_DOUBLE_MAT2x4_EXT
GL_DOUBLE_MAT3x2_EXT = gl.GL_DOUBLE_MAT3x2_EXT
GL_DOUBLE_MAT3x4_EXT = gl.GL_DOUBLE_MAT3x4_EXT
GL_DOUBLE_MAT4x2_EXT = gl.GL_DOUBLE_MAT4x2_EXT
GL_DOUBLE_MAT4x3_EXT = gl.GL_DOUBLE_MAT4x3_EXT
GL_DOUBLE_VEC2_EXT = gl.GL_DOUBLE_VEC2_EXT
GL_DOUBLE_VEC3_EXT = gl.GL_DOUBLE_VEC3_EXT
GL_DOUBLE_VEC4_EXT = gl.GL_DOUBLE_VEC4_EXT

def glGetVertexAttribLdvEXT(index, pname, double params):
    cdef double* params1 = &params
    gl.glGetVertexAttribLdvEXT(index, pname, params1)

def glVertexArrayVertexAttribLOffsetEXT(vaobj, buffer, index, size, type, stride, offset):
    gl.glVertexArrayVertexAttribLOffsetEXT(vaobj, buffer, index, size, type, stride, offset)

def glVertexAttribL1dEXT(index, x):
    gl.glVertexAttribL1dEXT(index, x)

def glVertexAttribL1dvEXT(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttribL1dvEXT(index,  v1)

def glVertexAttribL2dEXT(index, x, y):
    gl.glVertexAttribL2dEXT(index, x, y)

def glVertexAttribL2dvEXT(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttribL2dvEXT(index,  v1)

def glVertexAttribL3dEXT(index, x, y, z):
    gl.glVertexAttribL3dEXT(index, x, y, z)

def glVertexAttribL3dvEXT(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttribL3dvEXT(index,  v1)

def glVertexAttribL4dEXT(index, x, y, z, w):
    gl.glVertexAttribL4dEXT(index, x, y, z, w)

def glVertexAttribL4dvEXT(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttribL4dvEXT(index,  v1)

def glVertexAttribLPointerEXT(index, size, type, stride,  pointer):
    gl.glVertexAttribLPointerEXT(index, size, type, stride,  <void*>pointer)

#GL_EXT_vertex_shader

GL_EXT_vertex_shader = gl.GL_EXT_vertex_shader

GL_VERTEX_SHADER_EXT = gl.GL_VERTEX_SHADER_EXT
GL_VERTEX_SHADER_BINDING_EXT = gl.GL_VERTEX_SHADER_BINDING_EXT
GL_OP_INDEX_EXT = gl.GL_OP_INDEX_EXT
GL_OP_NEGATE_EXT = gl.GL_OP_NEGATE_EXT
GL_OP_DOT3_EXT = gl.GL_OP_DOT3_EXT
GL_OP_DOT4_EXT = gl.GL_OP_DOT4_EXT
GL_OP_MUL_EXT = gl.GL_OP_MUL_EXT
GL_OP_ADD_EXT = gl.GL_OP_ADD_EXT
GL_OP_MADD_EXT = gl.GL_OP_MADD_EXT
GL_OP_FRAC_EXT = gl.GL_OP_FRAC_EXT
GL_OP_MAX_EXT = gl.GL_OP_MAX_EXT
GL_OP_MIN_EXT = gl.GL_OP_MIN_EXT
GL_OP_SET_GE_EXT = gl.GL_OP_SET_GE_EXT
GL_OP_SET_LT_EXT = gl.GL_OP_SET_LT_EXT
GL_OP_CLAMP_EXT = gl.GL_OP_CLAMP_EXT
GL_OP_FLOOR_EXT = gl.GL_OP_FLOOR_EXT
GL_OP_ROUND_EXT = gl.GL_OP_ROUND_EXT
GL_OP_EXP_BASE_2_EXT = gl.GL_OP_EXP_BASE_2_EXT
GL_OP_LOG_BASE_2_EXT = gl.GL_OP_LOG_BASE_2_EXT
GL_OP_POWER_EXT = gl.GL_OP_POWER_EXT
GL_OP_RECIP_EXT = gl.GL_OP_RECIP_EXT
GL_OP_RECIP_SQRT_EXT = gl.GL_OP_RECIP_SQRT_EXT
GL_OP_SUB_EXT = gl.GL_OP_SUB_EXT
GL_OP_CROSS_PRODUCT_EXT = gl.GL_OP_CROSS_PRODUCT_EXT
GL_OP_MULTIPLY_MATRIX_EXT = gl.GL_OP_MULTIPLY_MATRIX_EXT
GL_OP_MOV_EXT = gl.GL_OP_MOV_EXT
GL_OUTPUT_VERTEX_EXT = gl.GL_OUTPUT_VERTEX_EXT
GL_OUTPUT_COLOR0_EXT = gl.GL_OUTPUT_COLOR0_EXT
GL_OUTPUT_COLOR1_EXT = gl.GL_OUTPUT_COLOR1_EXT
GL_OUTPUT_TEXTURE_COORD0_EXT = gl.GL_OUTPUT_TEXTURE_COORD0_EXT
GL_OUTPUT_TEXTURE_COORD1_EXT = gl.GL_OUTPUT_TEXTURE_COORD1_EXT
GL_OUTPUT_TEXTURE_COORD2_EXT = gl.GL_OUTPUT_TEXTURE_COORD2_EXT
GL_OUTPUT_TEXTURE_COORD3_EXT = gl.GL_OUTPUT_TEXTURE_COORD3_EXT
GL_OUTPUT_TEXTURE_COORD4_EXT = gl.GL_OUTPUT_TEXTURE_COORD4_EXT
GL_OUTPUT_TEXTURE_COORD5_EXT = gl.GL_OUTPUT_TEXTURE_COORD5_EXT
GL_OUTPUT_TEXTURE_COORD6_EXT = gl.GL_OUTPUT_TEXTURE_COORD6_EXT
GL_OUTPUT_TEXTURE_COORD7_EXT = gl.GL_OUTPUT_TEXTURE_COORD7_EXT
GL_OUTPUT_TEXTURE_COORD8_EXT = gl.GL_OUTPUT_TEXTURE_COORD8_EXT
GL_OUTPUT_TEXTURE_COORD9_EXT = gl.GL_OUTPUT_TEXTURE_COORD9_EXT
GL_OUTPUT_TEXTURE_COORD10_EXT = gl.GL_OUTPUT_TEXTURE_COORD10_EXT
GL_OUTPUT_TEXTURE_COORD11_EXT = gl.GL_OUTPUT_TEXTURE_COORD11_EXT
GL_OUTPUT_TEXTURE_COORD12_EXT = gl.GL_OUTPUT_TEXTURE_COORD12_EXT
GL_OUTPUT_TEXTURE_COORD13_EXT = gl.GL_OUTPUT_TEXTURE_COORD13_EXT
GL_OUTPUT_TEXTURE_COORD14_EXT = gl.GL_OUTPUT_TEXTURE_COORD14_EXT
GL_OUTPUT_TEXTURE_COORD15_EXT = gl.GL_OUTPUT_TEXTURE_COORD15_EXT
GL_OUTPUT_TEXTURE_COORD16_EXT = gl.GL_OUTPUT_TEXTURE_COORD16_EXT
GL_OUTPUT_TEXTURE_COORD17_EXT = gl.GL_OUTPUT_TEXTURE_COORD17_EXT
GL_OUTPUT_TEXTURE_COORD18_EXT = gl.GL_OUTPUT_TEXTURE_COORD18_EXT
GL_OUTPUT_TEXTURE_COORD19_EXT = gl.GL_OUTPUT_TEXTURE_COORD19_EXT
GL_OUTPUT_TEXTURE_COORD20_EXT = gl.GL_OUTPUT_TEXTURE_COORD20_EXT
GL_OUTPUT_TEXTURE_COORD21_EXT = gl.GL_OUTPUT_TEXTURE_COORD21_EXT
GL_OUTPUT_TEXTURE_COORD22_EXT = gl.GL_OUTPUT_TEXTURE_COORD22_EXT
GL_OUTPUT_TEXTURE_COORD23_EXT = gl.GL_OUTPUT_TEXTURE_COORD23_EXT
GL_OUTPUT_TEXTURE_COORD24_EXT = gl.GL_OUTPUT_TEXTURE_COORD24_EXT
GL_OUTPUT_TEXTURE_COORD25_EXT = gl.GL_OUTPUT_TEXTURE_COORD25_EXT
GL_OUTPUT_TEXTURE_COORD26_EXT = gl.GL_OUTPUT_TEXTURE_COORD26_EXT
GL_OUTPUT_TEXTURE_COORD27_EXT = gl.GL_OUTPUT_TEXTURE_COORD27_EXT
GL_OUTPUT_TEXTURE_COORD28_EXT = gl.GL_OUTPUT_TEXTURE_COORD28_EXT
GL_OUTPUT_TEXTURE_COORD29_EXT = gl.GL_OUTPUT_TEXTURE_COORD29_EXT
GL_OUTPUT_TEXTURE_COORD30_EXT = gl.GL_OUTPUT_TEXTURE_COORD30_EXT
GL_OUTPUT_TEXTURE_COORD31_EXT = gl.GL_OUTPUT_TEXTURE_COORD31_EXT
GL_OUTPUT_FOG_EXT = gl.GL_OUTPUT_FOG_EXT
GL_SCALAR_EXT = gl.GL_SCALAR_EXT
GL_VECTOR_EXT = gl.GL_VECTOR_EXT
GL_MATRIX_EXT = gl.GL_MATRIX_EXT
GL_VARIANT_EXT = gl.GL_VARIANT_EXT
GL_INVARIANT_EXT = gl.GL_INVARIANT_EXT
GL_LOCAL_CONSTANT_EXT = gl.GL_LOCAL_CONSTANT_EXT
GL_LOCAL_EXT = gl.GL_LOCAL_EXT
GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT = gl.GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT
GL_MAX_VERTEX_SHADER_VARIANTS_EXT = gl.GL_MAX_VERTEX_SHADER_VARIANTS_EXT
GL_MAX_VERTEX_SHADER_INVARIANTS_EXT = gl.GL_MAX_VERTEX_SHADER_INVARIANTS_EXT
GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = gl.GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
GL_MAX_VERTEX_SHADER_LOCALS_EXT = gl.GL_MAX_VERTEX_SHADER_LOCALS_EXT
GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT = gl.GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT
GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT = gl.GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT
GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT = gl.GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT
GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = gl.GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT = gl.GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT
GL_VERTEX_SHADER_INSTRUCTIONS_EXT = gl.GL_VERTEX_SHADER_INSTRUCTIONS_EXT
GL_VERTEX_SHADER_VARIANTS_EXT = gl.GL_VERTEX_SHADER_VARIANTS_EXT
GL_VERTEX_SHADER_INVARIANTS_EXT = gl.GL_VERTEX_SHADER_INVARIANTS_EXT
GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = gl.GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
GL_VERTEX_SHADER_LOCALS_EXT = gl.GL_VERTEX_SHADER_LOCALS_EXT
GL_VERTEX_SHADER_OPTIMIZED_EXT = gl.GL_VERTEX_SHADER_OPTIMIZED_EXT
GL_X_EXT = gl.GL_X_EXT
GL_Y_EXT = gl.GL_Y_EXT
GL_Z_EXT = gl.GL_Z_EXT
GL_W_EXT = gl.GL_W_EXT
GL_NEGATIVE_X_EXT = gl.GL_NEGATIVE_X_EXT
GL_NEGATIVE_Y_EXT = gl.GL_NEGATIVE_Y_EXT
GL_NEGATIVE_Z_EXT = gl.GL_NEGATIVE_Z_EXT
GL_NEGATIVE_W_EXT = gl.GL_NEGATIVE_W_EXT
GL_ZERO_EXT = gl.GL_ZERO_EXT
GL_ONE_EXT = gl.GL_ONE_EXT
GL_NEGATIVE_ONE_EXT = gl.GL_NEGATIVE_ONE_EXT
GL_NORMALIZED_RANGE_EXT = gl.GL_NORMALIZED_RANGE_EXT
GL_FULL_RANGE_EXT = gl.GL_FULL_RANGE_EXT
GL_CURRENT_VERTEX_EXT = gl.GL_CURRENT_VERTEX_EXT
GL_MVP_MATRIX_EXT = gl.GL_MVP_MATRIX_EXT
GL_VARIANT_VALUE_EXT = gl.GL_VARIANT_VALUE_EXT
GL_VARIANT_DATATYPE_EXT = gl.GL_VARIANT_DATATYPE_EXT
GL_VARIANT_ARRAY_STRIDE_EXT = gl.GL_VARIANT_ARRAY_STRIDE_EXT
GL_VARIANT_ARRAY_TYPE_EXT = gl.GL_VARIANT_ARRAY_TYPE_EXT
GL_VARIANT_ARRAY_EXT = gl.GL_VARIANT_ARRAY_EXT
GL_VARIANT_ARRAY_POINTER_EXT = gl.GL_VARIANT_ARRAY_POINTER_EXT
GL_INVARIANT_VALUE_EXT = gl.GL_INVARIANT_VALUE_EXT
GL_INVARIANT_DATATYPE_EXT = gl.GL_INVARIANT_DATATYPE_EXT
GL_LOCAL_CONSTANT_VALUE_EXT = gl.GL_LOCAL_CONSTANT_VALUE_EXT
GL_LOCAL_CONSTANT_DATATYPE_EXT = gl.GL_LOCAL_CONSTANT_DATATYPE_EXT

def glBeginVertexShaderEXT():
    gl.glBeginVertexShaderEXT()

def glBindLightParameterEXT(light, value):
    return gl.glBindLightParameterEXT(light, value)

def glBindMaterialParameterEXT(face, value):
    return gl.glBindMaterialParameterEXT(face, value)

def glBindParameterEXT(value):
    return gl.glBindParameterEXT(value)

def glBindTexGenParameterEXT(unit, coord, value):
    return gl.glBindTexGenParameterEXT(unit, coord, value)

def glBindTextureUnitParameterEXT(unit, value):
    return gl.glBindTextureUnitParameterEXT(unit, value)

def glBindVertexShaderEXT(id):
    gl.glBindVertexShaderEXT(id)

def glDeleteVertexShaderEXT(id):
    gl.glDeleteVertexShaderEXT(id)

def glDisableVariantClientStateEXT(id):
    gl.glDisableVariantClientStateEXT(id)

def glEnableVariantClientStateEXT(id):
    gl.glEnableVariantClientStateEXT(id)

def glEndVertexShaderEXT():
    gl.glEndVertexShaderEXT()

def glExtractComponentEXT(res, src, num):
    gl.glExtractComponentEXT(res, src, num)

def glGenSymbolsEXT(dataType, storageType, range, components):
    return gl.glGenSymbolsEXT(dataType, storageType, range, components)

def glGenVertexShadersEXT(range):
    return gl.glGenVertexShadersEXT(range)

def glGetInvariantBooleanvEXT(id, value, bint data):
    cdef bint* data1 = &data
    gl.glGetInvariantBooleanvEXT(id, value, data1)

def glGetInvariantFloatvEXT(id, value, float data):
    cdef float* data1 = &data
    gl.glGetInvariantFloatvEXT(id, value, data1)

def glGetInvariantIntegervEXT(id, value, int data):
    cdef int* data1 = &data
    gl.glGetInvariantIntegervEXT(id, value, data1)

def glGetLocalConstantBooleanvEXT(id, value, bint data):
    cdef bint* data1 = &data
    gl.glGetLocalConstantBooleanvEXT(id, value, data1)

def glGetLocalConstantFloatvEXT(id, value, float data):
    cdef float* data1 = &data
    gl.glGetLocalConstantFloatvEXT(id, value, data1)

def glGetLocalConstantIntegervEXT(id, value, int data):
    cdef int* data1 = &data
    gl.glGetLocalConstantIntegervEXT(id, value, data1)

def glGetVariantBooleanvEXT(id, value, bint data):
    cdef bint* data1 = &data
    gl.glGetVariantBooleanvEXT(id, value, data1)

def glGetVariantFloatvEXT(id, value, float data):
    cdef float* data1 = &data
    gl.glGetVariantFloatvEXT(id, value, data1)

def glGetVariantIntegervEXT(id, value, int data):
    cdef int* data1 = &data
    gl.glGetVariantIntegervEXT(id, value, data1)

def glGetVariantPointervEXT(id, value, data):
    cdef void* t = <void*>data
    gl.glGetVariantPointervEXT(id, value, &t)

def glInsertComponentEXT(res, src, num):
    gl.glInsertComponentEXT(res, src, num)

def glIsVariantEnabledEXT(id, cap):
    return gl.glIsVariantEnabledEXT(id, cap)

def glSetInvariantEXT(id, type, addr):
    gl.glSetInvariantEXT(id, type, <void*>addr)

def glSetLocalConstantEXT(id, type, addr):
    gl.glSetLocalConstantEXT(id, type, <void*>addr)

def glShaderOp1EXT(op, res, arg1):
    gl.glShaderOp1EXT(op, res, arg1)

def glShaderOp2EXT(op, res, arg1, arg2):
    gl.glShaderOp2EXT(op, res, arg1, arg2)

def glShaderOp3EXT(op, res, arg1, arg2, arg3):
    gl.glShaderOp3EXT(op, res, arg1, arg2, arg3)

def glSwizzleEXT(res, in1, outX, outY, outZ, outW):
    gl.glSwizzleEXT(res, in1, outX, outY, outZ, outW)

def glVariantPointerEXT(id, type, stride, addr):
    gl.glVariantPointerEXT(id, type, stride, <void*>addr)

def glVariantbvEXT(id, signed char addr):
    cdef signed char* addr1 = &addr
    gl.glVariantbvEXT(id, addr1)

def glVariantdvEXT(id, double addr):
    cdef double* addr1 = &addr
    gl.glVariantdvEXT(id, addr1)

def glVariantfvEXT(id, float addr):
    cdef float* addr1 = &addr
    gl.glVariantfvEXT(id, addr1)

def glVariantivEXT(id, int addr):
    cdef int* addr1 = &addr
    gl.glVariantivEXT(id, addr1)

def glVariantsvEXT(id, short addr):
    cdef short* addr1 = &addr
    gl.glVariantsvEXT(id, addr1)

def glVariantubvEXT(id, unsigned char addr):
    cdef unsigned char* addr1 = &addr
    gl.glVariantubvEXT(id, addr1)

def glVariantuivEXT(id, unsigned int addr):
    cdef unsigned int* addr1 = &addr
    gl.glVariantuivEXT(id, addr1)

def glVariantusvEXT(id, unsigned short addr):
    cdef unsigned short* addr1 = &addr
    gl.glVariantusvEXT(id, addr1)

def glWriteMaskEXT(res, in1, outX, outY, outZ, outW):
    gl.glWriteMaskEXT(res, in1, outX, outY, outZ, outW)

#GL_EXT_vertex_weighting

GL_EXT_vertex_weighting = gl.GL_EXT_vertex_weighting

GL_MODELVIEW0_STACK_DEPTH_EXT = gl.GL_MODELVIEW0_STACK_DEPTH_EXT
GL_MODELVIEW0_MATRIX_EXT = gl.GL_MODELVIEW0_MATRIX_EXT
GL_MODELVIEW0_EXT = gl.GL_MODELVIEW0_EXT
GL_MODELVIEW1_STACK_DEPTH_EXT = gl.GL_MODELVIEW1_STACK_DEPTH_EXT
GL_MODELVIEW1_MATRIX_EXT = gl.GL_MODELVIEW1_MATRIX_EXT
GL_VERTEX_WEIGHTING_EXT = gl.GL_VERTEX_WEIGHTING_EXT
GL_MODELVIEW1_EXT = gl.GL_MODELVIEW1_EXT
GL_CURRENT_VERTEX_WEIGHT_EXT = gl.GL_CURRENT_VERTEX_WEIGHT_EXT
GL_VERTEX_WEIGHT_ARRAY_EXT = gl.GL_VERTEX_WEIGHT_ARRAY_EXT
GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT = gl.GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT
GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT = gl.GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT
GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT = gl.GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT
GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT = gl.GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT

def glVertexWeightPointerEXT(size, type, stride, pointer):
    gl.glVertexWeightPointerEXT(size, type, stride, <void*>pointer)

def glVertexWeightfEXT(weight):
    gl.glVertexWeightfEXT(weight)

def glVertexWeightfvEXT(float weight):
    cdef float* weight1 = &weight
    gl.glVertexWeightfvEXT(weight1)

#GL_EXT_x11_sync_object

GL_EXT_x11_sync_object = gl.GL_EXT_x11_sync_object

GL_SYNC_X11_FENCE_EXT = gl.GL_SYNC_X11_FENCE_EXT

#cdef gl.GLsync cglImportSyncEXT(external_sync_type, external_sync, flags):
#    return gl.glImportSyncEXT(external_sync_type, external_sync, flags)

#def glImportSyncEXT(external_sync_type, external_sync, flags):
#    waffle = GLsync_blah()
#    waffle.test = cglImportSyncEXT(external_sync_type, external_sync, flags)
#    caik = GLsynchronize()
#    caik.test = waffle.test
#    return caik