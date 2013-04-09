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

#GL_ATIX_point_sprites

GL_ATIX_point_sprites = gl.GL_ATIX_point_sprites

GL_TEXTURE_POINT_MODE_ATIX = gl.GL_TEXTURE_POINT_MODE_ATIX
GL_TEXTURE_POINT_ONE_COORD_ATIX = gl.GL_TEXTURE_POINT_ONE_COORD_ATIX
GL_TEXTURE_POINT_SPRITE_ATIX = gl.GL_TEXTURE_POINT_SPRITE_ATIX
GL_POINT_SPRITE_CULL_MODE_ATIX = gl.GL_POINT_SPRITE_CULL_MODE_ATIX
GL_POINT_SPRITE_CULL_CENTER_ATIX = gl.GL_POINT_SPRITE_CULL_CENTER_ATIX
GL_POINT_SPRITE_CULL_CLIP_ATIX = gl.GL_POINT_SPRITE_CULL_CLIP_ATIX

#GL_ATIX_texture_env_combine3

GL_ATIX_texture_env_combine3 = gl.GL_ATIX_texture_env_combine3

GL_MODULATE_ADD_ATIX = gl.GL_MODULATE_ADD_ATIX
GL_MODULATE_SIGNED_ADD_ATIX = gl.GL_MODULATE_SIGNED_ADD_ATIX
GL_MODULATE_SUBTRACT_ATIX = gl.GL_MODULATE_SUBTRACT_ATIX

#GL_ATIX_texture_env_route

GL_ATIX_texture_env_route = gl.GL_ATIX_texture_env_route

GL_SECONDARY_COLOR_ATIX = gl.GL_SECONDARY_COLOR_ATIX
GL_TEXTURE_OUTPUT_RGB_ATIX = gl.GL_TEXTURE_OUTPUT_RGB_ATIX
GL_TEXTURE_OUTPUT_ALPHA_ATIX = gl.GL_TEXTURE_OUTPUT_ALPHA_ATIX

#GL_ATIX_vertex_shader_output_point_size

GL_ATIX_vertex_shader_output_point_size = gl.GL_ATIX_vertex_shader_output_point_size

GL_OUTPUT_POINT_SIZE_ATIX = gl.GL_OUTPUT_POINT_SIZE_ATIX

#GL_ATI_draw_buffers

GL_ATI_draw_buffers = gl.GL_ATI_draw_buffers

GL_MAX_DRAW_BUFFERS_ATI = gl.GL_MAX_DRAW_BUFFERS_ATI
GL_DRAW_BUFFER0_ATI = gl.GL_DRAW_BUFFER0_ATI
GL_DRAW_BUFFER1_ATI = gl.GL_DRAW_BUFFER1_ATI
GL_DRAW_BUFFER2_ATI = gl.GL_DRAW_BUFFER2_ATI
GL_DRAW_BUFFER3_ATI = gl.GL_DRAW_BUFFER3_ATI
GL_DRAW_BUFFER4_ATI = gl.GL_DRAW_BUFFER4_ATI
GL_DRAW_BUFFER5_ATI = gl.GL_DRAW_BUFFER5_ATI
GL_DRAW_BUFFER6_ATI = gl.GL_DRAW_BUFFER6_ATI
GL_DRAW_BUFFER7_ATI = gl.GL_DRAW_BUFFER7_ATI
GL_DRAW_BUFFER8_ATI = gl.GL_DRAW_BUFFER8_ATI
GL_DRAW_BUFFER9_ATI = gl.GL_DRAW_BUFFER9_ATI
GL_DRAW_BUFFER10_ATI = gl.GL_DRAW_BUFFER10_ATI
GL_DRAW_BUFFER11_ATI = gl.GL_DRAW_BUFFER11_ATI
GL_DRAW_BUFFER12_ATI = gl.GL_DRAW_BUFFER12_ATI
GL_DRAW_BUFFER13_ATI = gl.GL_DRAW_BUFFER13_ATI
GL_DRAW_BUFFER14_ATI = gl.GL_DRAW_BUFFER14_ATI
GL_DRAW_BUFFER15_ATI = gl.GL_DRAW_BUFFER15_ATI

def glDrawBuffersATI(n, bufs):
    gl.glDrawBuffersATI(n, bufs)

#GL_ATI_element_array

GL_ATI_element_array = gl.GL_ATI_element_array

GL_ELEMENT_ARRAY_ATI = gl.GL_ELEMENT_ARRAY_ATI
GL_ELEMENT_ARRAY_TYPE_ATI = gl.GL_ELEMENT_ARRAY_TYPE_ATI
GL_ELEMENT_ARRAY_POINTER_ATI = gl.GL_ELEMENT_ARRAY_POINTER_ATI

def glDrawElementArrayATI(mode, count):
    gl.glDrawElementArrayATI(mode, count)

def glDrawRangeElementArrayATI(mode, start, end, count):
    gl.glDrawRangeElementArrayATI(mode, start, end, count)

def glElementPointerATI(type,  pointer):
    gl.glElementPointerATI(type,  <void*>pointer)

#GL_ATI_envmap_bumpmap

GL_ATI_envmap_bumpmap = gl.GL_ATI_envmap_bumpmap

GL_BUMP_ROT_MATRIX_ATI = gl.GL_BUMP_ROT_MATRIX_ATI
GL_BUMP_ROT_MATRIX_SIZE_ATI = gl.GL_BUMP_ROT_MATRIX_SIZE_ATI
GL_BUMP_NUM_TEX_UNITS_ATI = gl.GL_BUMP_NUM_TEX_UNITS_ATI
GL_BUMP_TEX_UNITS_ATI = gl.GL_BUMP_TEX_UNITS_ATI
GL_DUDV_ATI = gl.GL_DUDV_ATI
GL_DU8DV8_ATI = gl.GL_DU8DV8_ATI
GL_BUMP_ENVMAP_ATI = gl.GL_BUMP_ENVMAP_ATI
GL_BUMP_TARGET_ATI = gl.GL_BUMP_TARGET_ATI

def glGetTexBumpParameterfvATI(pname, float param):
    cdef float* param1 = &param
    gl.glGetTexBumpParameterfvATI(pname, param1)

def glGetTexBumpParameterivATI(pname, int param):
    cdef int* param1 = &param
    gl.glGetTexBumpParameterivATI(pname, param1)

def glTexBumpParameterfvATI(pname, float param):
    cdef float* param1 = &param
    gl.glTexBumpParameterfvATI(pname, param1)

def glTexBumpParameterivATI(pname, int param):
    cdef int* param1 = &param
    gl.glTexBumpParameterivATI(pname, param1)

#GL_ATI_fragment_shader

GL_ATI_fragment_shader = gl.GL_ATI_fragment_shader

GL_RED_BIT_ATI = gl.GL_RED_BIT_ATI
GL_2X_BIT_ATI = gl.GL_2X_BIT_ATI
GL_4X_BIT_ATI = gl.GL_4X_BIT_ATI
GL_GREEN_BIT_ATI = gl.GL_GREEN_BIT_ATI
GL_COMP_BIT_ATI = gl.GL_COMP_BIT_ATI
GL_BLUE_BIT_ATI = gl.GL_BLUE_BIT_ATI
GL_8X_BIT_ATI = gl.GL_8X_BIT_ATI
GL_NEGATE_BIT_ATI = gl.GL_NEGATE_BIT_ATI
GL_BIAS_BIT_ATI = gl.GL_BIAS_BIT_ATI
GL_HALF_BIT_ATI = gl.GL_HALF_BIT_ATI
GL_QUARTER_BIT_ATI = gl.GL_QUARTER_BIT_ATI
GL_EIGHTH_BIT_ATI = gl.GL_EIGHTH_BIT_ATI
GL_SATURATE_BIT_ATI = gl.GL_SATURATE_BIT_ATI
GL_FRAGMENT_SHADER_ATI = gl.GL_FRAGMENT_SHADER_ATI
GL_REG_0_ATI = gl.GL_REG_0_ATI
GL_REG_1_ATI = gl.GL_REG_1_ATI
GL_REG_2_ATI = gl.GL_REG_2_ATI
GL_REG_3_ATI = gl.GL_REG_3_ATI
GL_REG_4_ATI = gl.GL_REG_4_ATI
GL_REG_5_ATI = gl.GL_REG_5_ATI
GL_CON_0_ATI = gl.GL_CON_0_ATI
GL_CON_1_ATI = gl.GL_CON_1_ATI
GL_CON_2_ATI = gl.GL_CON_2_ATI
GL_CON_3_ATI = gl.GL_CON_3_ATI
GL_CON_4_ATI = gl.GL_CON_4_ATI
GL_CON_5_ATI = gl.GL_CON_5_ATI
GL_CON_6_ATI = gl.GL_CON_6_ATI
GL_CON_7_ATI = gl.GL_CON_7_ATI
GL_MOV_ATI = gl.GL_MOV_ATI
GL_ADD_ATI = gl.GL_ADD_ATI
GL_MUL_ATI = gl.GL_MUL_ATI
GL_SUB_ATI = gl.GL_SUB_ATI
GL_DOT3_ATI = gl.GL_DOT3_ATI
GL_DOT4_ATI = gl.GL_DOT4_ATI
GL_MAD_ATI = gl.GL_MAD_ATI
GL_LERP_ATI = gl.GL_LERP_ATI
GL_CND_ATI = gl.GL_CND_ATI
GL_CND0_ATI = gl.GL_CND0_ATI
GL_DOT2_ADD_ATI = gl.GL_DOT2_ADD_ATI
GL_SECONDARY_INTERPOLATOR_ATI = gl.GL_SECONDARY_INTERPOLATOR_ATI
GL_NUM_FRAGMENT_REGISTERS_ATI = gl.GL_NUM_FRAGMENT_REGISTERS_ATI
GL_NUM_FRAGMENT_CONSTANTS_ATI = gl.GL_NUM_FRAGMENT_CONSTANTS_ATI
GL_NUM_PASSES_ATI = gl.GL_NUM_PASSES_ATI
GL_NUM_INSTRUCTIONS_PER_PASS_ATI = gl.GL_NUM_INSTRUCTIONS_PER_PASS_ATI
GL_NUM_INSTRUCTIONS_TOTAL_ATI = gl.GL_NUM_INSTRUCTIONS_TOTAL_ATI
GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = gl.GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI
GL_NUM_LOOPBACK_COMPONENTS_ATI = gl.GL_NUM_LOOPBACK_COMPONENTS_ATI
GL_COLOR_ALPHA_PAIRING_ATI = gl.GL_COLOR_ALPHA_PAIRING_ATI
GL_SWIZZLE_STR_ATI = gl.GL_SWIZZLE_STR_ATI
GL_SWIZZLE_STQ_ATI = gl.GL_SWIZZLE_STQ_ATI
GL_SWIZZLE_STR_DR_ATI = gl.GL_SWIZZLE_STR_DR_ATI
GL_SWIZZLE_STQ_DQ_ATI = gl.GL_SWIZZLE_STQ_DQ_ATI
GL_SWIZZLE_STRQ_ATI = gl.GL_SWIZZLE_STRQ_ATI
GL_SWIZZLE_STRQ_DQ_ATI = gl.GL_SWIZZLE_STRQ_DQ_ATI

def glAlphaFragmentOp1ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod):
    gl.glAlphaFragmentOp1ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod)

def glAlphaFragmentOp2ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod):
    gl.glAlphaFragmentOp2ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod)

def glAlphaFragmentOp3ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod, arg3, arg3Rep, arg3Mod):
    gl.glAlphaFragmentOp3ATI(op, dst, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod, arg3, arg3Rep, arg3Mod)

def glBeginFragmentShaderATI():
    gl.glBeginFragmentShaderATI()

def glBindFragmentShaderATI(id):
    gl.glBindFragmentShaderATI(id)

def glColorFragmentOp1ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod):
    gl.glColorFragmentOp1ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod)

def glColorFragmentOp2ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod):
    gl.glColorFragmentOp2ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod)

def glColorFragmentOp3ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod, arg3, arg3Rep, arg3Mod):
    gl.glColorFragmentOp3ATI(op, dst, dstMask, dstMod, arg1, arg1Rep, arg1Mod, arg2, arg2Rep, arg2Mod, arg3, arg3Rep, arg3Mod)

def glDeleteFragmentShaderATI(id):
    gl.glDeleteFragmentShaderATI(id)

def glEndFragmentShaderATI():
    gl.glEndFragmentShaderATI()

def glGenFragmentShadersATI(range):
    return gl.glGenFragmentShadersATI(range)

def glPassTexCoordATI(dst, coord, swizzle):
    gl.glPassTexCoordATI(dst, coord, swizzle)

def glSampleMapATI(dst, interp, swizzle):
    gl.glSampleMapATI(dst, interp, swizzle)

def glSetFragmentShaderConstantATI(dst, float value):
    cdef float* value1 = &value
    gl.glSetFragmentShaderConstantATI(dst,  value1)

#GL_ATI_map_object_buffer

GL_ATI_map_object_buffer = gl.GL_ATI_map_object_buffer

def glMapObjectBufferATI(buffer):
    gl.glMapObjectBufferATI(buffer)

def glUnmapObjectBufferATI(buffer):
    gl.glUnmapObjectBufferATI(buffer)

#GL_ATI_meminfo

GL_ATI_meminfo = gl.GL_ATI_meminfo

GL_VBO_FREE_MEMORY_ATI = gl.GL_VBO_FREE_MEMORY_ATI
GL_TEXTURE_FREE_MEMORY_ATI = gl.GL_TEXTURE_FREE_MEMORY_ATI
GL_RENDERBUFFER_FREE_MEMORY_ATI = gl.GL_RENDERBUFFER_FREE_MEMORY_ATI

#GL_ATI_pn_triangles

GL_ATI_pn_triangles = gl.GL_ATI_pn_triangles

GL_PN_TRIANGLES_ATI = gl.GL_PN_TRIANGLES_ATI
GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = gl.GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI
GL_PN_TRIANGLES_POINT_MODE_ATI = gl.GL_PN_TRIANGLES_POINT_MODE_ATI
GL_PN_TRIANGLES_NORMAL_MODE_ATI = gl.GL_PN_TRIANGLES_NORMAL_MODE_ATI
GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI = gl.GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI
GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI = gl.GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI
GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI = gl.GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI
GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = gl.GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI
GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = gl.GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI

def glPNTrianglesfATI(pname, param):
    gl.glPNTrianglesfATI(pname, param)

def glPNTrianglesiATI(pname, param):
    gl.glPNTrianglesiATI(pname, param)

#GL_ATI_separate_stencil

GL_ATI_separate_stencil = gl.GL_ATI_separate_stencil

GL_STENCIL_BACK_FUNC_ATI = gl.GL_STENCIL_BACK_FUNC_ATI
GL_STENCIL_BACK_FAIL_ATI = gl.GL_STENCIL_BACK_FAIL_ATI
GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI = gl.GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI
GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI = gl.GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI

def glStencilFuncSeparateATI(frontfunc, backfunc, ref, mask):
    gl.glStencilFuncSeparateATI(frontfunc, backfunc, ref, mask)

#GL_ATI_shader_texture_lod

GL_ATI_shader_texture_lod = gl.GL_ATI_shader_texture_lod

#GL_ATI_text_fragment_shader

GL_ATI_text_fragment_shader = gl.GL_ATI_text_fragment_shader

GL_TEXT_FRAGMENT_SHADER_ATI = gl.GL_TEXT_FRAGMENT_SHADER_ATI

#GL_ATI_texture_compression_3dc

GL_ATI_texture_compression_3dc = gl.GL_ATI_texture_compression_3dc

GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI = gl.GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI

#GL_ATI_texture_env_combine3

GL_ATI_texture_env_combine3 = gl.GL_ATI_texture_env_combine3

GL_MODULATE_ADD_ATI = gl.GL_MODULATE_ADD_ATI
GL_MODULATE_SIGNED_ADD_ATI = gl.GL_MODULATE_SIGNED_ADD_ATI
GL_MODULATE_SUBTRACT_ATI = gl.GL_MODULATE_SUBTRACT_ATI

#GL_ATI_texture_float

GL_ATI_texture_float = gl.GL_ATI_texture_float

GL_RGBA_FLOAT32_ATI = gl.GL_RGBA_FLOAT32_ATI
GL_RGB_FLOAT32_ATI = gl.GL_RGB_FLOAT32_ATI
GL_ALPHA_FLOAT32_ATI = gl.GL_ALPHA_FLOAT32_ATI
GL_INTENSITY_FLOAT32_ATI = gl.GL_INTENSITY_FLOAT32_ATI
GL_LUMINANCE_FLOAT32_ATI = gl.GL_LUMINANCE_FLOAT32_ATI
GL_LUMINANCE_ALPHA_FLOAT32_ATI = gl.GL_LUMINANCE_ALPHA_FLOAT32_ATI
GL_RGBA_FLOAT16_ATI = gl.GL_RGBA_FLOAT16_ATI
GL_RGB_FLOAT16_ATI = gl.GL_RGB_FLOAT16_ATI
GL_ALPHA_FLOAT16_ATI = gl.GL_ALPHA_FLOAT16_ATI
GL_INTENSITY_FLOAT16_ATI = gl.GL_INTENSITY_FLOAT16_ATI
GL_LUMINANCE_FLOAT16_ATI = gl.GL_LUMINANCE_FLOAT16_ATI
GL_LUMINANCE_ALPHA_FLOAT16_ATI = gl.GL_LUMINANCE_ALPHA_FLOAT16_ATI

#GL_ATI_texture_mirror_once

GL_ATI_texture_mirror_once = gl.GL_ATI_texture_mirror_once

GL_MIRROR_CLAMP_ATI = gl.GL_MIRROR_CLAMP_ATI
GL_MIRROR_CLAMP_TO_EDGE_ATI = gl.GL_MIRROR_CLAMP_TO_EDGE_ATI

#GL_ATI_vertex_array_object

GL_ATI_vertex_array_object = gl.GL_ATI_vertex_array_object

GL_STATIC_ATI = gl.GL_STATIC_ATI
GL_DYNAMIC_ATI = gl.GL_DYNAMIC_ATI
GL_PRESERVE_ATI = gl.GL_PRESERVE_ATI
GL_DISCARD_ATI = gl.GL_DISCARD_ATI
GL_OBJECT_BUFFER_SIZE_ATI = gl.GL_OBJECT_BUFFER_SIZE_ATI
GL_OBJECT_BUFFER_USAGE_ATI = gl.GL_OBJECT_BUFFER_USAGE_ATI
GL_ARRAY_OBJECT_BUFFER_ATI = gl.GL_ARRAY_OBJECT_BUFFER_ATI
GL_ARRAY_OBJECT_OFFSET_ATI = gl.GL_ARRAY_OBJECT_OFFSET_ATI

def glArrayObjectATI(array, size, type, stride, buffer, offset):
    gl.glArrayObjectATI(array, size, type, stride, buffer, offset)

def glFreeObjectBufferATI(buffer):
    gl.glFreeObjectBufferATI(buffer)

def glGetArrayObjectfvATI(array, pname, float params):
    cdef float* params1 = &params
    gl.glGetArrayObjectfvATI(array, pname, params1)

def glGetArrayObjectivATI(array, pname, int params):
    cdef int* params1 = &params
    gl.glGetArrayObjectivATI(array, pname, params1)

def glGetObjectBufferfvATI(buffer, pname, float params):
    cdef float* params1 = &params
    gl.glGetObjectBufferfvATI(buffer, pname, params1)

def glGetObjectBufferivATI(buffer, pname, int params):
    cdef int* params1 = &params
    gl.glGetObjectBufferivATI(buffer, pname, params1)

def glGetVariantArrayObjectfvATI(id, pname, float params):
    cdef float* params1 = &params
    gl.glGetVariantArrayObjectfvATI(id, pname, params1)

def glGetVariantArrayObjectivATI(id, pname, int params):
    cdef int* params1 = &params
    gl.glGetVariantArrayObjectivATI(id, pname, params1)

def glIsObjectBufferATI(buffer):
    return gl.glIsObjectBufferATI(buffer)

def glNewObjectBufferATI(size,  pointer, usage):
    return gl.glNewObjectBufferATI(size,  <void*>pointer, usage)

def glUpdateObjectBufferATI(buffer, offset, size,  pointer, preserve):
    gl.glUpdateObjectBufferATI(buffer, offset, size,  <void*>pointer, preserve)

def glVariantArrayObjectATI(id, type, stride, buffer, offset):
    gl.glVariantArrayObjectATI(id, type, stride, buffer, offset)

#GL_ATI_vertex_attrib_array_object

GL_ATI_vertex_attrib_array_object = gl.GL_ATI_vertex_attrib_array_object

def glGetVertexAttribArrayObjectfvATI(index, pname, float params):
    cdef float* params1 = &params
    gl.glGetVertexAttribArrayObjectfvATI(index, pname, params1)

def glGetVertexAttribArrayObjectivATI(index, pname, int params):
    cdef int* params1 = &params
    gl.glGetVertexAttribArrayObjectivATI(index, pname, params1)

def glVertexAttribArrayObjectATI(index, size, type, normalized, stride, buffer, offset):
    gl.glVertexAttribArrayObjectATI(index, size, type, normalized, stride, buffer, offset)

#GL_ATI_vertex_streams

GL_ATI_vertex_streams = gl.GL_ATI_vertex_streams

GL_MAX_VERTEX_STREAMS_ATI = gl.GL_MAX_VERTEX_STREAMS_ATI
GL_VERTEX_SOURCE_ATI = gl.GL_VERTEX_SOURCE_ATI
GL_VERTEX_STREAM0_ATI = gl.GL_VERTEX_STREAM0_ATI
GL_VERTEX_STREAM1_ATI = gl.GL_VERTEX_STREAM1_ATI
GL_VERTEX_STREAM2_ATI = gl.GL_VERTEX_STREAM2_ATI
GL_VERTEX_STREAM3_ATI = gl.GL_VERTEX_STREAM3_ATI
GL_VERTEX_STREAM4_ATI = gl.GL_VERTEX_STREAM4_ATI
GL_VERTEX_STREAM5_ATI = gl.GL_VERTEX_STREAM5_ATI
GL_VERTEX_STREAM6_ATI = gl.GL_VERTEX_STREAM6_ATI
GL_VERTEX_STREAM7_ATI = gl.GL_VERTEX_STREAM7_ATI

def glClientActiveVertexStreamATI(stream):
    gl.glClientActiveVertexStreamATI(stream)

def glNormalStream3bATI(stream, x, y, z):
    gl.glNormalStream3bATI(stream, x, y, z)

def glNormalStream3bvATI(stream, signed char v):
    cdef signed char* v1 = &v
    gl.glNormalStream3bvATI(stream, v1)

def glNormalStream3dATI(stream, x, y, z):
    gl.glNormalStream3dATI(stream, x, y, z)

def glNormalStream3dvATI(stream, double v):
    cdef double* v1 = &v
    gl.glNormalStream3dvATI(stream, v1)

def glNormalStream3fATI(stream, x, y, z):
    gl.glNormalStream3fATI(stream, x, y, z)

def glNormalStream3fvATI(stream, float v):
    cdef float* v1 = &v
    gl.glNormalStream3fvATI(stream, v1)

def glNormalStream3iATI(stream, x, y, z):
    gl.glNormalStream3iATI(stream, x, y, z)

def glNormalStream3ivATI(stream, int v):
    cdef int* v1 = &v
    gl.glNormalStream3ivATI(stream, v1)

def glNormalStream3sATI(stream, x, y, z):
    gl.glNormalStream3sATI(stream, x, y, z)

def glNormalStream3svATI(stream, short v):
    cdef short* v1 = &v
    gl.glNormalStream3svATI(stream, v1)

def glVertexBlendEnvfATI(pname, param):
    gl.glVertexBlendEnvfATI(pname, param)

def glVertexBlendEnviATI(pname, param):
    gl.glVertexBlendEnviATI(pname, param)

def glVertexStream2dATI(stream, x, y):
    gl.glVertexStream2dATI(stream, x, y)

def glVertexStream2dvATI(stream, double v):
    cdef double* v1 = &v
    gl.glVertexStream2dvATI(stream, v1)

def glVertexStream2fATI(stream, x, y):
    gl.glVertexStream2fATI(stream, x, y)

def glVertexStream2fvATI(stream, float v):
    cdef float* v1 = &v
    gl.glVertexStream2fvATI(stream, v1)

def glVertexStream2iATI(stream, x, y):
    gl.glVertexStream2iATI(stream, x, y)

def glVertexStream2ivATI(stream, int v):
    cdef int* v1 = &v
    gl.glVertexStream2ivATI(stream, v1)

def glVertexStream2sATI(stream, x, y):
    gl.glVertexStream2sATI(stream, x, y)

def glVertexStream2svATI(stream, short v):
    cdef short* v1 = &v
    gl.glVertexStream2svATI(stream, v1)

def glVertexStream3dATI(stream, x, y, z):
    gl.glVertexStream3dATI(stream, x, y, z)

def glVertexStream3dvATI(stream, double v):
    cdef double* v1 = &v
    gl.glVertexStream3dvATI(stream, v1)

def glVertexStream3fATI(stream, x, y, z):
    gl.glVertexStream3fATI(stream, x, y, z)

def glVertexStream3fvATI(stream, float v):
    cdef float* v1 = &v
    gl.glVertexStream3fvATI(stream, v1)

def glVertexStream3iATI(stream, x, y, z):
    gl.glVertexStream3iATI(stream, x, y, z)

def glVertexStream3ivATI(stream, int v):
    cdef int* v1 = &v
    gl.glVertexStream3ivATI(stream, v1)

def glVertexStream3sATI(stream, x, y, z):
    gl.glVertexStream3sATI(stream, x, y, z)

def glVertexStream3svATI(stream, short v):
    cdef short* v1 = &v
    gl.glVertexStream3svATI(stream, v1)

def glVertexStream4dATI(stream, x, y, z, w):
    gl.glVertexStream4dATI(stream, x, y, z, w)

def glVertexStream4dvATI(stream, double v):
    cdef double* v1 = &v
    gl.glVertexStream4dvATI(stream, v1)

def glVertexStream4fATI(stream, x, y, z, w):
    gl.glVertexStream4fATI(stream, x, y, z, w)

def glVertexStream4fvATI(stream, float v):
    cdef float* v1 = &v
    gl.glVertexStream4fvATI(stream, v1)

def glVertexStream4iATI(stream, x, y, z, w):
    gl.glVertexStream4iATI(stream, x, y, z, w)

def glVertexStream4ivATI(stream, int v):
    cdef int* v1 = &v
    gl.glVertexStream4ivATI(stream, v1)

def glVertexStream4sATI(stream, x, y, z, w):
    gl.glVertexStream4sATI(stream, x, y, z, w)

def glVertexStream4svATI(stream, short v):
    cdef short* v1 = &v
    gl.glVertexStream4svATI(stream, v1)