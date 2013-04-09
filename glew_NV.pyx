cimport gl
from libc.stdlib cimport malloc, free

# pyGLEW - Cython GLEW Wrapper for Python
#
# Copyright (C) 2012, Matthew Sitton
#               2012, Alex Marinescu
#
# LICENSED UNDER THE BSD LICENSE
#
# YOU SHOULD HAVE RECIEVED A COPY ALONG WITH THIS PROGRAM,
# SEE "LICENSE" FOR MORE INFORMATION.

#GL_NVX_gpu_memory_info

GL_NVX_gpu_memory_info = gl.GL_NVX_gpu_memory_info

GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX = gl.GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX
GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX = gl.GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX
GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX = gl.GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX
GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX = gl.GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX
GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX = gl.GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX

#GL_NV_blend_square

GL_NV_blend_square = gl.GL_NV_blend_square

#GL_NV_conditional_render

GL_NV_conditional_render = gl.GL_NV_conditional_render

GL_QUERY_WAIT_NV = gl.GL_QUERY_WAIT_NV
GL_QUERY_NO_WAIT_NV = gl.GL_QUERY_NO_WAIT_NV
GL_QUERY_BY_REGION_WAIT_NV = gl.GL_QUERY_BY_REGION_WAIT_NV
GL_QUERY_BY_REGION_NO_WAIT_NV = gl.GL_QUERY_BY_REGION_NO_WAIT_NV

def glBeginConditionalRenderNV(id, mode):
    gl.glBeginConditionalRenderNV(id, mode)

def glEndConditionalRenderNV():
    gl.glEndConditionalRenderNV()

#GL_NV_copy_depth_to_color

GL_NV_copy_depth_to_color = gl.GL_NV_copy_depth_to_color

GL_DEPTH_STENCIL_TO_RGBA_NV = gl.GL_DEPTH_STENCIL_TO_RGBA_NV
GL_DEPTH_STENCIL_TO_BGRA_NV = gl.GL_DEPTH_STENCIL_TO_BGRA_NV

#GL_NV_copy_image

GL_NV_copy_image = gl.GL_NV_copy_image

def glCopyImageSubDataNV(srcName, srcTarget, srcLevel, srcX, srcY, srcZ, dstName, dstTarget, dstLevel, dstX, dstY, dstZ, width, height, depth):
    gl.glCopyImageSubDataNV(srcName, srcTarget, srcLevel, srcX, srcY, srcZ, dstName, dstTarget, dstLevel, dstX, dstY, dstZ, width, height, depth)

#GL_NV_depth_buffer_float

GL_NV_depth_buffer_float = gl.GL_NV_depth_buffer_float

GL_DEPTH_COMPONENT32F_NV = gl.GL_DEPTH_COMPONENT32F_NV
GL_DEPTH32F_STENCIL8_NV = gl.GL_DEPTH32F_STENCIL8_NV
GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV = gl.GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV
GL_DEPTH_BUFFER_FLOAT_MODE_NV = gl.GL_DEPTH_BUFFER_FLOAT_MODE_NV

def glClearDepthdNV(depth):
    gl.glClearDepthdNV(depth)

def glDepthBoundsdNV(zmin, zmax):
    gl.glDepthBoundsdNV(zmin, zmax)

def glDepthRangedNV(zNear, zFar):
    gl.glDepthRangedNV(zNear, zFar)

#GL_NV_depth_clamp

GL_NV_depth_clamp = gl.GL_NV_depth_clamp

GL_DEPTH_CLAMP_NV = gl.GL_DEPTH_CLAMP_NV

#GL_NV_depth_range_unclamped

GL_NV_depth_range_unclamped = gl.GL_NV_depth_range_unclamped

GL_SAMPLE_COUNT_BITS_NV = gl.GL_SAMPLE_COUNT_BITS_NV
GL_CURRENT_SAMPLE_COUNT_QUERY_NV = gl.GL_CURRENT_SAMPLE_COUNT_QUERY_NV
GL_QUERY_RESULT_NV = gl.GL_QUERY_RESULT_NV
GL_QUERY_RESULT_AVAILABLE_NV = gl.GL_QUERY_RESULT_AVAILABLE_NV
GL_SAMPLE_COUNT_NV = gl.GL_SAMPLE_COUNT_NV

#GL_NV_evaluators

GL_NV_evaluators = gl.GL_NV_evaluators

GL_EVAL_2D_NV = gl.GL_EVAL_2D_NV
GL_EVAL_TRIANGULAR_2D_NV = gl.GL_EVAL_TRIANGULAR_2D_NV
GL_MAP_TESSELLATION_NV = gl.GL_MAP_TESSELLATION_NV
GL_MAP_ATTRIB_U_ORDER_NV = gl.GL_MAP_ATTRIB_U_ORDER_NV
GL_MAP_ATTRIB_V_ORDER_NV = gl.GL_MAP_ATTRIB_V_ORDER_NV
GL_EVAL_FRACTIONAL_TESSELLATION_NV = gl.GL_EVAL_FRACTIONAL_TESSELLATION_NV
GL_EVAL_VERTEX_ATTRIB0_NV = gl.GL_EVAL_VERTEX_ATTRIB0_NV
GL_EVAL_VERTEX_ATTRIB1_NV = gl.GL_EVAL_VERTEX_ATTRIB1_NV
GL_EVAL_VERTEX_ATTRIB2_NV = gl.GL_EVAL_VERTEX_ATTRIB2_NV
GL_EVAL_VERTEX_ATTRIB3_NV = gl.GL_EVAL_VERTEX_ATTRIB3_NV
GL_EVAL_VERTEX_ATTRIB4_NV = gl.GL_EVAL_VERTEX_ATTRIB4_NV
GL_EVAL_VERTEX_ATTRIB5_NV = gl.GL_EVAL_VERTEX_ATTRIB5_NV
GL_EVAL_VERTEX_ATTRIB6_NV = gl.GL_EVAL_VERTEX_ATTRIB6_NV
GL_EVAL_VERTEX_ATTRIB7_NV = gl.GL_EVAL_VERTEX_ATTRIB7_NV
GL_EVAL_VERTEX_ATTRIB8_NV = gl.GL_EVAL_VERTEX_ATTRIB8_NV
GL_EVAL_VERTEX_ATTRIB9_NV = gl.GL_EVAL_VERTEX_ATTRIB9_NV
GL_EVAL_VERTEX_ATTRIB10_NV = gl.GL_EVAL_VERTEX_ATTRIB10_NV
GL_EVAL_VERTEX_ATTRIB11_NV = gl.GL_EVAL_VERTEX_ATTRIB11_NV
GL_EVAL_VERTEX_ATTRIB12_NV = gl.GL_EVAL_VERTEX_ATTRIB12_NV
GL_EVAL_VERTEX_ATTRIB13_NV = gl.GL_EVAL_VERTEX_ATTRIB13_NV
GL_EVAL_VERTEX_ATTRIB14_NV = gl.GL_EVAL_VERTEX_ATTRIB14_NV
GL_EVAL_VERTEX_ATTRIB15_NV = gl.GL_EVAL_VERTEX_ATTRIB15_NV
GL_MAX_MAP_TESSELLATION_NV = gl.GL_MAX_MAP_TESSELLATION_NV
GL_MAX_RATIONAL_EVAL_ORDER_NV = gl.GL_MAX_RATIONAL_EVAL_ORDER_NV

def glEvalMapsNV(target, mode):
    gl.glEvalMapsNV(target, mode)

def glGetMapAttribParameterfvNV(target, index, pname, float params):
    cdef float* params1 = &params
    gl.glGetMapAttribParameterfvNV(target, index, pname, params1)

def glGetMapAttribParameterivNV(target, index, pname, int params):
    cdef int* params1 = &params
    gl.glGetMapAttribParameterivNV(target, index, pname, params1)

def glGetMapControlPointsNV(target, index, type, ustride, vstride, packed, points):
    gl.glGetMapControlPointsNV(target, index, type, ustride, vstride, packed, <void*>points)

def glGetMapParameterfvNV(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetMapParameterfvNV(target, pname, params1)

def glGetMapParameterivNV(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetMapParameterivNV(target, pname, params1)

def glMapControlPointsNV(target, index, type, ustride, vstride, uorder, vorder, packed,  points):
    gl.glMapControlPointsNV(target, index, type, ustride, vstride, uorder, vorder, packed,  <void*>points)

def glMapParameterfvNV(target, pname, float params):
    cdef float* params1 = &params
    gl.glMapParameterfvNV(target, pname,  params1)

def glMapParameterivNV(target, pname, int params):
    cdef int* params1 = &params
    gl.glMapParameterivNV(target, pname,  params1)

#GL_NV_explicit_multisample

GL_NV_explicit_multisample = gl.GL_NV_explicit_multisample

GL_SAMPLE_POSITION_NV = gl.GL_SAMPLE_POSITION_NV
GL_SAMPLE_MASK_NV = gl.GL_SAMPLE_MASK_NV
GL_SAMPLE_MASK_VALUE_NV = gl.GL_SAMPLE_MASK_VALUE_NV
GL_TEXTURE_BINDING_RENDERBUFFER_NV = gl.GL_TEXTURE_BINDING_RENDERBUFFER_NV
GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV = gl.GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV
GL_TEXTURE_RENDERBUFFER_NV = gl.GL_TEXTURE_RENDERBUFFER_NV
GL_SAMPLER_RENDERBUFFER_NV = gl.GL_SAMPLER_RENDERBUFFER_NV
GL_INT_SAMPLER_RENDERBUFFER_NV = gl.GL_INT_SAMPLER_RENDERBUFFER_NV
GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV = gl.GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV
GL_MAX_SAMPLE_MASK_WORDS_NV = gl.GL_MAX_SAMPLE_MASK_WORDS_NV

def glGetMultisamplefvNV(pname, index, float val):
    cdef float* val1 = &val
    gl.glGetMultisamplefvNV(pname, index, val1)

def glSampleMaskIndexedNV(index, mask):
    gl.glSampleMaskIndexedNV(index, mask)

def glTexRenderbufferNV(target, renderbuffer):
    gl.glTexRenderbufferNV(target, renderbuffer)

#GL_NV_fence

GL_NV_fence = gl.GL_NV_fence

GL_ALL_COMPLETED_NV = gl.GL_ALL_COMPLETED_NV
GL_FENCE_STATUS_NV = gl.GL_FENCE_STATUS_NV
GL_FENCE_CONDITION_NV = gl.GL_FENCE_CONDITION_NV

def glDeleteFencesNV(n, fences):
    gl.glDeleteFencesNV(n, fences)

def glFinishFenceNV(fence):
    gl.glFinishFenceNV(fence)

def glGenFencesNV(n, unsigned int fences):
    cdef unsigned int* fences1 = &fences
    gl.glGenFencesNV(n, fences1)

def glGetFenceivNV(fence, pname, int params):
    cdef int* params1 = &params
    gl.glGetFenceivNV(fence, pname, params1)

def glIsFenceNV(fence):
    return gl.glIsFenceNV(fence)

def glSetFenceNV(fence, condition):
    gl.glSetFenceNV(fence, condition)

def glTestFenceNV(fence):
    return gl.glTestFenceNV(fence)

#GL_NV_float_buffer

GL_NV_float_buffer = gl.GL_NV_float_buffer

GL_FLOAT_R_NV = gl.GL_FLOAT_R_NV
GL_FLOAT_RG_NV = gl.GL_FLOAT_RG_NV
GL_FLOAT_RGB_NV = gl.GL_FLOAT_RGB_NV
GL_FLOAT_RGBA_NV = gl.GL_FLOAT_RGBA_NV
GL_FLOAT_R16_NV = gl.GL_FLOAT_R16_NV
GL_FLOAT_R32_NV = gl.GL_FLOAT_R32_NV
GL_FLOAT_RG16_NV = gl.GL_FLOAT_RG16_NV
GL_FLOAT_RG32_NV = gl.GL_FLOAT_RG32_NV
GL_FLOAT_RGB16_NV = gl.GL_FLOAT_RGB16_NV
GL_FLOAT_RGB32_NV = gl.GL_FLOAT_RGB32_NV
GL_FLOAT_RGBA16_NV = gl.GL_FLOAT_RGBA16_NV
GL_FLOAT_RGBA32_NV = gl.GL_FLOAT_RGBA32_NV
GL_TEXTURE_FLOAT_COMPONENTS_NV = gl.GL_TEXTURE_FLOAT_COMPONENTS_NV
GL_FLOAT_CLEAR_COLOR_VALUE_NV = gl.GL_FLOAT_CLEAR_COLOR_VALUE_NV
GL_FLOAT_RGBA_MODE_NV = gl.GL_FLOAT_RGBA_MODE_NV

#GL_NV_fog_distance

GL_NV_fog_distance = gl.GL_NV_fog_distance

GL_FOG_DISTANCE_MODE_NV = gl.GL_FOG_DISTANCE_MODE_NV
GL_EYE_RADIAL_NV = gl.GL_EYE_RADIAL_NV
GL_EYE_PLANE_ABSOLUTE_NV = gl.GL_EYE_PLANE_ABSOLUTE_NV

#GL_NV_fragment_program

GL_NV_fragment_program = gl.GL_NV_fragment_program

GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV = gl.GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV
GL_FRAGMENT_PROGRAM_NV = gl.GL_FRAGMENT_PROGRAM_NV
GL_MAX_TEXTURE_COORDS_NV = gl.GL_MAX_TEXTURE_COORDS_NV
GL_MAX_TEXTURE_IMAGE_UNITS_NV = gl.GL_MAX_TEXTURE_IMAGE_UNITS_NV
GL_FRAGMENT_PROGRAM_BINDING_NV = gl.GL_FRAGMENT_PROGRAM_BINDING_NV
GL_PROGRAM_ERROR_STRING_NV = gl.GL_PROGRAM_ERROR_STRING_NV

def glGetProgramNamedParameterdvNV(id, len,  name, double params):
    cdef double* params1 = &params
    gl.glGetProgramNamedParameterdvNV(id, len,  name, params1)

def glGetProgramNamedParameterfvNV(id, len,  name, float params):
    cdef float* params1 = &params
    gl.glGetProgramNamedParameterfvNV(id, len,  name, params1)

def glProgramNamedParameter4dNV(id, len,  name, x, y, z, w):
    gl.glProgramNamedParameter4dNV(id, len,  name, x, y, z, w)

def glProgramNamedParameter4dvNV(id, len,  name, v):
   
    cdef int size = len(v)
    
    cdef double* holder = <double*>malloc(size * sizeof(double*))
    
    for i, a in enumerate(v):
        holder[i] = a
        
    gl.glProgramNamedParameter4dvNV(id, len,  name, holder)
    
    free(holder)

def glProgramNamedParameter4fNV(id, len,  name, x, y, z, w):
    gl.glProgramNamedParameter4fNV(id, len,  name, x, y, z, w)

def glProgramNamedParameter4fvNV(id, len,  name, v):

    cdef int size = len(v)
    
    cdef float * holder = <float*>malloc(size * sizeof(float*))
    
    for i, a in enumerate(v):
        holder[i] = a
        
    gl.glProgramNamedParameter4fvNV(id, len,  name, holder)
    
    free(holder)

#GL_NV_fragment_program2

GL_NV_fragment_program2 = gl.GL_NV_fragment_program2

GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV = gl.GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
GL_MAX_PROGRAM_CALL_DEPTH_NV = gl.GL_MAX_PROGRAM_CALL_DEPTH_NV
GL_MAX_PROGRAM_IF_DEPTH_NV = gl.GL_MAX_PROGRAM_IF_DEPTH_NV
GL_MAX_PROGRAM_LOOP_DEPTH_NV = gl.GL_MAX_PROGRAM_LOOP_DEPTH_NV
GL_MAX_PROGRAM_LOOP_COUNT_NV = gl.GL_MAX_PROGRAM_LOOP_COUNT_NV

#GL_NV_fragment_program4

GL_NV_fragment_program4 = gl.GL_NV_fragment_program4

#GL_NV_fragment_program_option

GL_NV_fragment_program_option = gl.GL_NV_fragment_program_option

#GL_NV_framebuffer_multisample_coverage

GL_NV_framebuffer_multisample_coverage = gl.GL_NV_framebuffer_multisample_coverage

GL_RENDERBUFFER_COVERAGE_SAMPLES_NV = gl.GL_RENDERBUFFER_COVERAGE_SAMPLES_NV
GL_RENDERBUFFER_COLOR_SAMPLES_NV = gl.GL_RENDERBUFFER_COLOR_SAMPLES_NV
GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV = gl.GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV
GL_MULTISAMPLE_COVERAGE_MODES_NV = gl.GL_MULTISAMPLE_COVERAGE_MODES_NV

def glRenderbufferStorageMultisampleCoverageNV(target, coverageSamples, colorSamples, internalformat, width, height):
    gl.glRenderbufferStorageMultisampleCoverageNV(target, coverageSamples, colorSamples, internalformat, width, height)

#GL_NV_geometry_program4

GL_NV_geometry_program4 = gl.GL_NV_geometry_program4

GL_GEOMETRY_PROGRAM_NV = gl.GL_GEOMETRY_PROGRAM_NV
GL_MAX_PROGRAM_OUTPUT_VERTICES_NV = gl.GL_MAX_PROGRAM_OUTPUT_VERTICES_NV
GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV = gl.GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV

def glProgramVertexLimitNV(target, limit):
    gl.glProgramVertexLimitNV(target, limit)

#GL_NV_geometry_shader4

GL_NV_geometry_shader4 = gl.GL_NV_geometry_shader4

#GL_NV_gpu_program4

GL_NV_gpu_program4 = gl.GL_NV_gpu_program4

GL_MIN_PROGRAM_TEXEL_OFFSET_NV = gl.GL_MIN_PROGRAM_TEXEL_OFFSET_NV
GL_MAX_PROGRAM_TEXEL_OFFSET_NV = gl.GL_MAX_PROGRAM_TEXEL_OFFSET_NV
GL_PROGRAM_ATTRIB_COMPONENTS_NV = gl.GL_PROGRAM_ATTRIB_COMPONENTS_NV
GL_PROGRAM_RESULT_COMPONENTS_NV = gl.GL_PROGRAM_RESULT_COMPONENTS_NV
GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV = gl.GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV
GL_MAX_PROGRAM_RESULT_COMPONENTS_NV = gl.GL_MAX_PROGRAM_RESULT_COMPONENTS_NV
GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV = gl.GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV
GL_MAX_PROGRAM_GENERIC_RESULTS_NV = gl.GL_MAX_PROGRAM_GENERIC_RESULTS_NV

def glProgramEnvParameterI4iNV(target, index, x, y, z, w):
    gl.glProgramEnvParameterI4iNV(target, index, x, y, z, w)

def glProgramEnvParameterI4ivNV(target, index, int params):
    cdef int* params1 = &params
    gl.glProgramEnvParameterI4ivNV(target, index, params1)

def glProgramEnvParameterI4uiNV(target, index, x, y, z, w):
    gl.glProgramEnvParameterI4uiNV(target, index, x, y, z, w)

def glProgramEnvParameterI4uivNV(target, index, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glProgramEnvParameterI4uivNV(target, index, params1)

def glProgramEnvParametersI4ivNV(target, index, count, int params):
    cdef int* params1 = &params
    gl.glProgramEnvParametersI4ivNV(target, index, count, params1)

def glProgramEnvParametersI4uivNV(target, index, count, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glProgramEnvParametersI4uivNV(target, index, count, params1)

def glProgramLocalParameterI4iNV(target, index, x, y, z, w):
    gl.glProgramLocalParameterI4iNV(target, index, x, y, z, w)

def glProgramLocalParameterI4ivNV(target, index, int params):
    cdef int* params1 = &params
    gl.glProgramLocalParameterI4ivNV(target, index, params1)

def glProgramLocalParameterI4uiNV(target, index, x, y, z, w):
    gl.glProgramLocalParameterI4uiNV(target, index, x, y, z, w)

def glProgramLocalParameterI4uivNV(target, index, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glProgramLocalParameterI4uivNV(target, index, params1)

def glProgramLocalParametersI4ivNV(target, index, count, int params):
    cdef int* params1 = &params
    gl.glProgramLocalParametersI4ivNV(target, index, count, params1)

def glProgramLocalParametersI4uivNV(target, index, count, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glProgramLocalParametersI4uivNV(target, index, count, params1)

#GL_NV_gpu_program5

GL_NV_gpu_program5 = gl.GL_NV_gpu_program5

GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV = gl.GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV
GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV = gl.GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV
GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV = gl.GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV
GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV = gl.GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV
GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV = gl.GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV
GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV = gl.GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV

#GL_NV_gpu_program_fp64

GL_NV_gpu_program_fp64 = gl.GL_NV_gpu_program_fp64

#GL_NV_gpu_shader5

GL_NV_gpu_shader5 = gl.GL_NV_gpu_shader5

GL_INT64_NV = gl.GL_INT64_NV
GL_UNSIGNED_INT64_NV = gl.GL_UNSIGNED_INT64_NV
GL_INT8_NV = gl.GL_INT8_NV
GL_INT8_VEC2_NV = gl.GL_INT8_VEC2_NV
GL_INT8_VEC3_NV = gl.GL_INT8_VEC3_NV
GL_INT8_VEC4_NV = gl.GL_INT8_VEC4_NV
GL_INT16_NV = gl.GL_INT16_NV
GL_INT16_VEC2_NV = gl.GL_INT16_VEC2_NV
GL_INT16_VEC3_NV = gl.GL_INT16_VEC3_NV
GL_INT16_VEC4_NV = gl.GL_INT16_VEC4_NV
GL_INT64_VEC2_NV = gl.GL_INT64_VEC2_NV
GL_INT64_VEC3_NV = gl.GL_INT64_VEC3_NV
GL_INT64_VEC4_NV = gl.GL_INT64_VEC4_NV
GL_UNSIGNED_INT8_NV = gl.GL_UNSIGNED_INT8_NV
GL_UNSIGNED_INT8_VEC2_NV = gl.GL_UNSIGNED_INT8_VEC2_NV
GL_UNSIGNED_INT8_VEC3_NV = gl.GL_UNSIGNED_INT8_VEC3_NV
GL_UNSIGNED_INT8_VEC4_NV = gl.GL_UNSIGNED_INT8_VEC4_NV
GL_UNSIGNED_INT16_NV = gl.GL_UNSIGNED_INT16_NV
GL_UNSIGNED_INT16_VEC2_NV = gl.GL_UNSIGNED_INT16_VEC2_NV
GL_UNSIGNED_INT16_VEC3_NV = gl.GL_UNSIGNED_INT16_VEC3_NV
GL_UNSIGNED_INT16_VEC4_NV = gl.GL_UNSIGNED_INT16_VEC4_NV
GL_UNSIGNED_INT64_VEC2_NV = gl.GL_UNSIGNED_INT64_VEC2_NV
GL_UNSIGNED_INT64_VEC3_NV = gl.GL_UNSIGNED_INT64_VEC3_NV
GL_UNSIGNED_INT64_VEC4_NV = gl.GL_UNSIGNED_INT64_VEC4_NV
GL_FLOAT16_NV = gl.GL_FLOAT16_NV
GL_FLOAT16_VEC2_NV = gl.GL_FLOAT16_VEC2_NV
GL_FLOAT16_VEC3_NV = gl.GL_FLOAT16_VEC3_NV
GL_FLOAT16_VEC4_NV = gl.GL_FLOAT16_VEC4_NV

def glGetUniformi64vNV(program, location, signed long long params):
    cdef signed long long* params1 = &params
    gl.glGetUniformi64vNV(program, location, params1)

def glGetUniformui64vNV(program, location, unsigned long long params):
    cdef unsigned long long* params1 = &params
    gl.glGetUniformui64vNV(program, location, params1)

def glProgramUniform1i64NV(program, location, x):
    gl.glProgramUniform1i64NV(program, location, x)

def glProgramUniform1i64vNV(program, location, count, signed long long value):
    cdef signed long long* value1 = &value
    gl.glProgramUniform1i64vNV(program, location, count, value1)

def glProgramUniform1ui64NV(program, location, x):
    gl.glProgramUniform1ui64NV(program, location, x)

def glProgramUniform1ui64vNV(program, location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glProgramUniform1ui64vNV(program, location, count, value1)

def glProgramUniform2i64NV(program, location, x, y):
    gl.glProgramUniform2i64NV(program, location, x, y)

def glProgramUniform2i64vNV(program, location, count, signed long long value):
    cdef signed long long* value1 = &value
    gl.glProgramUniform2i64vNV(program, location, count, value1)

def glProgramUniform2ui64NV(program, location, x, y):
    gl.glProgramUniform2ui64NV(program, location, x, y)

def glProgramUniform2ui64vNV(program, location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glProgramUniform2ui64vNV(program, location, count, value1)

def glProgramUniform3i64NV(program, location, x, y, z):
    gl.glProgramUniform3i64NV(program, location, x, y, z)

def glProgramUniform3i64vNV(program, location, count, signed long long value):
    cdef signed long long* value1 = &value
    gl.glProgramUniform3i64vNV(program, location, count, value1)

def glProgramUniform3ui64NV(program, location, x, y, z):
    gl.glProgramUniform3ui64NV(program, location, x, y, z)

def glProgramUniform3ui64vNV(program, location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glProgramUniform3ui64vNV(program, location, count, value1)

def glProgramUniform4i64NV(program, location, x, y, z, w):
    gl.glProgramUniform4i64NV(program, location, x, y, z, w)

def glProgramUniform4i64vNV(program, location, count, signed long long value):
    cdef signed long long* value1 = &value
    gl.glProgramUniform4i64vNV(program, location, count, value1)

def glProgramUniform4ui64NV(program, location, x, y, z, w):
    gl.glProgramUniform4ui64NV(program, location, x, y, z, w)

def glProgramUniform4ui64vNV(program, location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glProgramUniform4ui64vNV(program, location, count, value1)

def glUniform1i64NV(location, x):
    gl.glUniform1i64NV(location, x)

def glUniform1i64vNV(location, count, signed long long value):
    cdef signed long long* value1 = &value
    gl.glUniform1i64vNV(location, count, value1)

def glUniform1ui64NV(location, x):
    gl.glUniform1ui64NV(location, x)

def glUniform1ui64vNV(location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glUniform1ui64vNV(location, count, value1)

def glUniform2i64NV(location, x, y):
    gl.glUniform2i64NV(location, x, y)

def glUniform2i64vNV(location, count, signed long long value):
    cdef signed long long* value1 = &value
    gl.glUniform2i64vNV(location, count, value1)

def glUniform2ui64NV(location, x, y):
    gl.glUniform2ui64NV(location, x, y)

def glUniform2ui64vNV(location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glUniform2ui64vNV(location, count, value1)

def glUniform3i64NV(location, x, y, z):
    gl.glUniform3i64NV(location, x, y, z)

def glUniform3i64vNV(location, count, signed long long value):
    cdef signed long long* value1 = &value
    gl.glUniform3i64vNV(location, count, value1)

def glUniform3ui64NV(location, x, y, z):
    gl.glUniform3ui64NV(location, x, y, z)

def glUniform3ui64vNV(location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glUniform3ui64vNV(location, count, value1)

def glUniform4i64NV(location, x, y, z, w):
    gl.glUniform4i64NV(location, x, y, z, w)

def glUniform4i64vNV(location, count, signed long long value):
    cdef signed long long* value1 = &value
    gl.glUniform4i64vNV(location, count, value1)

def glUniform4ui64NV(location, x, y, z, w):
    gl.glUniform4ui64NV(location, x, y, z, w)

def glUniform4ui64vNV(location, count,unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glUniform4ui64vNV(location, count, value1)

#GL_NV_half_float

GL_NV_half_float = gl.GL_NV_half_float

GL_HALF_FLOAT_NV = gl.GL_HALF_FLOAT_NV

def glColor3hNV(red, green, blue):
    gl.glColor3hNV(red, green, blue)

def glColor3hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glColor3hvNV(v1)

def glColor4hNV(red, green, blue, alpha):
    gl.glColor4hNV(red, green, blue, alpha)

def glColor4hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glColor4hvNV(v1)

def glFogCoordhNV(fog):
    gl.glFogCoordhNV(fog)

def glFogCoordhvNV(unsigned short fog):
    cdef unsigned short* fog1 = &fog
    gl.glFogCoordhvNV(fog1)

def glMultiTexCoord1hNV(target, s):
    gl.glMultiTexCoord1hNV(target, s)

def glMultiTexCoord1hvNV(target, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glMultiTexCoord1hvNV(target, v1)

def glMultiTexCoord2hNV(target, s, t):
    gl.glMultiTexCoord2hNV(target, s, t)

def glMultiTexCoord2hvNV(target, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glMultiTexCoord2hvNV(target, v1)

def glMultiTexCoord3hNV(target, s, t, r):
    gl.glMultiTexCoord3hNV(target, s, t, r)

def glMultiTexCoord3hvNV(target, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glMultiTexCoord3hvNV(target, v1)

def glMultiTexCoord4hNV(target, s, t, r, q):
    gl.glMultiTexCoord4hNV(target, s, t, r, q)

def glMultiTexCoord4hvNV(target, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glMultiTexCoord4hvNV(target, v1)

def glNormal3hNV(nx, ny, nz):
    gl.glNormal3hNV(nx, ny, nz)

def glNormal3hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glNormal3hvNV(v1)

def glSecondaryColor3hNV(red, green, blue):
    gl.glSecondaryColor3hNV(red, green, blue)

def glSecondaryColor3hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glSecondaryColor3hvNV(v1)

def glTexCoord1hNV(s):
    gl.glTexCoord1hNV(s)

def glTexCoord1hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glTexCoord1hvNV(v1)

def glTexCoord2hNV(s, t):
    gl.glTexCoord2hNV(s, t)

def glTexCoord2hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glTexCoord2hvNV(v1)

def glTexCoord3hNV(s, t, r):
    gl.glTexCoord3hNV(s, t, r)

def glTexCoord3hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glTexCoord3hvNV(v1)

def glTexCoord4hNV(s, t, r, q):
    gl.glTexCoord4hNV(s, t, r, q)

def glTexCoord4hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glTexCoord4hvNV(v1)

def glVertex2hNV(x, y):
    gl.glVertex2hNV(x, y)

def glVertex2hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertex2hvNV(v1)

def glVertex3hNV(x, y, z):
    gl.glVertex3hNV(x, y, z)

def glVertex3hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertex3hvNV(v1)

def glVertex4hNV(x, y, z, w):
    gl.glVertex4hNV(x, y, z, w)

def glVertex4hvNV(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertex4hvNV(v1)

def glVertexAttrib1hNV(index, x):
    gl.glVertexAttrib1hNV(index, x)

def glVertexAttrib1hvNV(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttrib1hvNV(index, v1)

def glVertexAttrib2hNV(index, x, y):
    gl.glVertexAttrib2hNV(index, x, y)

def glVertexAttrib2hvNV(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttrib2hvNV(index, v1)

def glVertexAttrib3hNV(index, x, y, z):
    gl.glVertexAttrib3hNV(index, x, y, z)

def glVertexAttrib3hvNV(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttrib3hvNV(index, v1)

def glVertexAttrib4hNV(index, x, y, z, w):
    gl.glVertexAttrib4hNV(index, x, y, z, w)

def glVertexAttrib4hvNV(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttrib4hvNV(index, v1)

def glVertexAttribs1hvNV(index, n, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttribs1hvNV(index, n, v1)

def glVertexAttribs2hvNV(index, n, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttribs2hvNV(index, n, v1)

def glVertexAttribs3hvNV(index, n, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttribs3hvNV(index, n, v1)

def glVertexAttribs4hvNV(index, n, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttribs4hvNV(index, n, v1)

def glVertexWeighthNV(weight):
    gl.glVertexWeighthNV(weight)

def glVertexWeighthvNV(unsigned short weight):
    cdef unsigned short* weight1 = &weight
    gl.glVertexWeighthvNV(weight1)

#GL_NV_light_max_exponent

GL_NV_light_max_exponent = gl.GL_NV_light_max_exponent

GL_MAX_SHININESS_NV = gl.GL_MAX_SHININESS_NV
GL_MAX_SPOT_EXPONENT_NV = gl.GL_MAX_SPOT_EXPONENT_NV

#GL_NV_multisample_coverage

GL_NV_multisample_coverage = gl.GL_NV_multisample_coverage

GL_COVERAGE_SAMPLES_NV = gl.GL_COVERAGE_SAMPLES_NV
GL_COLOR_SAMPLES_NV = gl.GL_COLOR_SAMPLES_NV

#GL_NV_multisample_filter_hint

GL_NV_multisample_filter_hint = gl.GL_NV_multisample_filter_hint

GL_MULTISAMPLE_FILTER_HINT_NV = gl.GL_MULTISAMPLE_FILTER_HINT_NV

#GL_NV_occlusion_query

GL_NV_occlusion_query = gl.GL_NV_occlusion_query

GL_PIXEL_COUNTER_BITS_NV = gl.GL_PIXEL_COUNTER_BITS_NV
GL_CURRENT_OCCLUSION_QUERY_ID_NV = gl.GL_CURRENT_OCCLUSION_QUERY_ID_NV
GL_PIXEL_COUNT_NV = gl.GL_PIXEL_COUNT_NV
GL_PIXEL_COUNT_AVAILABLE_NV = gl.GL_PIXEL_COUNT_AVAILABLE_NV

def glBeginOcclusionQueryNV(id):
    gl.glBeginOcclusionQueryNV(id)

def glDeleteOcclusionQueriesNV(n, ids):
    gl.glDeleteOcclusionQueriesNV(n, ids)

def glEndOcclusionQueryNV():
    gl.glEndOcclusionQueryNV()

def glGenOcclusionQueriesNV(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glGenOcclusionQueriesNV(n, ids1)

def glGetOcclusionQueryivNV(id, pname, int params):
    cdef int* params1 = &params
    gl.glGetOcclusionQueryivNV(id, pname, params1)

def glGetOcclusionQueryuivNV(id, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetOcclusionQueryuivNV(id, pname, params1)

def glIsOcclusionQueryNV(id):
    return gl.glIsOcclusionQueryNV(id)

#GL_NV_packed_depth_stencil

GL_NV_packed_depth_stencil = gl.GL_NV_packed_depth_stencil

GL_DEPTH_STENCIL_NV = gl.GL_DEPTH_STENCIL_NV
GL_UNSIGNED_INT_24_8_NV = gl.GL_UNSIGNED_INT_24_8_NV

#GL_NV_parameter_buffer_object

GL_NV_parameter_buffer_object = gl.GL_NV_parameter_buffer_object

GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV = gl.GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV
GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV = gl.GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV
GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV = gl.GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV
GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV = gl.GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV
GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV = gl.GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV

def glProgramBufferParametersIivNV(target, buffer, index, count, int params):
    cdef int* params1 = &params
    gl.glProgramBufferParametersIivNV(target, buffer, index, count, params1)

def glProgramBufferParametersIuivNV(target, buffer, index, count, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glProgramBufferParametersIuivNV(target, buffer, index, count, params1)

def glProgramBufferParametersfvNV(target, buffer, index, count, float params):
    cdef float* params1 = &params
    gl.glProgramBufferParametersfvNV(target, buffer, index, count, params1)

#GL_NV_parameter_buffer_object2

GL_NV_parameter_buffer_object2 = gl.GL_NV_parameter_buffer_object2

#GL_NV_path_rendering

GL_NV_path_rendering = gl.GL_NV_path_rendering

GL_CLOSE_PATH_NV = gl.GL_CLOSE_PATH_NV
GL_BOLD_BIT_NV = gl.GL_BOLD_BIT_NV
GL_GLYPH_WIDTH_BIT_NV = gl.GL_GLYPH_WIDTH_BIT_NV
GL_MOVE_TO_NV = gl.GL_MOVE_TO_NV
GL_GLYPH_HEIGHT_BIT_NV = gl.GL_GLYPH_HEIGHT_BIT_NV
GL_ITALIC_BIT_NV = gl.GL_ITALIC_BIT_NV
GL_RELATIVE_MOVE_TO_NV = gl.GL_RELATIVE_MOVE_TO_NV
GL_LINE_TO_NV = gl.GL_LINE_TO_NV
GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV = gl.GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV
GL_RELATIVE_LINE_TO_NV = gl.GL_RELATIVE_LINE_TO_NV
GL_HORIZONTAL_LINE_TO_NV = gl.GL_HORIZONTAL_LINE_TO_NV
GL_RELATIVE_HORIZONTAL_LINE_TO_NV = gl.GL_RELATIVE_HORIZONTAL_LINE_TO_NV
GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV = gl.GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV
GL_VERTICAL_LINE_TO_NV = gl.GL_VERTICAL_LINE_TO_NV
GL_RELATIVE_VERTICAL_LINE_TO_NV = gl.GL_RELATIVE_VERTICAL_LINE_TO_NV
GL_QUADRATIC_CURVE_TO_NV = gl.GL_QUADRATIC_CURVE_TO_NV
GL_RELATIVE_QUADRATIC_CURVE_TO_NV = gl.GL_RELATIVE_QUADRATIC_CURVE_TO_NV
GL_CUBIC_CURVE_TO_NV = gl.GL_CUBIC_CURVE_TO_NV
GL_RELATIVE_CUBIC_CURVE_TO_NV = gl.GL_RELATIVE_CUBIC_CURVE_TO_NV
GL_SMOOTH_QUADRATIC_CURVE_TO_NV = gl.GL_SMOOTH_QUADRATIC_CURVE_TO_NV
GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV = gl.GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV
GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV = gl.GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV
GL_SMOOTH_CUBIC_CURVE_TO_NV = gl.GL_SMOOTH_CUBIC_CURVE_TO_NV
GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV = gl.GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV
GL_SMALL_CCW_ARC_TO_NV = gl.GL_SMALL_CCW_ARC_TO_NV
GL_RELATIVE_SMALL_CCW_ARC_TO_NV = gl.GL_RELATIVE_SMALL_CCW_ARC_TO_NV
GL_SMALL_CW_ARC_TO_NV = gl.GL_SMALL_CW_ARC_TO_NV
GL_RELATIVE_SMALL_CW_ARC_TO_NV = gl.GL_RELATIVE_SMALL_CW_ARC_TO_NV
GL_LARGE_CCW_ARC_TO_NV = gl.GL_LARGE_CCW_ARC_TO_NV
GL_RELATIVE_LARGE_CCW_ARC_TO_NV = gl.GL_RELATIVE_LARGE_CCW_ARC_TO_NV
GL_LARGE_CW_ARC_TO_NV = gl.GL_LARGE_CW_ARC_TO_NV
GL_RELATIVE_LARGE_CW_ARC_TO_NV = gl.GL_RELATIVE_LARGE_CW_ARC_TO_NV
GL_GLYPH_VERTICAL_BEARING_X_BIT_NV = gl.GL_GLYPH_VERTICAL_BEARING_X_BIT_NV
GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV = gl.GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV
GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV = gl.GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV
GL_CIRCULAR_CCW_ARC_TO_NV = gl.GL_CIRCULAR_CCW_ARC_TO_NV
GL_CIRCULAR_CW_ARC_TO_NV = gl.GL_CIRCULAR_CW_ARC_TO_NV
GL_CIRCULAR_TANGENT_ARC_TO_NV = gl.GL_CIRCULAR_TANGENT_ARC_TO_NV
GL_ARC_TO_NV = gl.GL_ARC_TO_NV
GL_RELATIVE_ARC_TO_NV = gl.GL_RELATIVE_ARC_TO_NV
GL_GLYPH_HAS_KERNING_NV = gl.GL_GLYPH_HAS_KERNING_NV
GL_PRIMARY_COLOR_NV = gl.GL_PRIMARY_COLOR_NV
GL_SECONDARY_COLOR_NV = gl.GL_SECONDARY_COLOR_NV
GL_PRIMARY_COLOR = gl.GL_PRIMARY_COLOR
GL_PATH_FORMAT_SVG_NV = gl.GL_PATH_FORMAT_SVG_NV
GL_PATH_FORMAT_PS_NV = gl.GL_PATH_FORMAT_PS_NV
GL_STANDARD_FONT_NAME_NV = gl.GL_STANDARD_FONT_NAME_NV
GL_SYSTEM_FONT_NAME_NV = gl.GL_SYSTEM_FONT_NAME_NV
GL_FILE_NAME_NV = gl.GL_FILE_NAME_NV
GL_PATH_STROKE_WIDTH_NV = gl.GL_PATH_STROKE_WIDTH_NV
GL_PATH_END_CAPS_NV = gl.GL_PATH_END_CAPS_NV
GL_PATH_INITIAL_END_CAP_NV = gl.GL_PATH_INITIAL_END_CAP_NV
GL_PATH_TERMINAL_END_CAP_NV = gl.GL_PATH_TERMINAL_END_CAP_NV
GL_PATH_JOIN_STYLE_NV = gl.GL_PATH_JOIN_STYLE_NV
GL_PATH_MITER_LIMIT_NV = gl.GL_PATH_MITER_LIMIT_NV
GL_PATH_DASH_CAPS_NV = gl.GL_PATH_DASH_CAPS_NV
GL_PATH_INITIAL_DASH_CAP_NV = gl.GL_PATH_INITIAL_DASH_CAP_NV
GL_PATH_TERMINAL_DASH_CAP_NV = gl.GL_PATH_TERMINAL_DASH_CAP_NV
GL_PATH_DASH_OFFSET_NV = gl.GL_PATH_DASH_OFFSET_NV
GL_PATH_CLIENT_LENGTH_NV = gl.GL_PATH_CLIENT_LENGTH_NV
GL_PATH_FILL_MODE_NV = gl.GL_PATH_FILL_MODE_NV
GL_PATH_FILL_MASK_NV = gl.GL_PATH_FILL_MASK_NV
GL_PATH_FILL_COVER_MODE_NV = gl.GL_PATH_FILL_COVER_MODE_NV
GL_PATH_STROKE_COVER_MODE_NV = gl.GL_PATH_STROKE_COVER_MODE_NV
GL_PATH_STROKE_MASK_NV = gl.GL_PATH_STROKE_MASK_NV
GL_COUNT_UP_NV = gl.GL_COUNT_UP_NV
GL_COUNT_DOWN_NV = gl.GL_COUNT_DOWN_NV
GL_PATH_OBJECT_BOUNDING_BOX_NV = gl.GL_PATH_OBJECT_BOUNDING_BOX_NV
GL_CONVEX_HULL_NV = gl.GL_CONVEX_HULL_NV
GL_BOUNDING_BOX_NV = gl.GL_BOUNDING_BOX_NV
GL_TRANSLATE_X_NV = gl.GL_TRANSLATE_X_NV
GL_TRANSLATE_Y_NV = gl.GL_TRANSLATE_Y_NV
GL_TRANSLATE_2D_NV = gl.GL_TRANSLATE_2D_NV
GL_TRANSLATE_3D_NV = gl.GL_TRANSLATE_3D_NV
GL_AFFINE_2D_NV = gl.GL_AFFINE_2D_NV
GL_AFFINE_3D_NV = gl.GL_AFFINE_3D_NV
GL_TRANSPOSE_AFFINE_2D_NV = gl.GL_TRANSPOSE_AFFINE_2D_NV
GL_TRANSPOSE_AFFINE_3D_NV = gl.GL_TRANSPOSE_AFFINE_3D_NV
GL_UTF8_NV = gl.GL_UTF8_NV
GL_UTF16_NV = gl.GL_UTF16_NV
GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV = gl.GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV
GL_PATH_COMMAND_COUNT_NV = gl.GL_PATH_COMMAND_COUNT_NV
GL_PATH_COORD_COUNT_NV = gl.GL_PATH_COORD_COUNT_NV
GL_PATH_DASH_ARRAY_COUNT_NV = gl.GL_PATH_DASH_ARRAY_COUNT_NV
GL_PATH_COMPUTED_LENGTH_NV = gl.GL_PATH_COMPUTED_LENGTH_NV
GL_PATH_FILL_BOUNDING_BOX_NV = gl.GL_PATH_FILL_BOUNDING_BOX_NV
GL_PATH_STROKE_BOUNDING_BOX_NV = gl.GL_PATH_STROKE_BOUNDING_BOX_NV
GL_SQUARE_NV = gl.GL_SQUARE_NV
GL_ROUND_NV = gl.GL_ROUND_NV
GL_TRIANGULAR_NV = gl.GL_TRIANGULAR_NV
GL_BEVEL_NV = gl.GL_BEVEL_NV
GL_MITER_REVERT_NV = gl.GL_MITER_REVERT_NV
GL_MITER_TRUNCATE_NV = gl.GL_MITER_TRUNCATE_NV
GL_SKIP_MISSING_GLYPH_NV = gl.GL_SKIP_MISSING_GLYPH_NV
GL_USE_MISSING_GLYPH_NV = gl.GL_USE_MISSING_GLYPH_NV
GL_PATH_ERROR_POSITION_NV = gl.GL_PATH_ERROR_POSITION_NV
GL_PATH_FOG_GEN_MODE_NV = gl.GL_PATH_FOG_GEN_MODE_NV
GL_ACCUM_ADJACENT_PAIRS_NV = gl.GL_ACCUM_ADJACENT_PAIRS_NV
GL_ADJACENT_PAIRS_NV = gl.GL_ADJACENT_PAIRS_NV
GL_FIRST_TO_REST_NV = gl.GL_FIRST_TO_REST_NV
GL_PATH_GEN_MODE_NV = gl.GL_PATH_GEN_MODE_NV
GL_PATH_GEN_COEFF_NV = gl.GL_PATH_GEN_COEFF_NV
GL_PATH_GEN_COLOR_FORMAT_NV = gl.GL_PATH_GEN_COLOR_FORMAT_NV
GL_PATH_GEN_COMPONENTS_NV = gl.GL_PATH_GEN_COMPONENTS_NV
GL_PATH_DASH_OFFSET_RESET_NV = gl.GL_PATH_DASH_OFFSET_RESET_NV
GL_MOVE_TO_RESETS_NV = gl.GL_MOVE_TO_RESETS_NV
GL_MOVE_TO_CONTINUES_NV = gl.GL_MOVE_TO_CONTINUES_NV
GL_PATH_STENCIL_FUNC_NV = gl.GL_PATH_STENCIL_FUNC_NV
GL_PATH_STENCIL_REF_NV = gl.GL_PATH_STENCIL_REF_NV
GL_PATH_STENCIL_VALUE_MASK_NV = gl.GL_PATH_STENCIL_VALUE_MASK_NV
GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV = gl.GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV
GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV = gl.GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV
GL_PATH_COVER_DEPTH_FUNC_NV = gl.GL_PATH_COVER_DEPTH_FUNC_NV
GL_FONT_X_MIN_BOUNDS_NV = gl.GL_FONT_X_MIN_BOUNDS_NV
GL_FONT_Y_MIN_BOUNDS_NV = gl.GL_FONT_Y_MIN_BOUNDS_NV
GL_FONT_X_MAX_BOUNDS_NV = gl.GL_FONT_X_MAX_BOUNDS_NV
GL_FONT_Y_MAX_BOUNDS_NV = gl.GL_FONT_Y_MAX_BOUNDS_NV
GL_FONT_UNITS_PER_EM_NV = gl.GL_FONT_UNITS_PER_EM_NV
GL_FONT_ASCENDER_NV = gl.GL_FONT_ASCENDER_NV
GL_FONT_DESCENDER_NV = gl.GL_FONT_DESCENDER_NV
GL_FONT_HEIGHT_NV = gl.GL_FONT_HEIGHT_NV
GL_FONT_MAX_ADVANCE_WIDTH_NV = gl.GL_FONT_MAX_ADVANCE_WIDTH_NV
GL_FONT_MAX_ADVANCE_HEIGHT_NV = gl.GL_FONT_MAX_ADVANCE_HEIGHT_NV
GL_FONT_UNDERLINE_POSITION_NV = gl.GL_FONT_UNDERLINE_POSITION_NV
GL_FONT_UNDERLINE_THICKNESS_NV = gl.GL_FONT_UNDERLINE_THICKNESS_NV
GL_FONT_HAS_KERNING_NV = gl.GL_FONT_HAS_KERNING_NV

def glCopyPathNV(resultPath, srcPath):
    gl.glCopyPathNV(resultPath, srcPath)

def glCoverFillPathInstancedNV(numPaths, pathNameType,  paths, pathBase, coverMode, transformType, float transformValues):
    cdef float* transformValues1 = &transformValues
    gl.glCoverFillPathInstancedNV(numPaths, pathNameType,  <void*>paths, pathBase, coverMode, transformType, transformValues1)

def glCoverFillPathNV(path, coverMode):
    gl.glCoverFillPathNV(path, coverMode)

def glCoverStrokePathInstancedNV(numPaths, pathNameType,  paths, pathBase, coverMode, transformType, float transformValues):
    cdef float* transformValues1 = &transformValues    
    gl.glCoverStrokePathInstancedNV(numPaths, pathNameType,  <void*>paths, pathBase, coverMode, transformType, transformValues1)

def glCoverStrokePathNV(name, coverMode):
    gl.glCoverStrokePathNV(name, coverMode)

def glDeletePathsNV(path, range):
    gl.glDeletePathsNV(path, range)

def glGenPathsNV(range):
    return gl.glGenPathsNV(range)

def glGetPathColorGenfvNV(color, pname, float value):
    cdef float* value1 = &value
    gl.glGetPathColorGenfvNV(color, pname, value1)

def glGetPathColorGenivNV(color, pname, int value):
    cdef int* value1 = &value
    gl.glGetPathColorGenivNV(color, pname, value1)

def glGetPathCommandsNV(name, unsigned char commands):
    cdef unsigned char* commands1 = &commands
    gl.glGetPathCommandsNV(name, commands1)

def glGetPathCoordsNV(name, float coords):
    cdef float* coords1 = &coords
    gl.glGetPathCoordsNV(name, coords1)

def glGetPathDashArrayNV(name, float dashArray):
    cdef float* dashArray1 = &dashArray
    gl.glGetPathDashArrayNV(name, dashArray1)

def glGetPathLengthNV(path, startSegment, numSegments):
    return gl.glGetPathLengthNV(path, startSegment, numSegments)

def glGetPathMetricRangeNV(metricQueryMask, fistPathName, numPaths, stride, float metrics):
    cdef float* metrics1 = &metrics
    gl.glGetPathMetricRangeNV(metricQueryMask, fistPathName, numPaths, stride, metrics1)

def glGetPathMetricsNV(metricQueryMask, numPaths, pathNameType,  paths, pathBase, stride, float metrics):
    cdef float* metrics1 = &metrics
    gl.glGetPathMetricsNV(metricQueryMask, numPaths, pathNameType,  <void*>paths, pathBase, stride, metrics1)

def glGetPathParameterfvNV(name, param, float value):
    cdef float* value1 = &value
    gl.glGetPathParameterfvNV(name, param, value1)

def glGetPathParameterivNV(name, param, int value):
    cdef int* value1 = &value
    gl.glGetPathParameterivNV(name, param, value1)

def glGetPathSpacingNV(pathListMode, numPaths, pathNameType,  paths, pathBase, advanceScale, kerningScale, transformType, float returnedSpacing):
    cdef float* returnedSpacing1 = &returnedSpacing
    gl.glGetPathSpacingNV(pathListMode, numPaths, pathNameType,  <void*>paths, pathBase, advanceScale, kerningScale, transformType, returnedSpacing1)

def glGetPathTexGenfvNV(texCoordSet, pname, float value):
    cdef float* value1 = &value
    gl.glGetPathTexGenfvNV(texCoordSet, pname, value1)

def glGetPathTexGenivNV(texCoordSet, pname, int value):
    cdef int* value1 = &value
    gl.glGetPathTexGenivNV(texCoordSet, pname, value1)

def glInterpolatePathsNV(resultPath, pathA, pathB, weight):
    gl.glInterpolatePathsNV(resultPath, pathA, pathB, weight)

def glIsPathNV(path):
    return gl.glIsPathNV(path)

def glIsPointInFillPathNV(path, mask, x, y):
    return gl.glIsPointInFillPathNV(path, mask, x, y)

def glIsPointInStrokePathNV(path, x, y):
    return gl.glIsPointInStrokePathNV(path, x, y)

def glPathColorGenNV(color, genMode, colorFormat, float coeffs):
    cdef float* coeffs1 = &coeffs
    gl.glPathColorGenNV(color, genMode, colorFormat,  coeffs1)

def glPathCommandsNV(path, numCommands, unsigned char commands, numCoords, coordType, coords):
    cdef unsigned char* commands1 = &commands
    gl.glPathCommandsNV(path, numCommands,  commands1, numCoords, coordType, <void*>coords)

def glPathCoordsNV(path, numCoords, coordType,  coords):
    gl.glPathCoordsNV(path, numCoords, coordType,  <void*>coords)

def glPathCoverDepthFuncNV(zfunc):
    gl.glPathCoverDepthFuncNV(zfunc)

def glPathDashArrayNV(path, dashCount, float dashArray):
    cdef float* dashArray1 = &dashArray
    gl.glPathDashArrayNV(path, dashCount,  dashArray1)

def glPathFogGenNV(genMode):
    gl.glPathFogGenNV(genMode)

def glPathGlyphRangeNV(firstPathName, fontTarget,  fontName, fontStyle, firstGlyph, numGlyphs, handleMissingGlyphs, pathParameterTemplate, emScale):
    gl.glPathGlyphRangeNV(firstPathName, fontTarget,  <void*>fontName, fontStyle, firstGlyph, numGlyphs, handleMissingGlyphs, pathParameterTemplate, emScale)

def glPathGlyphsNV(firstPathName, fontTarget,  fontName, fontStyle, numGlyphs, type, charcodes, handleMissingGlyphs, pathParameterTemplate, emScale):
    gl.glPathGlyphsNV(firstPathName, fontTarget,  <void*>fontName, fontStyle, numGlyphs, type, <void*>charcodes, handleMissingGlyphs, pathParameterTemplate, emScale)

def glPathParameterfNV(path, pname, value):
    gl.glPathParameterfNV(path, pname, value)

def glPathParameterfvNV(path, pname, float value):
    cdef float* value1 = &value
    gl.glPathParameterfvNV(path, pname,  value1)

def glPathParameteriNV(path, pname, value):
    gl.glPathParameteriNV(path, pname, value)

def glPathParameterivNV(path, pname, int value):
    cdef int* value1 = &value
    gl.glPathParameterivNV(path, pname,  value1)

def glPathStencilDepthOffsetNV(factor, units):
    gl.glPathStencilDepthOffsetNV(factor, units)

def glPathStencilFuncNV(func, ref, mask):
    gl.glPathStencilFuncNV(func, ref, mask)

def glPathStringNV(path, format, length,  pathString):
    gl.glPathStringNV(path, format, length,  <void*>pathString)

def glPathSubCommandsNV(path, commandStart, commandsToDelete, numCommands, unsigned char commands, numCoords, coordType, coords):
    cdef unsigned char* commands1 = &commands
    gl.glPathSubCommandsNV(path, commandStart, commandsToDelete, numCommands,  commands1, numCoords, coordType, <void*>coords)

def glPathSubCoordsNV(path, coordStart, numCoords, coordType,  coords):
    gl.glPathSubCoordsNV(path, coordStart, numCoords, coordType,  <void*>coords)

def glPathTexGenNV(texCoordSet, genMode, components, float coeffs):
    cdef float* coeffs1 = &coeffs
    gl.glPathTexGenNV(texCoordSet, genMode, components,  coeffs1)

def glPointAlongPathNV(path, startSegment, numSegments, distance, float x, float y, float tangentX, float tangentY):
    cdef float* x1 = &x
    cdef float* y1 = &y
    cdef float* tangentX1 = &tangentX
    cdef float* tangentY1 = &tangentY
    return gl.glPointAlongPathNV(path, startSegment, numSegments, distance, x1, y1, tangentX1, tangentY1)

def glStencilFillPathInstancedNV(numPaths, pathNameType,  paths, pathBase, fillMode, mask, transformType, float transformValues):
    cdef float* transformValues1 = &transformValues
    gl.glStencilFillPathInstancedNV(numPaths, pathNameType,  <void*>paths, pathBase, fillMode, mask, transformType, transformValues1)

def glStencilFillPathNV(path, fillMode, mask):
    gl.glStencilFillPathNV(path, fillMode, mask)

def glStencilStrokePathInstancedNV(numPaths, pathNameType,  paths, pathBase, reference, mask, transformType, float transformValues):
    cdef float* transformValues1 = &transformValues
    gl.glStencilStrokePathInstancedNV(numPaths, pathNameType,  <void*>paths, pathBase, reference, mask, transformType, transformValues1)

def glStencilStrokePathNV(path, reference, mask):
    gl.glStencilStrokePathNV(path, reference, mask)

def glTransformPathNV(resultPath, srcPath, transformType, float transformValues):
    cdef float* transformValues1 = &transformValues
    gl.glTransformPathNV(resultPath, srcPath, transformType,  transformValues1)

def glWeightPathsNV(resultPath, numPaths, paths, weights):

    cdef int size = len(paths)
    cdef int size1 = len(weights)
    
    cdef int* holder1 = <int*>malloc(size * sizeof(int*))
    cdef float* holder2 = <float*>malloc(size1 * sizeof(float*))
    
    for i, v in enumerate(paths):
        holder1[i] = v
    
    for i, v in enumerate(weights):
        holder2[i] = v

    gl.glWeightPathsNV(resultPath, numPaths, holder1, holder2)
    
    free(holder1)
    free(holder2)

#GL_NV_pixel_data_range

GL_NV_pixel_data_range = gl.GL_NV_pixel_data_range

GL_WRITE_PIXEL_DATA_RANGE_NV = gl.GL_WRITE_PIXEL_DATA_RANGE_NV
GL_READ_PIXEL_DATA_RANGE_NV = gl.GL_READ_PIXEL_DATA_RANGE_NV
GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV = gl.GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV
GL_READ_PIXEL_DATA_RANGE_LENGTH_NV = gl.GL_READ_PIXEL_DATA_RANGE_LENGTH_NV
GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV = gl.GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV
GL_READ_PIXEL_DATA_RANGE_POINTER_NV = gl.GL_READ_PIXEL_DATA_RANGE_POINTER_NV

def glFlushPixelDataRangeNV(target):
    gl.glFlushPixelDataRangeNV(target)

def glPixelDataRangeNV(target, length, pointer):
    gl.glPixelDataRangeNV(target, length, <void*>pointer)

#GL_NV_point_sprite

GL_NV_point_sprite = gl.GL_NV_point_sprite

GL_POINT_SPRITE_NV = gl.GL_POINT_SPRITE_NV
GL_COORD_REPLACE_NV = gl.GL_COORD_REPLACE_NV
GL_POINT_SPRITE_R_MODE_NV = gl.GL_POINT_SPRITE_R_MODE_NV

def glPointParameteriNV(pname, param):
    gl.glPointParameteriNV(pname, param)

def glPointParameterivNV(pname, int params):
    cdef int* params1 = &params
    gl.glPointParameterivNV(pname,  params1)

#GL_NV_present_video

GL_NV_present_video = gl.GL_NV_present_video

GL_FRAME_NV = gl.GL_FRAME_NV
GL_FIELDS_NV = gl.GL_FIELDS_NV
GL_CURRENT_TIME_NV = gl.GL_CURRENT_TIME_NV
GL_NUM_FILL_STREAMS_NV = gl.GL_NUM_FILL_STREAMS_NV
GL_PRESENT_TIME_NV = gl.GL_PRESENT_TIME_NV
GL_PRESENT_DURATION_NV = gl.GL_PRESENT_DURATION_NV

def glGetVideoi64vNV(video_slot, pname, signed long long params):
    cdef signed long long* params1 = &params
    gl.glGetVideoi64vNV(video_slot, pname, params1)

def glGetVideoivNV(video_slot, pname, int params):
    cdef int* params1 = &params
    gl.glGetVideoivNV(video_slot, pname, params1)

def glGetVideoui64vNV(video_slot, pname, unsigned long long params):
    cdef unsigned long long* params1 = &params
    gl.glGetVideoui64vNV(video_slot, pname, params1)

def glGetVideouivNV(video_slot, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetVideouivNV(video_slot, pname, params1)

def glPresentFrameDualFillNV(video_slot, minPresentTime, beginPresentTimeId, presentDurationId, type, target0, fill0, target1, fill1, target2, fill2, target3, fill3):
    gl.glPresentFrameDualFillNV(video_slot, minPresentTime, beginPresentTimeId, presentDurationId, type, target0, fill0, target1, fill1, target2, fill2, target3, fill3)

def glPresentFrameKeyedNV(video_slot, minPresentTime, beginPresentTimeId, presentDurationId, type, target0, fill0, key0, target1, fill1, key1):
    gl.glPresentFrameKeyedNV(video_slot, minPresentTime, beginPresentTimeId, presentDurationId, type, target0, fill0, key0, target1, fill1, key1)

#GL_NV_primitive_restart

GL_NV_primitive_restart = gl.GL_NV_primitive_restart

GL_PRIMITIVE_RESTART_NV = gl.GL_PRIMITIVE_RESTART_NV
GL_PRIMITIVE_RESTART_INDEX_NV = gl.GL_PRIMITIVE_RESTART_INDEX_NV

def glPrimitiveRestartIndexNV(index):
    gl.glPrimitiveRestartIndexNV(index)

def glPrimitiveRestartNV():
    gl.glPrimitiveRestartNV()

#GL_NV_register_combiners

GL_NV_register_combiners = gl.GL_NV_register_combiners

GL_REGISTER_COMBINERS_NV = gl.GL_REGISTER_COMBINERS_NV
GL_VARIABLE_A_NV = gl.GL_VARIABLE_A_NV
GL_VARIABLE_B_NV = gl.GL_VARIABLE_B_NV
GL_VARIABLE_C_NV = gl.GL_VARIABLE_C_NV
GL_VARIABLE_D_NV = gl.GL_VARIABLE_D_NV
GL_VARIABLE_E_NV = gl.GL_VARIABLE_E_NV
GL_VARIABLE_F_NV = gl.GL_VARIABLE_F_NV
GL_VARIABLE_G_NV = gl.GL_VARIABLE_G_NV
GL_CONSTANT_COLOR0_NV = gl.GL_CONSTANT_COLOR0_NV
GL_CONSTANT_COLOR1_NV = gl.GL_CONSTANT_COLOR1_NV
GL_PRIMARY_COLOR_NV = gl.GL_PRIMARY_COLOR_NV
GL_SECONDARY_COLOR_NV = gl.GL_SECONDARY_COLOR_NV
GL_SPARE0_NV = gl.GL_SPARE0_NV
GL_SPARE1_NV = gl.GL_SPARE1_NV
GL_DISCARD_NV = gl.GL_DISCARD_NV
GL_E_TIMES_F_NV = gl.GL_E_TIMES_F_NV
GL_SPARE0_PLUS_SECONDARY_COLOR_NV = gl.GL_SPARE0_PLUS_SECONDARY_COLOR_NV
GL_UNSIGNED_IDENTITY_NV = gl.GL_UNSIGNED_IDENTITY_NV
GL_UNSIGNED_INVERT_NV = gl.GL_UNSIGNED_INVERT_NV
GL_EXPAND_NORMAL_NV = gl.GL_EXPAND_NORMAL_NV
GL_EXPAND_NEGATE_NV = gl.GL_EXPAND_NEGATE_NV
GL_HALF_BIAS_NORMAL_NV = gl.GL_HALF_BIAS_NORMAL_NV
GL_HALF_BIAS_NEGATE_NV = gl.GL_HALF_BIAS_NEGATE_NV
GL_SIGNED_IDENTITY_NV = gl.GL_SIGNED_IDENTITY_NV
GL_SIGNED_NEGATE_NV = gl.GL_SIGNED_NEGATE_NV
GL_SCALE_BY_TWO_NV = gl.GL_SCALE_BY_TWO_NV
GL_SCALE_BY_FOUR_NV = gl.GL_SCALE_BY_FOUR_NV
GL_SCALE_BY_ONE_HALF_NV = gl.GL_SCALE_BY_ONE_HALF_NV
GL_BIAS_BY_NEGATIVE_ONE_HALF_NV = gl.GL_BIAS_BY_NEGATIVE_ONE_HALF_NV
GL_COMBINER_INPUT_NV = gl.GL_COMBINER_INPUT_NV
GL_COMBINER_MAPPING_NV = gl.GL_COMBINER_MAPPING_NV
GL_COMBINER_COMPONENT_USAGE_NV = gl.GL_COMBINER_COMPONENT_USAGE_NV
GL_COMBINER_AB_DOT_PRODUCT_NV = gl.GL_COMBINER_AB_DOT_PRODUCT_NV
GL_COMBINER_CD_DOT_PRODUCT_NV = gl.GL_COMBINER_CD_DOT_PRODUCT_NV
GL_COMBINER_MUX_SUM_NV = gl.GL_COMBINER_MUX_SUM_NV
GL_COMBINER_SCALE_NV = gl.GL_COMBINER_SCALE_NV
GL_COMBINER_BIAS_NV = gl.GL_COMBINER_BIAS_NV
GL_COMBINER_AB_OUTPUT_NV = gl.GL_COMBINER_AB_OUTPUT_NV
GL_COMBINER_CD_OUTPUT_NV = gl.GL_COMBINER_CD_OUTPUT_NV
GL_COMBINER_SUM_OUTPUT_NV = gl.GL_COMBINER_SUM_OUTPUT_NV
GL_MAX_GENERAL_COMBINERS_NV = gl.GL_MAX_GENERAL_COMBINERS_NV
GL_NUM_GENERAL_COMBINERS_NV = gl.GL_NUM_GENERAL_COMBINERS_NV
GL_COLOR_SUM_CLAMP_NV = gl.GL_COLOR_SUM_CLAMP_NV
GL_COMBINER0_NV = gl.GL_COMBINER0_NV
GL_COMBINER1_NV = gl.GL_COMBINER1_NV
GL_COMBINER2_NV = gl.GL_COMBINER2_NV
GL_COMBINER3_NV = gl.GL_COMBINER3_NV
GL_COMBINER4_NV = gl.GL_COMBINER4_NV
GL_COMBINER5_NV = gl.GL_COMBINER5_NV
GL_COMBINER6_NV = gl.GL_COMBINER6_NV
GL_COMBINER7_NV = gl.GL_COMBINER7_NV

def glCombinerInputNV(stage, portion, variable, input, mapping, componentUsage):
    gl.glCombinerInputNV(stage, portion, variable, input, mapping, componentUsage)

def glCombinerOutputNV(stage, portion, abOutput, cdOutput, sumOutput, scale, bias, abDotProduct, cdDotProduct, muxSum):
    gl.glCombinerOutputNV(stage, portion, abOutput, cdOutput, sumOutput, scale, bias, abDotProduct, cdDotProduct, muxSum)

def glCombinerParameterfNV(pname, param):
    gl.glCombinerParameterfNV(pname, param)

def glCombinerParameterfvNV(pname, float params):
    cdef float* params1 = &params
    gl.glCombinerParameterfvNV(pname,  params1)

def glCombinerParameteriNV(pname, param):
    gl.glCombinerParameteriNV(pname, param)

def glCombinerParameterivNV(pname, int params):
    cdef int* params1 = &params
    gl.glCombinerParameterivNV(pname,  params1)

def glFinalCombinerInputNV(variable, input, mapping, componentUsage):
    gl.glFinalCombinerInputNV(variable, input, mapping, componentUsage)

def glGetCombinerInputParameterfvNV(stage, portion, variable, pname, float params):
    cdef float* params1 = &params
    gl.glGetCombinerInputParameterfvNV(stage, portion, variable, pname, params1)

def glGetCombinerInputParameterivNV(stage, portion, variable, pname, int params):
    cdef int* params1 = &params
    gl.glGetCombinerInputParameterivNV(stage, portion, variable, pname, params1)

def glGetCombinerOutputParameterfvNV(stage, portion, pname, float params):
    cdef float* params1 = &params
    gl.glGetCombinerOutputParameterfvNV(stage, portion, pname, params1)

def glGetCombinerOutputParameterivNV(stage, portion, pname, int params):
    cdef int* params1 = &params
    gl.glGetCombinerOutputParameterivNV(stage, portion, pname, params1)

def glGetFinalCombinerInputParameterfvNV(variable, pname, float params):
    cdef float* params1 = &params
    gl.glGetFinalCombinerInputParameterfvNV(variable, pname, params1)

def glGetFinalCombinerInputParameterivNV(variable, pname, int params):
    cdef int* params1 = &params
    gl.glGetFinalCombinerInputParameterivNV(variable, pname, params1)

#GL_NV_register_combiners2

GL_NV_register_combiners2 = gl.GL_NV_register_combiners2

GL_PER_STAGE_CONSTANTS_NV = gl.GL_PER_STAGE_CONSTANTS_NV

def glCombinerStageParameterfvNV(stage, pname, float params):
    cdef float* params1 = &params
    gl.glCombinerStageParameterfvNV(stage, pname,  params1)

def glGetCombinerStageParameterfvNV(stage, pname, float params):
    cdef float* params1 = &params
    gl.glGetCombinerStageParameterfvNV(stage, pname, params1)

#GL_NV_shader_buffer_load

GL_NV_shader_buffer_load = gl.GL_NV_shader_buffer_load

GL_BUFFER_GPU_ADDRESS_NV = gl.GL_BUFFER_GPU_ADDRESS_NV
GL_GPU_ADDRESS_NV = gl.GL_GPU_ADDRESS_NV
GL_MAX_SHADER_BUFFER_ADDRESS_NV = gl.GL_MAX_SHADER_BUFFER_ADDRESS_NV

def glGetBufferParameterui64vNV(target, pname, unsigned long long params):
    cdef unsigned long long* params1 = &params
    gl.glGetBufferParameterui64vNV(target, pname, params1)

def glGetIntegerui64vNV(value, unsigned long long result):
    cdef unsigned long long* result1 = &result
    gl.glGetIntegerui64vNV(value, result1)

def glGetNamedBufferParameterui64vNV(buffer, pname, unsigned long long params):
    cdef unsigned long long* params1 = &params
    gl.glGetNamedBufferParameterui64vNV(buffer, pname, params1)

def glIsBufferResidentNV(target):
    return gl.glIsBufferResidentNV(target)

def glIsNamedBufferResidentNV(buffer):
    return gl.glIsNamedBufferResidentNV(buffer)

def glMakeBufferNonResidentNV(target):
    gl.glMakeBufferNonResidentNV(target)

def glMakeBufferResidentNV(target, access):
    gl.glMakeBufferResidentNV(target, access)

def glMakeNamedBufferNonResidentNV(buffer):
    gl.glMakeNamedBufferNonResidentNV(buffer)

def glMakeNamedBufferResidentNV(buffer, access):
    gl.glMakeNamedBufferResidentNV(buffer, access)

def glProgramUniformui64NV(program, location, value):
    gl.glProgramUniformui64NV(program, location, value)

def glProgramUniformui64vNV(program, location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glProgramUniformui64vNV(program, location, count, value1)

def glUniformui64NV(location, value):
    gl.glUniformui64NV(location, value)

def glUniformui64vNV(location, count, unsigned long long value):
    cdef unsigned long long* value1 = &value
    gl.glUniformui64vNV(location, count, value1)

#GL_NV_tessellation_program5

GL_NV_tessellation_program5 = gl.GL_NV_tessellation_program5

GL_MAX_PROGRAM_PATCH_ATTRIBS_NV = gl.GL_MAX_PROGRAM_PATCH_ATTRIBS_NV
GL_TESS_CONTROL_PROGRAM_NV = gl.GL_TESS_CONTROL_PROGRAM_NV
GL_TESS_EVALUATION_PROGRAM_NV = gl.GL_TESS_EVALUATION_PROGRAM_NV
GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV = gl.GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV
GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV = gl.GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV

#GL_NV_texgen_emboss

GL_NV_texgen_emboss = gl.GL_NV_texgen_emboss

GL_EMBOSS_LIGHT_NV = gl.GL_EMBOSS_LIGHT_NV
GL_EMBOSS_CONSTANT_NV = gl.GL_EMBOSS_CONSTANT_NV
GL_EMBOSS_MAP_NV = gl.GL_EMBOSS_MAP_NV

#GL_NV_texgen_reflection

GL_NV_texgen_reflection = gl.GL_NV_texgen_reflection

GL_NORMAL_MAP_NV = gl.GL_NORMAL_MAP_NV
GL_REFLECTION_MAP_NV = gl.GL_REFLECTION_MAP_NV

#GL_NV_texture_barrier

GL_NV_texture_barrier = gl.GL_NV_texture_barrier

def glTextureBarrierNV():
    gl.glTextureBarrierNV()

#GL_NV_texture_compression_vtc

GL_NV_texture_compression_vtc = gl.GL_NV_texture_compression_vtc

#GL_NV_texture_env_combine4

GL_NV_texture_env_combine4 = gl.GL_NV_texture_env_combine4

GL_COMBINE4_NV = gl.GL_COMBINE4_NV
GL_SOURCE3_RGB_NV = gl.GL_SOURCE3_RGB_NV
GL_SOURCE3_ALPHA_NV = gl.GL_SOURCE3_ALPHA_NV
GL_OPERAND3_RGB_NV = gl.GL_OPERAND3_RGB_NV
GL_OPERAND3_ALPHA_NV = gl.GL_OPERAND3_ALPHA_NV

#GL_NV_texture_expand_normal

GL_NV_texture_expand_normal = gl.GL_NV_texture_expand_normal

GL_TEXTURE_UNSIGNED_REMAP_MODE_NV = gl.GL_TEXTURE_UNSIGNED_REMAP_MODE_NV

#GL_NV_texture_multisample

GL_NV_texture_multisample = gl.GL_NV_texture_multisample

GL_TEXTURE_COVERAGE_SAMPLES_NV = gl.GL_TEXTURE_COVERAGE_SAMPLES_NV
GL_TEXTURE_COLOR_SAMPLES_NV = gl.GL_TEXTURE_COLOR_SAMPLES_NV

def glTexImage2DMultisampleCoverageNV(target, coverageSamples, colorSamples, internalFormat, width, height, fixedSampleLocations):
    gl.glTexImage2DMultisampleCoverageNV(target, coverageSamples, colorSamples, internalFormat, width, height, fixedSampleLocations)

def glTexImage3DMultisampleCoverageNV(target, coverageSamples, colorSamples, internalFormat, width, height, depth, fixedSampleLocations):
    gl.glTexImage3DMultisampleCoverageNV(target, coverageSamples, colorSamples, internalFormat, width, height, depth, fixedSampleLocations)

def glTextureImage2DMultisampleCoverageNV(texture, target, coverageSamples, colorSamples, internalFormat, width, height, fixedSampleLocations):
    gl.glTextureImage2DMultisampleCoverageNV(texture, target, coverageSamples, colorSamples, internalFormat, width, height, fixedSampleLocations)

def glTextureImage2DMultisampleNV(texture, target, samples, internalFormat, width, height, fixedSampleLocations):
    gl.glTextureImage2DMultisampleNV(texture, target, samples, internalFormat, width, height, fixedSampleLocations)

def glTextureImage3DMultisampleCoverageNV(texture, target, coverageSamples, colorSamples, internalFormat, width, height, depth, fixedSampleLocations):
    gl.glTextureImage3DMultisampleCoverageNV(texture, target, coverageSamples, colorSamples, internalFormat, width, height, depth, fixedSampleLocations)

def glTextureImage3DMultisampleNV(texture, target, samples, internalFormat, width, height, depth, fixedSampleLocations):
    gl.glTextureImage3DMultisampleNV(texture, target, samples, internalFormat, width, height, depth, fixedSampleLocations)

#GL_NV_texture_rectangle

GL_NV_texture_rectangle = gl.GL_NV_texture_rectangle

GL_TEXTURE_RECTANGLE_NV = gl.GL_TEXTURE_RECTANGLE_NV
GL_TEXTURE_BINDING_RECTANGLE_NV = gl.GL_TEXTURE_BINDING_RECTANGLE_NV
GL_PROXY_TEXTURE_RECTANGLE_NV = gl.GL_PROXY_TEXTURE_RECTANGLE_NV
GL_MAX_RECTANGLE_TEXTURE_SIZE_NV = gl.GL_MAX_RECTANGLE_TEXTURE_SIZE_NV

#GL_NV_texture_shader

GL_NV_texture_shader = gl.GL_NV_texture_shader

GL_OFFSET_TEXTURE_RECTANGLE_NV = gl.GL_OFFSET_TEXTURE_RECTANGLE_NV
GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV = gl.GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV
GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV = gl.GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV
GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV = gl.GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV
GL_UNSIGNED_INT_S8_S8_8_8_NV = gl.GL_UNSIGNED_INT_S8_S8_8_8_NV
GL_UNSIGNED_INT_8_8_S8_S8_REV_NV = gl.GL_UNSIGNED_INT_8_8_S8_S8_REV_NV
GL_DSDT_MAG_INTENSITY_NV = gl.GL_DSDT_MAG_INTENSITY_NV
GL_SHADER_CONSISTENT_NV = gl.GL_SHADER_CONSISTENT_NV
GL_TEXTURE_SHADER_NV = gl.GL_TEXTURE_SHADER_NV
GL_SHADER_OPERATION_NV = gl.GL_SHADER_OPERATION_NV
GL_CULL_MODES_NV = gl.GL_CULL_MODES_NV
GL_OFFSET_TEXTURE_2D_MATRIX_NV = gl.GL_OFFSET_TEXTURE_2D_MATRIX_NV
GL_OFFSET_TEXTURE_MATRIX_NV = gl.GL_OFFSET_TEXTURE_MATRIX_NV
GL_OFFSET_TEXTURE_2D_SCALE_NV = gl.GL_OFFSET_TEXTURE_2D_SCALE_NV
GL_OFFSET_TEXTURE_SCALE_NV = gl.GL_OFFSET_TEXTURE_SCALE_NV
GL_OFFSET_TEXTURE_BIAS_NV = gl.GL_OFFSET_TEXTURE_BIAS_NV
GL_OFFSET_TEXTURE_2D_BIAS_NV = gl.GL_OFFSET_TEXTURE_2D_BIAS_NV
GL_PREVIOUS_TEXTURE_INPUT_NV = gl.GL_PREVIOUS_TEXTURE_INPUT_NV
GL_CONST_EYE_NV = gl.GL_CONST_EYE_NV
GL_PASS_THROUGH_NV = gl.GL_PASS_THROUGH_NV
GL_CULL_FRAGMENT_NV = gl.GL_CULL_FRAGMENT_NV
GL_OFFSET_TEXTURE_2D_NV = gl.GL_OFFSET_TEXTURE_2D_NV
GL_DEPENDENT_AR_TEXTURE_2D_NV = gl.GL_DEPENDENT_AR_TEXTURE_2D_NV
GL_DEPENDENT_GB_TEXTURE_2D_NV = gl.GL_DEPENDENT_GB_TEXTURE_2D_NV
GL_DOT_PRODUCT_NV = gl.GL_DOT_PRODUCT_NV
GL_DOT_PRODUCT_DEPTH_REPLACE_NV = gl.GL_DOT_PRODUCT_DEPTH_REPLACE_NV
GL_DOT_PRODUCT_TEXTURE_2D_NV = gl.GL_DOT_PRODUCT_TEXTURE_2D_NV
GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV = gl.GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV
GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV = gl.GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV
GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV = gl.GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV
GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV = gl.GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV
GL_HILO_NV = gl.GL_HILO_NV
GL_DSDT_NV = gl.GL_DSDT_NV
GL_DSDT_MAG_NV = gl.GL_DSDT_MAG_NV
GL_DSDT_MAG_VIB_NV = gl.GL_DSDT_MAG_VIB_NV
GL_HILO16_NV = gl.GL_HILO16_NV
GL_SIGNED_HILO_NV = gl.GL_SIGNED_HILO_NV
GL_SIGNED_HILO16_NV = gl.GL_SIGNED_HILO16_NV
GL_SIGNED_RGBA_NV = gl.GL_SIGNED_RGBA_NV
GL_SIGNED_RGBA8_NV = gl.GL_SIGNED_RGBA8_NV
GL_SIGNED_RGB_NV = gl.GL_SIGNED_RGB_NV
GL_SIGNED_RGB8_NV = gl.GL_SIGNED_RGB8_NV
GL_SIGNED_LUMINANCE_NV = gl.GL_SIGNED_LUMINANCE_NV
GL_SIGNED_LUMINANCE8_NV = gl.GL_SIGNED_LUMINANCE8_NV
GL_SIGNED_LUMINANCE_ALPHA_NV = gl.GL_SIGNED_LUMINANCE_ALPHA_NV
GL_SIGNED_LUMINANCE8_ALPHA8_NV = gl.GL_SIGNED_LUMINANCE8_ALPHA8_NV
GL_SIGNED_ALPHA_NV = gl.GL_SIGNED_ALPHA_NV
GL_SIGNED_ALPHA8_NV = gl.GL_SIGNED_ALPHA8_NV
GL_SIGNED_INTENSITY_NV = gl.GL_SIGNED_INTENSITY_NV
GL_SIGNED_INTENSITY8_NV = gl.GL_SIGNED_INTENSITY8_NV
GL_DSDT8_NV = gl.GL_DSDT8_NV
GL_DSDT8_MAG8_NV = gl.GL_DSDT8_MAG8_NV
GL_DSDT8_MAG8_INTENSITY8_NV = gl.GL_DSDT8_MAG8_INTENSITY8_NV
GL_SIGNED_RGB_UNSIGNED_ALPHA_NV = gl.GL_SIGNED_RGB_UNSIGNED_ALPHA_NV
GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV = gl.GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV
GL_HI_SCALE_NV = gl.GL_HI_SCALE_NV
GL_LO_SCALE_NV = gl.GL_LO_SCALE_NV
GL_DS_SCALE_NV = gl.GL_DS_SCALE_NV
GL_DT_SCALE_NV = gl.GL_DT_SCALE_NV
GL_MAGNITUDE_SCALE_NV = gl.GL_MAGNITUDE_SCALE_NV
GL_VIBRANCE_SCALE_NV = gl.GL_VIBRANCE_SCALE_NV
GL_HI_BIAS_NV = gl.GL_HI_BIAS_NV
GL_LO_BIAS_NV = gl.GL_LO_BIAS_NV
GL_DS_BIAS_NV = gl.GL_DS_BIAS_NV
GL_DT_BIAS_NV = gl.GL_DT_BIAS_NV
GL_MAGNITUDE_BIAS_NV = gl.GL_MAGNITUDE_BIAS_NV
GL_VIBRANCE_BIAS_NV = gl.GL_VIBRANCE_BIAS_NV
GL_TEXTURE_BORDER_VALUES_NV = gl.GL_TEXTURE_BORDER_VALUES_NV
GL_TEXTURE_HI_SIZE_NV = gl.GL_TEXTURE_HI_SIZE_NV
GL_TEXTURE_LO_SIZE_NV = gl.GL_TEXTURE_LO_SIZE_NV
GL_TEXTURE_DS_SIZE_NV = gl.GL_TEXTURE_DS_SIZE_NV
GL_TEXTURE_DT_SIZE_NV = gl.GL_TEXTURE_DT_SIZE_NV
GL_TEXTURE_MAG_SIZE_NV = gl.GL_TEXTURE_MAG_SIZE_NV

#GL_NV_texture_shader2

GL_NV_texture_shader2 = gl.GL_NV_texture_shader2

GL_UNSIGNED_INT_S8_S8_8_8_NV = gl.GL_UNSIGNED_INT_S8_S8_8_8_NV
GL_UNSIGNED_INT_8_8_S8_S8_REV_NV = gl.GL_UNSIGNED_INT_8_8_S8_S8_REV_NV
GL_DSDT_MAG_INTENSITY_NV = gl.GL_DSDT_MAG_INTENSITY_NV
GL_DOT_PRODUCT_TEXTURE_3D_NV = gl.GL_DOT_PRODUCT_TEXTURE_3D_NV
GL_HILO_NV = gl.GL_HILO_NV
GL_DSDT_NV = gl.GL_DSDT_NV
GL_DSDT_MAG_NV = gl.GL_DSDT_MAG_NV
GL_DSDT_MAG_VIB_NV = gl.GL_DSDT_MAG_VIB_NV
GL_HILO16_NV = gl.GL_HILO16_NV
GL_SIGNED_HILO_NV = gl.GL_SIGNED_HILO_NV
GL_SIGNED_HILO16_NV = gl.GL_SIGNED_HILO16_NV
GL_SIGNED_RGBA_NV = gl.GL_SIGNED_RGBA_NV
GL_SIGNED_RGBA8_NV = gl.GL_SIGNED_RGBA8_NV
GL_SIGNED_RGB_NV = gl.GL_SIGNED_RGB_NV
GL_SIGNED_RGB8_NV = gl.GL_SIGNED_RGB8_NV
GL_SIGNED_LUMINANCE_NV = gl.GL_SIGNED_LUMINANCE_NV
GL_SIGNED_LUMINANCE8_NV = gl.GL_SIGNED_LUMINANCE8_NV
GL_SIGNED_LUMINANCE_ALPHA_NV = gl.GL_SIGNED_LUMINANCE_ALPHA_NV
GL_SIGNED_LUMINANCE8_ALPHA8_NV = gl.GL_SIGNED_LUMINANCE8_ALPHA8_NV
GL_SIGNED_ALPHA_NV = gl.GL_SIGNED_ALPHA_NV
GL_SIGNED_ALPHA8_NV = gl.GL_SIGNED_ALPHA8_NV
GL_SIGNED_INTENSITY_NV = gl.GL_SIGNED_INTENSITY_NV
GL_SIGNED_INTENSITY8_NV = gl.GL_SIGNED_INTENSITY8_NV
GL_DSDT8_NV = gl.GL_DSDT8_NV
GL_DSDT8_MAG8_NV = gl.GL_DSDT8_MAG8_NV
GL_DSDT8_MAG8_INTENSITY8_NV = gl.GL_DSDT8_MAG8_INTENSITY8_NV
GL_SIGNED_RGB_UNSIGNED_ALPHA_NV = gl.GL_SIGNED_RGB_UNSIGNED_ALPHA_NV
GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV = gl.GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV

#GL_NV_texture_shader3

GL_NV_texture_shader3 = gl.GL_NV_texture_shader3

GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV = gl.GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV
GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV = gl.GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV
GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV = gl.GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV
GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV = gl.GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV
GL_OFFSET_HILO_TEXTURE_2D_NV = gl.GL_OFFSET_HILO_TEXTURE_2D_NV
GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV = gl.GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV
GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV = gl.GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV
GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV = gl.GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV
GL_DEPENDENT_HILO_TEXTURE_2D_NV = gl.GL_DEPENDENT_HILO_TEXTURE_2D_NV
GL_DEPENDENT_RGB_TEXTURE_3D_NV = gl.GL_DEPENDENT_RGB_TEXTURE_3D_NV
GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV = gl.GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV
GL_DOT_PRODUCT_PASS_THROUGH_NV = gl.GL_DOT_PRODUCT_PASS_THROUGH_NV
GL_DOT_PRODUCT_TEXTURE_1D_NV = gl.GL_DOT_PRODUCT_TEXTURE_1D_NV
GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV = gl.GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV
GL_HILO8_NV = gl.GL_HILO8_NV
GL_SIGNED_HILO8_NV = gl.GL_SIGNED_HILO8_NV
GL_FORCE_BLUE_TO_ONE_NV = gl.GL_FORCE_BLUE_TO_ONE_NV

#GL_NV_transform_feedback

GL_NV_transform_feedback = gl.GL_NV_transform_feedback

GL_BACK_PRIMARY_COLOR_NV = gl.GL_BACK_PRIMARY_COLOR_NV
GL_BACK_SECONDARY_COLOR_NV = gl.GL_BACK_SECONDARY_COLOR_NV
GL_TEXTURE_COORD_NV = gl.GL_TEXTURE_COORD_NV
GL_CLIP_DISTANCE_NV = gl.GL_CLIP_DISTANCE_NV
GL_VERTEX_ID_NV = gl.GL_VERTEX_ID_NV
GL_PRIMITIVE_ID_NV = gl.GL_PRIMITIVE_ID_NV
GL_GENERIC_ATTRIB_NV = gl.GL_GENERIC_ATTRIB_NV
GL_TRANSFORM_FEEDBACK_ATTRIBS_NV = gl.GL_TRANSFORM_FEEDBACK_ATTRIBS_NV
GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV = gl.GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV = gl.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV
GL_ACTIVE_VARYINGS_NV = gl.GL_ACTIVE_VARYINGS_NV
GL_ACTIVE_VARYING_MAX_LENGTH_NV = gl.GL_ACTIVE_VARYING_MAX_LENGTH_NV
GL_TRANSFORM_FEEDBACK_VARYINGS_NV = gl.GL_TRANSFORM_FEEDBACK_VARYINGS_NV
GL_TRANSFORM_FEEDBACK_BUFFER_START_NV = gl.GL_TRANSFORM_FEEDBACK_BUFFER_START_NV
GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV = gl.GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV
GL_TRANSFORM_FEEDBACK_RECORD_NV = gl.GL_TRANSFORM_FEEDBACK_RECORD_NV
GL_PRIMITIVES_GENERATED_NV = gl.GL_PRIMITIVES_GENERATED_NV
GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV = gl.GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV
GL_RASTERIZER_DISCARD_NV = gl.GL_RASTERIZER_DISCARD_NV
GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV = gl.GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV = gl.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV
GL_INTERLEAVED_ATTRIBS_NV = gl.GL_INTERLEAVED_ATTRIBS_NV
GL_SEPARATE_ATTRIBS_NV = gl.GL_SEPARATE_ATTRIBS_NV
GL_TRANSFORM_FEEDBACK_BUFFER_NV = gl.GL_TRANSFORM_FEEDBACK_BUFFER_NV
GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV = gl.GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV

def glActiveVaryingNV(program, name):
    gl.glActiveVaryingNV(program, name)

def glBeginTransformFeedbackNV(primitiveMode):
    gl.glBeginTransformFeedbackNV(primitiveMode)

def glBindBufferBaseNV(target, index, buffer):
    gl.glBindBufferBaseNV(target, index, buffer)

def glBindBufferOffsetNV(target, index, buffer, offset):
    gl.glBindBufferOffsetNV(target, index, buffer, offset)

def glBindBufferRangeNV(target, index, buffer, offset, size):
    gl.glBindBufferRangeNV(target, index, buffer, offset, size)

def glEndTransformFeedbackNV():
    gl.glEndTransformFeedbackNV()

def glGetActiveVaryingNV(program, index, bufSize, int length, int size, unsigned int type, name):
    cdef int* length1 = &length
    cdef int* size1 = &size
    cdef unsigned int* type1 = &type
    cdef char* name1 = name
    gl.glGetActiveVaryingNV(program, index, bufSize, length1, size1, type1, name1)

def glGetTransformFeedbackVaryingNV(program, index, int location):
    cdef int* location1 = &location
    gl.glGetTransformFeedbackVaryingNV(program, index, location1)

def glGetVaryingLocationNV(program, name):
    return gl.glGetVaryingLocationNV(program, name)

def glTransformFeedbackAttribsNV(count, int attribs, bufferMode):
    cdef int* attribs1 = &attribs
    gl.glTransformFeedbackAttribsNV(count, attribs1, bufferMode)

def glTransformFeedbackVaryingsNV(program, count, int locations, bufferMode):
    cdef int* locations1 = &locations
    gl.glTransformFeedbackVaryingsNV(program, count, locations1, bufferMode)

#GL_NV_transform_feedback2

GL_NV_transform_feedback2 = gl.GL_NV_transform_feedback2

GL_TRANSFORM_FEEDBACK_NV = gl.GL_TRANSFORM_FEEDBACK_NV
GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV = gl.GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV
GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV = gl.GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV
GL_TRANSFORM_FEEDBACK_BINDING_NV = gl.GL_TRANSFORM_FEEDBACK_BINDING_NV

def glBindTransformFeedbackNV(target, id):
    gl.glBindTransformFeedbackNV(target, id)

def glDeleteTransformFeedbacksNV(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glDeleteTransformFeedbacksNV(n, ids1)

def glDrawTransformFeedbackNV(mode, id):
    gl.glDrawTransformFeedbackNV(mode, id)

def glGenTransformFeedbacksNV(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glGenTransformFeedbacksNV(n, ids1)

def glIsTransformFeedbackNV(id):
    return gl.glIsTransformFeedbackNV(id)

def glPauseTransformFeedbackNV():
    gl.glPauseTransformFeedbackNV()

def glResumeTransformFeedbackNV():
    gl.glResumeTransformFeedbackNV()

#GL_NV_vdpau_interop

GL_NV_vdpau_interop = gl.GL_NV_vdpau_interop

GL_SURFACE_STATE_NV = gl.GL_SURFACE_STATE_NV
GL_SURFACE_REGISTERED_NV = gl.GL_SURFACE_REGISTERED_NV
GL_SURFACE_MAPPED_NV = gl.GL_SURFACE_MAPPED_NV
GL_WRITE_DISCARD_NV = gl.GL_WRITE_DISCARD_NV

    

def glVDPAUFiniNV():
    gl.glVDPAUFiniNV()

def glVDPAUGetSurfaceivNV(surface, pname, bufSize, int length, int values):
    cdef int* length1 = &length
    cdef int* values1 = &values
    gl.glVDPAUGetSurfaceivNV(surface, pname, bufSize, length1, values1)

def glVDPAUInitNV( vdpDevice, getProcAddress):
    gl.glVDPAUInitNV( <void*>vdpDevice, <void*>getProcAddress)

def glVDPAUIsSurfaceNV(surface):
    gl.glVDPAUIsSurfaceNV(surface)

def glVDPAUMapSurfacesNV(numSurfaces, Py_ssize_t surfaces):
    cdef Py_ssize_t* surfaces1 = &surfaces
    gl.glVDPAUMapSurfacesNV(numSurfaces, surfaces1)

def glVDPAURegisterOutputSurfaceNV( vdpSurface, target, numTextureNames, unsigned int textureNames):
    cdef unsigned int* textureNames1 = &textureNames
    return gl.glVDPAURegisterOutputSurfaceNV( <void*>vdpSurface, target, numTextureNames, textureNames1)

def glVDPAURegisterVideoSurfaceNV( vdpSurface, target, numTextureNames, unsigned int textureNames):
    cdef unsigned int* textureNames1 = &textureNames
    return gl.glVDPAURegisterVideoSurfaceNV( <void*>vdpSurface, target, numTextureNames, textureNames1)

def glVDPAUSurfaceAccessNV(surface, access):
    gl.glVDPAUSurfaceAccessNV(surface, access)

def glVDPAUUnmapSurfacesNV(numSurface, Py_ssize_t surfaces):
    cdef Py_ssize_t* surfaces1 = &surfaces
    gl.glVDPAUUnmapSurfacesNV(numSurface, surfaces1)

def glVDPAUUnregisterSurfaceNV(surface):
    gl.glVDPAUUnregisterSurfaceNV(surface)

#GL_NV_vertex_array_range

GL_NV_vertex_array_range = gl.GL_NV_vertex_array_range

GL_VERTEX_ARRAY_RANGE_NV = gl.GL_VERTEX_ARRAY_RANGE_NV
GL_VERTEX_ARRAY_RANGE_LENGTH_NV = gl.GL_VERTEX_ARRAY_RANGE_LENGTH_NV
GL_VERTEX_ARRAY_RANGE_VALID_NV = gl.GL_VERTEX_ARRAY_RANGE_VALID_NV
GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV = gl.GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV
GL_VERTEX_ARRAY_RANGE_POINTER_NV = gl.GL_VERTEX_ARRAY_RANGE_POINTER_NV

def glFlushVertexArrayRangeNV():
    gl.glFlushVertexArrayRangeNV()

def glVertexArrayRangeNV(length, pointer):
    gl.glVertexArrayRangeNV(length, <void*>pointer)

#GL_NV_vertex_array_range2

GL_NV_vertex_array_range2 = gl.GL_NV_vertex_array_range2

GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV = gl.GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV

#GL_NV_vertex_attrib_integer_64bit

GL_NV_vertex_attrib_integer_64bit = gl.GL_NV_vertex_attrib_integer_64bit

GL_INT64_NV = gl.GL_INT64_NV
GL_UNSIGNED_INT64_NV = gl.GL_UNSIGNED_INT64_NV

def glGetVertexAttribLi64vNV(index, pname, signed long long params):
    cdef signed long long* params1 = &params
    gl.glGetVertexAttribLi64vNV(index, pname, params1)

def glGetVertexAttribLui64vNV(index, pname, unsigned long long params):
    cdef unsigned long long* params1 = &params
    gl.glGetVertexAttribLui64vNV(index, pname, params1)

def glVertexAttribL1i64NV(index, x):
    gl.glVertexAttribL1i64NV(index, x)

def glVertexAttribL1i64vNV(index, signed long long v):
    cdef signed long long* v1 = &v
    gl.glVertexAttribL1i64vNV(index, v1)

def glVertexAttribL1ui64NV(index, x):
    gl.glVertexAttribL1ui64NV(index, x)

def glVertexAttribL1ui64vNV(index, unsigned long long v):
    cdef unsigned long long* v1 = &v
    gl.glVertexAttribL1ui64vNV(index, v1)

def glVertexAttribL2i64NV(index, x, y):
    gl.glVertexAttribL2i64NV(index, x, y)

def glVertexAttribL2i64vNV(index, signed long long v):
    cdef signed long long* v1 = &v
    gl.glVertexAttribL2i64vNV(index, v1)

def glVertexAttribL2ui64NV(index, x, y):
    gl.glVertexAttribL2ui64NV(index, x, y)

def glVertexAttribL2ui64vNV(index, unsigned long long v):
    cdef unsigned long long* v1 = &v
    gl.glVertexAttribL2ui64vNV(index, v1)

def glVertexAttribL3i64NV(index, x, y, z):
    gl.glVertexAttribL3i64NV(index, x, y, z)

def glVertexAttribL3i64vNV(index, signed long long v):
    cdef signed long long* v1 = &v
    gl.glVertexAttribL3i64vNV(index, v1)

def glVertexAttribL3ui64NV(index, x, y, z):
    gl.glVertexAttribL3ui64NV(index, x, y, z)

def glVertexAttribL3ui64vNV(index, unsigned long long v):
    cdef unsigned long long* v1 = &v
    gl.glVertexAttribL3ui64vNV(index, v1)

def glVertexAttribL4i64NV(index, x, y, z, w):
    gl.glVertexAttribL4i64NV(index, x, y, z, w)

def glVertexAttribL4i64vNV(index, signed long long v):
    cdef signed long long* v1 = &v
    gl.glVertexAttribL4i64vNV(index, v1)

def glVertexAttribL4ui64NV(index, x, y, z, w):
    gl.glVertexAttribL4ui64NV(index, x, y, z, w)

def glVertexAttribL4ui64vNV(index, unsigned long long v):
    cdef unsigned long long* v1 = &v
    gl.glVertexAttribL4ui64vNV(index, v1)

def glVertexAttribLFormatNV(index, size, type, stride):
    gl.glVertexAttribLFormatNV(index, size, type, stride)

#GL_NV_vertex_buffer_unified_memory

GL_NV_vertex_buffer_unified_memory = gl.GL_NV_vertex_buffer_unified_memory

GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV = gl.GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV
GL_ELEMENT_ARRAY_UNIFIED_NV = gl.GL_ELEMENT_ARRAY_UNIFIED_NV
GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV = gl.GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV
GL_VERTEX_ARRAY_ADDRESS_NV = gl.GL_VERTEX_ARRAY_ADDRESS_NV
GL_NORMAL_ARRAY_ADDRESS_NV = gl.GL_NORMAL_ARRAY_ADDRESS_NV
GL_COLOR_ARRAY_ADDRESS_NV = gl.GL_COLOR_ARRAY_ADDRESS_NV
GL_INDEX_ARRAY_ADDRESS_NV = gl.GL_INDEX_ARRAY_ADDRESS_NV
GL_TEXTURE_COORD_ARRAY_ADDRESS_NV = gl.GL_TEXTURE_COORD_ARRAY_ADDRESS_NV
GL_EDGE_FLAG_ARRAY_ADDRESS_NV = gl.GL_EDGE_FLAG_ARRAY_ADDRESS_NV
GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV = gl.GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV
GL_FOG_COORD_ARRAY_ADDRESS_NV = gl.GL_FOG_COORD_ARRAY_ADDRESS_NV
GL_ELEMENT_ARRAY_ADDRESS_NV = gl.GL_ELEMENT_ARRAY_ADDRESS_NV
GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV = gl.GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV
GL_VERTEX_ARRAY_LENGTH_NV = gl.GL_VERTEX_ARRAY_LENGTH_NV
GL_NORMAL_ARRAY_LENGTH_NV = gl.GL_NORMAL_ARRAY_LENGTH_NV
GL_COLOR_ARRAY_LENGTH_NV = gl.GL_COLOR_ARRAY_LENGTH_NV
GL_INDEX_ARRAY_LENGTH_NV = gl.GL_INDEX_ARRAY_LENGTH_NV
GL_TEXTURE_COORD_ARRAY_LENGTH_NV = gl.GL_TEXTURE_COORD_ARRAY_LENGTH_NV
GL_EDGE_FLAG_ARRAY_LENGTH_NV = gl.GL_EDGE_FLAG_ARRAY_LENGTH_NV
GL_SECONDARY_COLOR_ARRAY_LENGTH_NV = gl.GL_SECONDARY_COLOR_ARRAY_LENGTH_NV
GL_FOG_COORD_ARRAY_LENGTH_NV = gl.GL_FOG_COORD_ARRAY_LENGTH_NV
GL_ELEMENT_ARRAY_LENGTH_NV = gl.GL_ELEMENT_ARRAY_LENGTH_NV
GL_DRAW_INDIRECT_UNIFIED_NV = gl.GL_DRAW_INDIRECT_UNIFIED_NV
GL_DRAW_INDIRECT_ADDRESS_NV = gl.GL_DRAW_INDIRECT_ADDRESS_NV
GL_DRAW_INDIRECT_LENGTH_NV = gl.GL_DRAW_INDIRECT_LENGTH_NV

def glBufferAddressRangeNV(pname, index, address, length):
    gl.glBufferAddressRangeNV(pname, index, address, length)

def glColorFormatNV(size, type, stride):
    gl.glColorFormatNV(size, type, stride)

def glEdgeFlagFormatNV(stride):
    gl.glEdgeFlagFormatNV(stride)

def glFogCoordFormatNV(type, stride):
    gl.glFogCoordFormatNV(type, stride)

def glGetIntegerui64i_vNV(value, index, result):

    cdef int size = len(result)

    cdef unsigned long long* holder = <unsigned long long*>malloc(size * sizeof(unsigned long long))
    
    for i,v in enumerate(result):
        holder[i] = v

    gl.glGetIntegerui64i_vNV(value, index, holder)
    
    free(holder)

def glIndexFormatNV(type, stride):
    gl.glIndexFormatNV(type, stride)

def glNormalFormatNV(type, stride):
    gl.glNormalFormatNV(type, stride)

def glSecondaryColorFormatNV(size, type, stride):
    gl.glSecondaryColorFormatNV(size, type, stride)

def glTexCoordFormatNV(size, type, stride):
    gl.glTexCoordFormatNV(size, type, stride)

def glVertexAttribFormatNV(index, size, type, normalized, stride):
    gl.glVertexAttribFormatNV(index, size, type, normalized, stride)

def glVertexAttribIFormatNV(index, size, type, stride):
    gl.glVertexAttribIFormatNV(index, size, type, stride)

def glVertexFormatNV(size, type, stride):
    gl.glVertexFormatNV(size, type, stride)

#GL_NV_vertex_program

GL_NV_vertex_program = gl.GL_NV_vertex_program

GL_VERTEX_PROGRAM_NV = gl.GL_VERTEX_PROGRAM_NV
GL_VERTEX_STATE_PROGRAM_NV = gl.GL_VERTEX_STATE_PROGRAM_NV
GL_ATTRIB_ARRAY_SIZE_NV = gl.GL_ATTRIB_ARRAY_SIZE_NV
GL_ATTRIB_ARRAY_STRIDE_NV = gl.GL_ATTRIB_ARRAY_STRIDE_NV
GL_ATTRIB_ARRAY_TYPE_NV = gl.GL_ATTRIB_ARRAY_TYPE_NV
GL_CURRENT_ATTRIB_NV = gl.GL_CURRENT_ATTRIB_NV
GL_PROGRAM_LENGTH_NV = gl.GL_PROGRAM_LENGTH_NV
GL_PROGRAM_STRING_NV = gl.GL_PROGRAM_STRING_NV
GL_MODELVIEW_PROJECTION_NV = gl.GL_MODELVIEW_PROJECTION_NV
GL_IDENTITY_NV = gl.GL_IDENTITY_NV
GL_INVERSE_NV = gl.GL_INVERSE_NV
GL_TRANSPOSE_NV = gl.GL_TRANSPOSE_NV
GL_INVERSE_TRANSPOSE_NV = gl.GL_INVERSE_TRANSPOSE_NV
GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV = gl.GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV
GL_MAX_TRACK_MATRICES_NV = gl.GL_MAX_TRACK_MATRICES_NV
GL_MATRIX0_NV = gl.GL_MATRIX0_NV
GL_MATRIX1_NV = gl.GL_MATRIX1_NV
GL_MATRIX2_NV = gl.GL_MATRIX2_NV
GL_MATRIX3_NV = gl.GL_MATRIX3_NV
GL_MATRIX4_NV = gl.GL_MATRIX4_NV
GL_MATRIX5_NV = gl.GL_MATRIX5_NV
GL_MATRIX6_NV = gl.GL_MATRIX6_NV
GL_MATRIX7_NV = gl.GL_MATRIX7_NV
GL_CURRENT_MATRIX_STACK_DEPTH_NV = gl.GL_CURRENT_MATRIX_STACK_DEPTH_NV
GL_CURRENT_MATRIX_NV = gl.GL_CURRENT_MATRIX_NV
GL_VERTEX_PROGRAM_POINT_SIZE_NV = gl.GL_VERTEX_PROGRAM_POINT_SIZE_NV
GL_VERTEX_PROGRAM_TWO_SIDE_NV = gl.GL_VERTEX_PROGRAM_TWO_SIDE_NV
GL_PROGRAM_PARAMETER_NV = gl.GL_PROGRAM_PARAMETER_NV
GL_ATTRIB_ARRAY_POINTER_NV = gl.GL_ATTRIB_ARRAY_POINTER_NV
GL_PROGRAM_TARGET_NV = gl.GL_PROGRAM_TARGET_NV
GL_PROGRAM_RESIDENT_NV = gl.GL_PROGRAM_RESIDENT_NV
GL_TRACK_MATRIX_NV = gl.GL_TRACK_MATRIX_NV
GL_TRACK_MATRIX_TRANSFORM_NV = gl.GL_TRACK_MATRIX_TRANSFORM_NV
GL_VERTEX_PROGRAM_BINDING_NV = gl.GL_VERTEX_PROGRAM_BINDING_NV
GL_PROGRAM_ERROR_POSITION_NV = gl.GL_PROGRAM_ERROR_POSITION_NV
GL_VERTEX_ATTRIB_ARRAY0_NV = gl.GL_VERTEX_ATTRIB_ARRAY0_NV
GL_VERTEX_ATTRIB_ARRAY1_NV = gl.GL_VERTEX_ATTRIB_ARRAY1_NV
GL_VERTEX_ATTRIB_ARRAY2_NV = gl.GL_VERTEX_ATTRIB_ARRAY2_NV
GL_VERTEX_ATTRIB_ARRAY3_NV = gl.GL_VERTEX_ATTRIB_ARRAY3_NV
GL_VERTEX_ATTRIB_ARRAY4_NV = gl.GL_VERTEX_ATTRIB_ARRAY4_NV
GL_VERTEX_ATTRIB_ARRAY5_NV = gl.GL_VERTEX_ATTRIB_ARRAY5_NV
GL_VERTEX_ATTRIB_ARRAY6_NV = gl.GL_VERTEX_ATTRIB_ARRAY6_NV
GL_VERTEX_ATTRIB_ARRAY7_NV = gl.GL_VERTEX_ATTRIB_ARRAY7_NV
GL_VERTEX_ATTRIB_ARRAY8_NV = gl.GL_VERTEX_ATTRIB_ARRAY8_NV
GL_VERTEX_ATTRIB_ARRAY9_NV = gl.GL_VERTEX_ATTRIB_ARRAY9_NV
GL_VERTEX_ATTRIB_ARRAY10_NV = gl.GL_VERTEX_ATTRIB_ARRAY10_NV
GL_VERTEX_ATTRIB_ARRAY11_NV = gl.GL_VERTEX_ATTRIB_ARRAY11_NV
GL_VERTEX_ATTRIB_ARRAY12_NV = gl.GL_VERTEX_ATTRIB_ARRAY12_NV
GL_VERTEX_ATTRIB_ARRAY13_NV = gl.GL_VERTEX_ATTRIB_ARRAY13_NV
GL_VERTEX_ATTRIB_ARRAY14_NV = gl.GL_VERTEX_ATTRIB_ARRAY14_NV
GL_VERTEX_ATTRIB_ARRAY15_NV = gl.GL_VERTEX_ATTRIB_ARRAY15_NV
GL_MAP1_VERTEX_ATTRIB0_4_NV = gl.GL_MAP1_VERTEX_ATTRIB0_4_NV
GL_MAP1_VERTEX_ATTRIB1_4_NV = gl.GL_MAP1_VERTEX_ATTRIB1_4_NV
GL_MAP1_VERTEX_ATTRIB2_4_NV = gl.GL_MAP1_VERTEX_ATTRIB2_4_NV
GL_MAP1_VERTEX_ATTRIB3_4_NV = gl.GL_MAP1_VERTEX_ATTRIB3_4_NV
GL_MAP1_VERTEX_ATTRIB4_4_NV = gl.GL_MAP1_VERTEX_ATTRIB4_4_NV
GL_MAP1_VERTEX_ATTRIB5_4_NV = gl.GL_MAP1_VERTEX_ATTRIB5_4_NV
GL_MAP1_VERTEX_ATTRIB6_4_NV = gl.GL_MAP1_VERTEX_ATTRIB6_4_NV
GL_MAP1_VERTEX_ATTRIB7_4_NV = gl.GL_MAP1_VERTEX_ATTRIB7_4_NV
GL_MAP1_VERTEX_ATTRIB8_4_NV = gl.GL_MAP1_VERTEX_ATTRIB8_4_NV
GL_MAP1_VERTEX_ATTRIB9_4_NV = gl.GL_MAP1_VERTEX_ATTRIB9_4_NV
GL_MAP1_VERTEX_ATTRIB10_4_NV = gl.GL_MAP1_VERTEX_ATTRIB10_4_NV
GL_MAP1_VERTEX_ATTRIB11_4_NV = gl.GL_MAP1_VERTEX_ATTRIB11_4_NV
GL_MAP1_VERTEX_ATTRIB12_4_NV = gl.GL_MAP1_VERTEX_ATTRIB12_4_NV
GL_MAP1_VERTEX_ATTRIB13_4_NV = gl.GL_MAP1_VERTEX_ATTRIB13_4_NV
GL_MAP1_VERTEX_ATTRIB14_4_NV = gl.GL_MAP1_VERTEX_ATTRIB14_4_NV
GL_MAP1_VERTEX_ATTRIB15_4_NV = gl.GL_MAP1_VERTEX_ATTRIB15_4_NV
GL_MAP2_VERTEX_ATTRIB0_4_NV = gl.GL_MAP2_VERTEX_ATTRIB0_4_NV
GL_MAP2_VERTEX_ATTRIB1_4_NV = gl.GL_MAP2_VERTEX_ATTRIB1_4_NV
GL_MAP2_VERTEX_ATTRIB2_4_NV = gl.GL_MAP2_VERTEX_ATTRIB2_4_NV
GL_MAP2_VERTEX_ATTRIB3_4_NV = gl.GL_MAP2_VERTEX_ATTRIB3_4_NV
GL_MAP2_VERTEX_ATTRIB4_4_NV = gl.GL_MAP2_VERTEX_ATTRIB4_4_NV
GL_MAP2_VERTEX_ATTRIB5_4_NV = gl.GL_MAP2_VERTEX_ATTRIB5_4_NV
GL_MAP2_VERTEX_ATTRIB6_4_NV = gl.GL_MAP2_VERTEX_ATTRIB6_4_NV
GL_MAP2_VERTEX_ATTRIB7_4_NV = gl.GL_MAP2_VERTEX_ATTRIB7_4_NV
GL_MAP2_VERTEX_ATTRIB8_4_NV = gl.GL_MAP2_VERTEX_ATTRIB8_4_NV
GL_MAP2_VERTEX_ATTRIB9_4_NV = gl.GL_MAP2_VERTEX_ATTRIB9_4_NV
GL_MAP2_VERTEX_ATTRIB10_4_NV = gl.GL_MAP2_VERTEX_ATTRIB10_4_NV
GL_MAP2_VERTEX_ATTRIB11_4_NV = gl.GL_MAP2_VERTEX_ATTRIB11_4_NV
GL_MAP2_VERTEX_ATTRIB12_4_NV = gl.GL_MAP2_VERTEX_ATTRIB12_4_NV
GL_MAP2_VERTEX_ATTRIB13_4_NV = gl.GL_MAP2_VERTEX_ATTRIB13_4_NV
GL_MAP2_VERTEX_ATTRIB14_4_NV = gl.GL_MAP2_VERTEX_ATTRIB14_4_NV
GL_MAP2_VERTEX_ATTRIB15_4_NV = gl.GL_MAP2_VERTEX_ATTRIB15_4_NV

def glAreProgramsResidentNV(n, unsigned int ids, bint residences):
    cdef unsigned int* ids1 = &ids
    cdef bint* residences1 = &residences
    return gl.glAreProgramsResidentNV(n, ids1, residences1)

def glBindProgramNV(target, id):
    gl.glBindProgramNV(target, id)

def glDeleteProgramsNV(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glDeleteProgramsNV(n, ids1)

def glExecuteProgramNV(target, id, float params):
    cdef float* params1 = &params
    gl.glExecuteProgramNV(target, id,  params1)

def glGenProgramsNV(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glGenProgramsNV(n, ids1)

def glGetProgramParameterdvNV(target, index, pname, double params):
    cdef double* params1 = &params
    gl.glGetProgramParameterdvNV(target, index, pname, params1)

def glGetProgramParameterfvNV(target, index, pname, float params):
    cdef float* params1 = &params
    gl.glGetProgramParameterfvNV(target, index, pname, params1)

def glGetProgramStringNV(id, pname, unsigned char program):
    cdef unsigned char* program1 = &program
    gl.glGetProgramStringNV(id, pname, program1)

def glGetProgramivNV(id, pname, int params):
    cdef int* params1 = &params
    gl.glGetProgramivNV(id, pname, params1)

def glGetTrackMatrixivNV(target, address, pname, int params):
    cdef int* params1 = &params
    gl.glGetTrackMatrixivNV(target, address, pname, params1)

def glGetVertexAttribPointervNV(index, pname, pointer):
    cdef void* t = <void*>pointer
    gl.glGetVertexAttribPointervNV(index, pname, &t)

def glGetVertexAttribdvNV(index, pname, double params):
    cdef double* params1 = &params
    gl.glGetVertexAttribdvNV(index, pname, params1)

def glGetVertexAttribfvNV(index, pname, float params):
    cdef float* params1 = &params
    gl.glGetVertexAttribfvNV(index, pname, params1)

def glGetVertexAttribivNV(index, pname, int params):
    cdef int* params1 = &params
    gl.glGetVertexAttribivNV(index, pname, params1)

def glIsProgramNV(id):
    return gl.glIsProgramNV(id)

def glLoadProgramNV(target, id, len, unsigned char program):
    cdef unsigned char* program1 = &program
    gl.glLoadProgramNV(target, id, len,  program1)

def glProgramParameter4dNV(target, index, x, y, z, w):
    gl.glProgramParameter4dNV(target, index, x, y, z, w)

def glProgramParameter4dvNV(target, index, double params):
    cdef double* params1 = &params
    gl.glProgramParameter4dvNV(target, index,  params1)

def glProgramParameter4fNV(target, index, x, y, z, w):
    gl.glProgramParameter4fNV(target, index, x, y, z, w)

def glProgramParameter4fvNV(target, index, float params):
    cdef float* params1 = &params
    gl.glProgramParameter4fvNV(target, index,  params1)

def glProgramParameters4dvNV(target, index, num, double params):
    cdef double* params1 = &params
    gl.glProgramParameters4dvNV(target, index, num,  params1)

def glProgramParameters4fvNV(target, index, num, float params):
    cdef float* params1 = &params
    gl.glProgramParameters4fvNV(target, index, num,  params1)

def glRequestResidentProgramsNV(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glRequestResidentProgramsNV(n, ids1)

def glTrackMatrixNV(target, address, matrix, transform):
    gl.glTrackMatrixNV(target, address, matrix, transform)

def glVertexAttrib1dNV(index, x):
    gl.glVertexAttrib1dNV(index, x)

def glVertexAttrib1dvNV(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib1dvNV(index,  v1)

def glVertexAttrib1fNV(index, x):
    gl.glVertexAttrib1fNV(index, x)

def glVertexAttrib1fvNV(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib1fvNV(index,  v1)

def glVertexAttrib1sNV(index, x):
    gl.glVertexAttrib1sNV(index, x)

def glVertexAttrib1svNV(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib1svNV(index,  v1)

def glVertexAttrib2dNV(index, x, y):
    gl.glVertexAttrib2dNV(index, x, y)

def glVertexAttrib2dvNV(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib2dvNV(index,  v1)

def glVertexAttrib2fNV(index, x, y):
    gl.glVertexAttrib2fNV(index, x, y)

def glVertexAttrib2fvNV(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib2fvNV(index,  v1)

def glVertexAttrib2sNV(index, x, y):
    gl.glVertexAttrib2sNV(index, x, y)

def glVertexAttrib2svNV(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib2svNV(index,  v1)

def glVertexAttrib3dNV(index, x, y, z):
    gl.glVertexAttrib3dNV(index, x, y, z)

def glVertexAttrib3dvNV(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib3dvNV(index,  v1)

def glVertexAttrib3fNV(index, x, y, z):
    gl.glVertexAttrib3fNV(index, x, y, z)

def glVertexAttrib3fvNV(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib3fvNV(index,  v1)

def glVertexAttrib3sNV(index, x, y, z):
    gl.glVertexAttrib3sNV(index, x, y, z)

def glVertexAttrib3svNV(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib3svNV(index,  v1)

def glVertexAttrib4dNV(index, x, y, z, w):
    gl.glVertexAttrib4dNV(index, x, y, z, w)

def glVertexAttrib4dvNV(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib4dvNV(index,  v1)

def glVertexAttrib4fNV(index, x, y, z, w):
    gl.glVertexAttrib4fNV(index, x, y, z, w)

def glVertexAttrib4fvNV(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib4fvNV(index,  v1)

def glVertexAttrib4sNV(index, x, y, z, w):
    gl.glVertexAttrib4sNV(index, x, y, z, w)

def glVertexAttrib4svNV(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib4svNV(index,  v1)

def glVertexAttrib4ubNV(index, x, y, z, w):
    gl.glVertexAttrib4ubNV(index, x, y, z, w)

def glVertexAttrib4ubvNV(index, unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glVertexAttrib4ubvNV(index,  v1)

def glVertexAttribPointerNV(index, size, type, stride,  pointer):
    gl.glVertexAttribPointerNV(index, size, type, stride,  <void*>pointer)

def glVertexAttribs1dvNV(index, n, double v):
    cdef double* v1 = &v
    gl.glVertexAttribs1dvNV(index, n,  v1)

def glVertexAttribs1fvNV(index, n, float v):
    cdef float* v1 = &v
    gl.glVertexAttribs1fvNV(index, n,  v1)

def glVertexAttribs1svNV(index, n, short v):
    cdef short* v1 = &v
    gl.glVertexAttribs1svNV(index, n,  v1)

def glVertexAttribs2dvNV(index, n, double v):
    cdef double* v1 = &v
    gl.glVertexAttribs2dvNV(index, n,  v1)

def glVertexAttribs2fvNV(index, n, float v):
    cdef float* v1 = &v
    gl.glVertexAttribs2fvNV(index, n,  v1)

def glVertexAttribs2svNV(index, n, short v):
    cdef short* v1 = &v
    gl.glVertexAttribs2svNV(index, n,  v1)

def glVertexAttribs3dvNV(index, n, double v):
    cdef double* v1 = &v
    gl.glVertexAttribs3dvNV(index, n,  v1)

def glVertexAttribs3fvNV(index, n, float v):
    cdef float* v1 = &v
    gl.glVertexAttribs3fvNV(index, n,  v1)

def glVertexAttribs3svNV(index, n, short v):
    cdef short* v1 = &v
    gl.glVertexAttribs3svNV(index, n,  v1)

def glVertexAttribs4dvNV(index, n, double v):
    cdef double* v1 = &v
    gl.glVertexAttribs4dvNV(index, n,  v1)

def glVertexAttribs4fvNV(index, n, float v):
    cdef float* v1 = &v
    gl.glVertexAttribs4fvNV(index, n,  v1)

def glVertexAttribs4svNV(index, n, short v):
    cdef short* v1 = &v
    gl.glVertexAttribs4svNV(index, n,  v1)

def glVertexAttribs4ubvNV(index, n, unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glVertexAttribs4ubvNV(index, n,  v1)

#GL_NV_vertex_program1_1

GL_NV_vertex_program1_1 = gl.GL_NV_vertex_program1_1

#GL_NV_vertex_program2

GL_NV_vertex_program2 = gl.GL_NV_vertex_program2

#GL_NV_vertex_program2_option

GL_NV_vertex_program2_option = gl.GL_NV_vertex_program2_option

GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV = gl.GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
GL_MAX_PROGRAM_CALL_DEPTH_NV = gl.GL_MAX_PROGRAM_CALL_DEPTH_NV

#GL_NV_vertex_program3

GL_NV_vertex_program3 = gl.GL_NV_vertex_program3

MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB = gl.MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB

#GL_NV_vertex_program4

GL_NV_vertex_program4 = gl.GL_NV_vertex_program4

GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV = gl.GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV

#GL_NV_video_capture

GL_NV_video_capture = gl.GL_NV_video_capture

GL_VIDEO_BUFFER_NV = gl.GL_VIDEO_BUFFER_NV
GL_VIDEO_BUFFER_BINDING_NV = gl.GL_VIDEO_BUFFER_BINDING_NV
GL_FIELD_UPPER_NV = gl.GL_FIELD_UPPER_NV
GL_FIELD_LOWER_NV = gl.GL_FIELD_LOWER_NV
GL_NUM_VIDEO_CAPTURE_STREAMS_NV = gl.GL_NUM_VIDEO_CAPTURE_STREAMS_NV
GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV = gl.GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV
GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV = gl.GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV
GL_LAST_VIDEO_CAPTURE_STATUS_NV = gl.GL_LAST_VIDEO_CAPTURE_STATUS_NV
GL_VIDEO_BUFFER_PITCH_NV = gl.GL_VIDEO_BUFFER_PITCH_NV
GL_VIDEO_COLOR_CONVERSION_MATRIX_NV = gl.GL_VIDEO_COLOR_CONVERSION_MATRIX_NV
GL_VIDEO_COLOR_CONVERSION_MAX_NV = gl.GL_VIDEO_COLOR_CONVERSION_MAX_NV
GL_VIDEO_COLOR_CONVERSION_MIN_NV = gl.GL_VIDEO_COLOR_CONVERSION_MIN_NV
GL_VIDEO_COLOR_CONVERSION_OFFSET_NV = gl.GL_VIDEO_COLOR_CONVERSION_OFFSET_NV
GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV = gl.GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV
GL_PARTIAL_SUCCESS_NV = gl.GL_PARTIAL_SUCCESS_NV
GL_SUCCESS_NV = gl.GL_SUCCESS_NV
GL_FAILURE_NV = gl.GL_FAILURE_NV
GL_YCBYCR8_422_NV = gl.GL_YCBYCR8_422_NV
GL_YCBAYCR8A_4224_NV = gl.GL_YCBAYCR8A_4224_NV
GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV = gl.GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV
GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV = gl.GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV
GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV = gl.GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV
GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV = gl.GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV
GL_Z4Y12Z4CB12Z4CR12_444_NV = gl.GL_Z4Y12Z4CB12Z4CR12_444_NV
GL_VIDEO_CAPTURE_FRAME_WIDTH_NV = gl.GL_VIDEO_CAPTURE_FRAME_WIDTH_NV
GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV = gl.GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV
GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV = gl.GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV
GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV = gl.GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV
GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV = gl.GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV

def glBeginVideoCaptureNV(video_capture_slot):
    gl.glBeginVideoCaptureNV(video_capture_slot)

def glBindVideoCaptureStreamBufferNV(video_capture_slot, stream, frame_region, offset):
    gl.glBindVideoCaptureStreamBufferNV(video_capture_slot, stream, frame_region, offset)

def glBindVideoCaptureStreamTextureNV(video_capture_slot, stream, frame_region, target, texture):
    gl.glBindVideoCaptureStreamTextureNV(video_capture_slot, stream, frame_region, target, texture)

def glEndVideoCaptureNV(video_capture_slot):
    gl.glEndVideoCaptureNV(video_capture_slot)

def glGetVideoCaptureStreamdvNV(video_capture_slot, stream, pname, double params):
    cdef double* params1 = &params
    gl.glGetVideoCaptureStreamdvNV(video_capture_slot, stream, pname, params1)

def glGetVideoCaptureStreamfvNV(video_capture_slot, stream, pname, float params):
    cdef float* params1 = &params
    gl.glGetVideoCaptureStreamfvNV(video_capture_slot, stream, pname, params1)

def glGetVideoCaptureStreamivNV(video_capture_slot, stream, pname, int params):
    cdef int* params1 = &params
    gl.glGetVideoCaptureStreamivNV(video_capture_slot, stream, pname, params1)

def glGetVideoCaptureivNV(video_capture_slot, pname, int params):
    cdef int* params1 = &params
    gl.glGetVideoCaptureivNV(video_capture_slot, pname, params1)

def glVideoCaptureNV(video_capture_slot, unsigned int sequence_num, unsigned long long capture_time):
    cdef unsigned int* sequence_num1 = &sequence_num
    cdef unsigned long long* capture_time1 = &capture_time
    return gl.glVideoCaptureNV(video_capture_slot, sequence_num1, capture_time1)

def glVideoCaptureStreamParameterdvNV(video_capture_slot, stream, pname, double params):
    cdef double* params1 = &params
    gl.glVideoCaptureStreamParameterdvNV(video_capture_slot, stream, pname,  params1)

def glVideoCaptureStreamParameterfvNV(video_capture_slot, stream, pname, float params):
    cdef float* params1 = &params
    gl.glVideoCaptureStreamParameterfvNV(video_capture_slot, stream, pname,  params1)

def glVideoCaptureStreamParameterivNV(video_capture_slot, stream, pname, int params):
    cdef int* params1 = &params
    gl.glVideoCaptureStreamParameterivNV(video_capture_slot, stream, pname,  params1)