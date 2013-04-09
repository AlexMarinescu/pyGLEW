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

#GL_APPLE_aux_depth_stencil

GL_APPLE_aux_depth_stencil = gl.GL_APPLE_aux_depth_stencil

GL_AUX_DEPTH_STENCIL_APPLE = gl.GL_AUX_DEPTH_STENCIL_APPLE

#GL_APPLE_client_storage

GL_APPLE_client_storage = gl.GL_APPLE_client_storage

GL_UNPACK_CLIENT_STORAGE_APPLE = gl.GL_UNPACK_CLIENT_STORAGE_APPLE

#GL_APPLE_element_array

GL_APPLE_element_array = gl.GL_APPLE_element_array

GL_ELEMENT_ARRAY_APPLE = gl.GL_ELEMENT_ARRAY_APPLE
GL_ELEMENT_ARRAY_TYPE_APPLE = gl.GL_ELEMENT_ARRAY_TYPE_APPLE
GL_ELEMENT_ARRAY_POINTER_APPLE = gl.GL_ELEMENT_ARRAY_POINTER_APPLE

def glDrawElementArrayAPPLE(mode, first, count):
    gl.glDrawElementArrayAPPLE(mode, first, count)

def glDrawRangeElementArrayAPPLE(mode, start, end, first, count):
    gl.glDrawRangeElementArrayAPPLE(mode, start, end, first, count)

def glElementPointerAPPLE(type,  pointer):
    gl.glElementPointerAPPLE(type,  <void*>pointer)

def glMultiDrawElementArrayAPPLE(mode,  first, count, primcount):
    gl.glMultiDrawElementArrayAPPLE(mode,  first, count, primcount)

def glMultiDrawRangeElementArrayAPPLE(mode, start, end,  first, count, primcount):
    gl.glMultiDrawRangeElementArrayAPPLE(mode, start, end,  first, count, primcount)

#GL_APPLE_fence

GL_APPLE_fence = gl.GL_APPLE_fence

GL_DRAW_PIXELS_APPLE = gl.GL_DRAW_PIXELS_APPLE
GL_FENCE_APPLE = gl.GL_FENCE_APPLE

def glDeleteFencesAPPLE(n, fences):
    gl.glDeleteFencesAPPLE(n, fences)

def glFinishFenceAPPLE(fence):
    gl.glFinishFenceAPPLE(fence)

def glFinishObjectAPPLE(object, name):
    gl.glFinishObjectAPPLE(object, name)

def glGenFencesAPPLE(n, unsigned int fences):
    cdef unsigned int* fences1 = &fences
    gl.glGenFencesAPPLE(n, fences1)

def glIsFenceAPPLE(fence):
    return gl.glIsFenceAPPLE(fence)

def glSetFenceAPPLE(fence):
    gl.glSetFenceAPPLE(fence)

def glTestFenceAPPLE(fence):
    return gl.glTestFenceAPPLE(fence)

def glTestObjectAPPLE(object, name):
    return gl.glTestObjectAPPLE(object, name)

#GL_APPLE_float_pixels

GL_APPLE_float_pixels = gl.GL_APPLE_float_pixels

GL_HALF_APPLE = gl.GL_HALF_APPLE
GL_RGBA_FLOAT32_APPLE = gl.GL_RGBA_FLOAT32_APPLE
GL_RGB_FLOAT32_APPLE = gl.GL_RGB_FLOAT32_APPLE
GL_ALPHA_FLOAT32_APPLE = gl.GL_ALPHA_FLOAT32_APPLE
GL_INTENSITY_FLOAT32_APPLE = gl.GL_INTENSITY_FLOAT32_APPLE
GL_LUMINANCE_FLOAT32_APPLE = gl.GL_LUMINANCE_FLOAT32_APPLE
GL_LUMINANCE_ALPHA_FLOAT32_APPLE = gl.GL_LUMINANCE_ALPHA_FLOAT32_APPLE
GL_RGBA_FLOAT16_APPLE = gl.GL_RGBA_FLOAT16_APPLE
GL_RGB_FLOAT16_APPLE = gl.GL_RGB_FLOAT16_APPLE
GL_ALPHA_FLOAT16_APPLE = gl.GL_ALPHA_FLOAT16_APPLE
GL_INTENSITY_FLOAT16_APPLE = gl.GL_INTENSITY_FLOAT16_APPLE
GL_LUMINANCE_FLOAT16_APPLE = gl.GL_LUMINANCE_FLOAT16_APPLE
GL_LUMINANCE_ALPHA_FLOAT16_APPLE = gl.GL_LUMINANCE_ALPHA_FLOAT16_APPLE
GL_COLOR_FLOAT_APPLE = gl.GL_COLOR_FLOAT_APPLE

#GL_APPLE_flush_buffer_range

GL_APPLE_flush_buffer_range = gl.GL_APPLE_flush_buffer_range

GL_BUFFER_SERIALIZED_MODIFY_APPLE = gl.GL_BUFFER_SERIALIZED_MODIFY_APPLE
GL_BUFFER_FLUSHING_UNMAP_APPLE = gl.GL_BUFFER_FLUSHING_UNMAP_APPLE

def glBufferParameteriAPPLE(target, pname, param):
    gl.glBufferParameteriAPPLE(target, pname, param)

def glFlushMappedBufferRangeAPPLE(target, offset, size):
    gl.glFlushMappedBufferRangeAPPLE(target, offset, size)

#GL_APPLE_object_purgeable

GL_APPLE_object_purgeable = gl.GL_APPLE_object_purgeable

GL_BUFFER_OBJECT_APPLE = gl.GL_BUFFER_OBJECT_APPLE
GL_RELEASED_APPLE = gl.GL_RELEASED_APPLE
GL_VOLATILE_APPLE = gl.GL_VOLATILE_APPLE
GL_RETAINED_APPLE = gl.GL_RETAINED_APPLE
GL_UNDEFINED_APPLE = gl.GL_UNDEFINED_APPLE
GL_PURGEABLE_APPLE = gl.GL_PURGEABLE_APPLE

def glGetObjectParameterivAPPLE(objectType, name, pname, int params):
    cdef int* params1 = &params
    gl.glGetObjectParameterivAPPLE(objectType, name, pname, params1)

def glObjectPurgeableAPPLE(objectType, name, option):
    return gl.glObjectPurgeableAPPLE(objectType, name, option)

def glObjectUnpurgeableAPPLE(objectType, name, option):
    return gl.glObjectUnpurgeableAPPLE(objectType, name, option)

#GL_APPLE_pixel_buffer

GL_APPLE_pixel_buffer = gl.GL_APPLE_pixel_buffer

GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE = gl.GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE

#GL_APPLE_rgb_422

GL_APPLE_rgb_422 = gl.GL_APPLE_rgb_422

GL_UNSIGNED_SHORT_8_8_APPLE = gl.GL_UNSIGNED_SHORT_8_8_APPLE
GL_UNSIGNED_SHORT_8_8_REV_APPLE = gl.GL_UNSIGNED_SHORT_8_8_REV_APPLE
GL_RGB_422_APPLE = gl.GL_RGB_422_APPLE

#GL_APPLE_row_bytes

GL_APPLE_row_bytes = gl.GL_APPLE_row_bytes

GL_PACK_ROW_BYTES_APPLE = gl.GL_PACK_ROW_BYTES_APPLE
GL_UNPACK_ROW_BYTES_APPLE = gl.GL_UNPACK_ROW_BYTES_APPLE

#GL_APPLE_specular_vector

GL_APPLE_specular_vector = gl.GL_APPLE_specular_vector

GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE = gl.GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE

#GL_APPLE_texture_range

GL_APPLE_texture_range = gl.GL_APPLE_texture_range

GL_TEXTURE_RANGE_LENGTH_APPLE = gl.GL_TEXTURE_RANGE_LENGTH_APPLE
GL_TEXTURE_RANGE_POINTER_APPLE = gl.GL_TEXTURE_RANGE_POINTER_APPLE
GL_TEXTURE_STORAGE_HINT_APPLE = gl.GL_TEXTURE_STORAGE_HINT_APPLE
GL_STORAGE_PRIVATE_APPLE = gl.GL_STORAGE_PRIVATE_APPLE
GL_STORAGE_CACHED_APPLE = gl.GL_STORAGE_CACHED_APPLE
GL_STORAGE_SHARED_APPLE = gl.GL_STORAGE_SHARED_APPLE

def glGetTexParameterPointervAPPLE(target, pname, params):
    cdef void* t = <void*>params
    gl.glGetTexParameterPointervAPPLE(target, pname, &t)

def glTextureRangeAPPLE(target, length, pointer):
    gl.glTextureRangeAPPLE(target, length, <void*>pointer)

#GL_APPLE_transform_hint

GL_APPLE_transform_hint = gl.GL_APPLE_transform_hint

GL_TRANSFORM_HINT_APPLE = gl.GL_TRANSFORM_HINT_APPLE

#GL_APPLE_vertex_array_object

GL_APPLE_vertex_array_object = gl.GL_APPLE_vertex_array_object

GL_VERTEX_ARRAY_BINDING_APPLE = gl.GL_VERTEX_ARRAY_BINDING_APPLE

def glBindVertexArrayAPPLE(array):
    gl.glBindVertexArrayAPPLE(array)

def glDeleteVertexArraysAPPLE(n, arrays):
    gl.glDeleteVertexArraysAPPLE(n, arrays)

def glGenVertexArraysAPPLE(n, arrays):
    gl.glGenVertexArraysAPPLE(n, arrays)

def glIsVertexArrayAPPLE(array):
    return gl.glIsVertexArrayAPPLE(array)

#GL_APPLE_vertex_array_range

GL_APPLE_vertex_array_range = gl.GL_APPLE_vertex_array_range

GL_VERTEX_ARRAY_RANGE_APPLE = gl.GL_VERTEX_ARRAY_RANGE_APPLE
GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE = gl.GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE
GL_VERTEX_ARRAY_STORAGE_HINT_APPLE = gl.GL_VERTEX_ARRAY_STORAGE_HINT_APPLE
GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE = gl.GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE
GL_VERTEX_ARRAY_RANGE_POINTER_APPLE = gl.GL_VERTEX_ARRAY_RANGE_POINTER_APPLE
GL_STORAGE_CLIENT_APPLE = gl.GL_STORAGE_CLIENT_APPLE
GL_STORAGE_CACHED_APPLE = gl.GL_STORAGE_CACHED_APPLE
GL_STORAGE_SHARED_APPLE = gl.GL_STORAGE_SHARED_APPLE

def glFlushVertexArrayRangeAPPLE(length, pointer):
    gl.glFlushVertexArrayRangeAPPLE(length, <void*>pointer)

def glVertexArrayParameteriAPPLE(pname, param):
    gl.glVertexArrayParameteriAPPLE(pname, param)

def glVertexArrayRangeAPPLE(length, pointer):
    gl.glVertexArrayRangeAPPLE(length, <void*>pointer)

#GL_APPLE_vertex_program_evaluators

GL_APPLE_vertex_program_evaluators = gl.GL_APPLE_vertex_program_evaluators

GL_VERTEX_ATTRIB_MAP1_APPLE = gl.GL_VERTEX_ATTRIB_MAP1_APPLE
GL_VERTEX_ATTRIB_MAP2_APPLE = gl.GL_VERTEX_ATTRIB_MAP2_APPLE
GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE = gl.GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE
GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE = gl.GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE
GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE = gl.GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE
GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE = gl.GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE
GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE = gl.GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE
GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE = gl.GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE
GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE = gl.GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE
GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE = gl.GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE

def glDisableVertexAttribAPPLE(index, pname):
    gl.glDisableVertexAttribAPPLE(index, pname)

def glEnableVertexAttribAPPLE(index, pname):
    gl.glEnableVertexAttribAPPLE(index, pname)

def glIsVertexAttribEnabledAPPLE(index, pname):
    return gl.glIsVertexAttribEnabledAPPLE(index, pname)

def glMapVertexAttrib1dAPPLE(index, size, u1, u2, stride, order, double points):
    cdef double* points1 = &points
    gl.glMapVertexAttrib1dAPPLE(index, size, u1, u2, stride, order,  points1)

def glMapVertexAttrib1fAPPLE(index, size, u1, u2, stride, order, float points):
    cdef float* points1 = &points
    gl.glMapVertexAttrib1fAPPLE(index, size, u1, u2, stride, order,  points1)

def glMapVertexAttrib2dAPPLE(index, size, u1, u2, ustride, uorder, v1, v2, vstride, vorder, double points):
    cdef double* points1 = &points
    gl.glMapVertexAttrib2dAPPLE(index, size, u1, u2, ustride, uorder, v1, v2, vstride, vorder,  points1)

def glMapVertexAttrib2fAPPLE(index, size, u1, u2, ustride, uorder, v1, v2, vstride, vorder, float points):
    cdef float* points1 = &points
    gl.glMapVertexAttrib2fAPPLE(index, size, u1, u2, ustride, uorder, v1, v2, vstride, vorder,  points1)

#GL_APPLE_ycbcr_422

GL_APPLE_ycbcr_422 = gl.GL_APPLE_ycbcr_422

GL_YCBCR_422_APPLE = gl.GL_YCBCR_422_APPLE
GL_UNSIGNED_SHORT_8_8_APPLE = gl.GL_UNSIGNED_SHORT_8_8_APPLE
GL_UNSIGNED_SHORT_8_8_REV_APPLE = gl.GL_UNSIGNED_SHORT_8_8_REV_APPLE