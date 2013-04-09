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

#GL_AMD_blend_minmax_factor

GL_AMD_blend_minmax_factor = gl.GL_AMD_blend_minmax_factor

GL_FACTOR_MIN_AMD = gl.GL_FACTOR_MIN_AMD
GL_FACTOR_MAX_AMD = gl.GL_FACTOR_MAX_AMD

#GL_AMD_conservative_depth

GL_AMD_conservative_depth = gl.GL_AMD_conservative_depth

#GL_AMD_debug_output

GL_AMD_debug_output = gl.GL_AMD_debug_output

GL_MAX_DEBUG_MESSAGE_LENGTH_AMD = gl.GL_MAX_DEBUG_MESSAGE_LENGTH_AMD
GL_MAX_DEBUG_LOGGED_MESSAGES_AMD = gl.GL_MAX_DEBUG_LOGGED_MESSAGES_AMD
GL_DEBUG_LOGGED_MESSAGES_AMD = gl.GL_DEBUG_LOGGED_MESSAGES_AMD
GL_DEBUG_SEVERITY_HIGH_AMD = gl.GL_DEBUG_SEVERITY_HIGH_AMD
GL_DEBUG_SEVERITY_MEDIUM_AMD = gl.GL_DEBUG_SEVERITY_MEDIUM_AMD
GL_DEBUG_SEVERITY_LOW_AMD = gl.GL_DEBUG_SEVERITY_LOW_AMD
GL_DEBUG_CATEGORY_API_ERROR_AMD = gl.GL_DEBUG_CATEGORY_API_ERROR_AMD
GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD = gl.GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD
GL_DEBUG_CATEGORY_DEPRECATION_AMD = gl.GL_DEBUG_CATEGORY_DEPRECATION_AMD
GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = gl.GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD
GL_DEBUG_CATEGORY_PERFORMANCE_AMD = gl.GL_DEBUG_CATEGORY_PERFORMANCE_AMD
GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD = gl.GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD
GL_DEBUG_CATEGORY_APPLICATION_AMD = gl.GL_DEBUG_CATEGORY_APPLICATION_AMD
GL_DEBUG_CATEGORY_OTHER_AMD = gl.GL_DEBUG_CATEGORY_OTHER_AMD

def glDebugMessageCallbackAMD(callback, userParam):
    gl.glDebugMessageCallbackAMD(<void*>callback, <void*>userParam)

def glDebugMessageEnableAMD(category, severity, count, ids, enabled):
    gl.glDebugMessageEnableAMD(category, severity, count, ids, enabled)

def glDebugMessageInsertAMD(category, severity, id, length,  buf):
    gl.glDebugMessageInsertAMD(category, severity, id, length,  buf)

def glGetDebugMessageLogAMD(count, bufsize, unsigned int categories, unsigned int severities, unsigned int ids, int lengths, message):
    cdef unsigned int* categories1 = &categories
    cdef unsigned int* severities1 = &severities
    cdef unsigned int* ids1 = &ids
    cdef int* lengths1 = &lengths
    return gl.glGetDebugMessageLogAMD(count, bufsize, categories1, severities1, ids1, lengths1, message)

#GL_AMD_depth_clamp_separate

GL_AMD_depth_clamp_separate = gl.GL_AMD_depth_clamp_separate

GL_DEPTH_CLAMP_NEAR_AMD = gl.GL_DEPTH_CLAMP_NEAR_AMD
GL_DEPTH_CLAMP_FAR_AMD = gl.GL_DEPTH_CLAMP_FAR_AMD

#GL_AMD_draw_buffers_blend

GL_AMD_draw_buffers_blend = gl.GL_AMD_draw_buffers_blend

def glBlendEquationIndexedAMD(buf, mode):
    gl.glBlendEquationIndexedAMD(buf, mode)

def glBlendEquationSeparateIndexedAMD(buf, modeRGB, modeAlpha):
    gl.glBlendEquationSeparateIndexedAMD(buf, modeRGB, modeAlpha)

def glBlendFuncIndexedAMD(buf, src, dst):
    gl.glBlendFuncIndexedAMD(buf, src, dst)

def glBlendFuncSeparateIndexedAMD(buf, srcRGB, dstRGB, srcAlpha, dstAlpha):
    gl.glBlendFuncSeparateIndexedAMD(buf, srcRGB, dstRGB, srcAlpha, dstAlpha)

#GL_AMD_multi_draw_indirect

GL_AMD_multi_draw_indirect = gl.GL_AMD_multi_draw_indirect

def glMultiDrawArraysIndirectAMD(mode,  indirect, primcount, stride):
    gl.glMultiDrawArraysIndirectAMD(mode,  <void*>indirect, primcount, stride)

def glMultiDrawElementsIndirectAMD(mode, type,  indirect, primcount, stride):
    gl.glMultiDrawElementsIndirectAMD(mode, type,  <void*>indirect, primcount, stride)

#GL_AMD_name_gen_delete

GL_AMD_name_gen_delete = gl.GL_AMD_name_gen_delete

GL_DATA_BUFFER_AMD = gl.GL_DATA_BUFFER_AMD
GL_PERFORMANCE_MONITOR_AMD = gl.GL_PERFORMANCE_MONITOR_AMD
GL_QUERY_OBJECT_AMD = gl.GL_QUERY_OBJECT_AMD
GL_VERTEX_ARRAY_OBJECT_AMD = gl.GL_VERTEX_ARRAY_OBJECT_AMD
GL_SAMPLER_OBJECT_AMD = gl.GL_SAMPLER_OBJECT_AMD

def glDeleteNamesAMD(identifier, num, names):
    gl.glDeleteNamesAMD(identifier, num, names)

def glGenNamesAMD(identifier, num, unsigned int names):
    cdef unsigned int* names1 = &names
    gl.glGenNamesAMD(identifier, num, names1)

def glIsNameAMD(identifier, name):
    return gl.glIsNameAMD(identifier, name)

#GL_AMD_performance_monitor

GL_AMD_performance_monitor = gl.GL_AMD_performance_monitor

GL_UNSIGNED_INT = gl.GL_UNSIGNED_INT
GL_FLOAT = gl.GL_FLOAT
GL_COUNTER_TYPE_AMD = gl.GL_COUNTER_TYPE_AMD
GL_COUNTER_RANGE_AMD = gl.GL_COUNTER_RANGE_AMD
GL_UNSIGNED_INT64_AMD = gl.GL_UNSIGNED_INT64_AMD
GL_PERCENTAGE_AMD = gl.GL_PERCENTAGE_AMD
GL_PERFMON_RESULT_AVAILABLE_AMD = gl.GL_PERFMON_RESULT_AVAILABLE_AMD
GL_PERFMON_RESULT_SIZE_AMD = gl.GL_PERFMON_RESULT_SIZE_AMD
GL_PERFMON_RESULT_AMD = gl.GL_PERFMON_RESULT_AMD

def glBeginPerfMonitorAMD(monitor):
    gl.glBeginPerfMonitorAMD(monitor)

def glDeletePerfMonitorsAMD(n, unsigned int monitors):
    cdef unsigned int* monitors1 = &monitors
    gl.glDeletePerfMonitorsAMD(n, monitors1)

def glEndPerfMonitorAMD(monitor):
    gl.glEndPerfMonitorAMD(monitor)

def glGenPerfMonitorsAMD(n, unsigned int monitors):
    cdef unsigned int* monitors1 = &monitors
    gl.glGenPerfMonitorsAMD(n, monitors1)

def glGetPerfMonitorCounterDataAMD(monitor, pname, dataSize, unsigned int data, int bytesWritten):
    cdef unsigned int* data1 = &data
    cdef int* bytesWritten1 = &bytesWritten
    gl.glGetPerfMonitorCounterDataAMD(monitor, pname, dataSize, data1, bytesWritten1)

def glGetPerfMonitorCounterInfoAMD(group, counter, pname, data):
    gl.glGetPerfMonitorCounterInfoAMD(group, counter, pname, <void*>data)

def glGetPerfMonitorCounterStringAMD(group, counter, bufSize, int length, counterString):
    gl.glGetPerfMonitorCounterStringAMD(group, counter, bufSize, <int*>length, counterString)

def glGetPerfMonitorCountersAMD(group, int numCounters, int maxActiveCounters, countersSize, unsigned int counters):
    cdef int* numCounters1 = &numCounters
    cdef int* maxActiveCounters1 = &maxActiveCounters
    cdef unsigned int* counters1 = &counters
    gl.glGetPerfMonitorCountersAMD(group, numCounters1, maxActiveCounters1, countersSize, counters1)

def glGetPerfMonitorGroupStringAMD(group, bufSize, int length, groupString):
    cdef int* length1 = &length
    gl.glGetPerfMonitorGroupStringAMD(group, bufSize, length1, groupString)

def glGetPerfMonitorGroupsAMD(int numGroups, groupsSize, unsigned int groups):
    cdef int* numGroups1 = &numGroups
    cdef unsigned int* groups1 = &groups
    gl.glGetPerfMonitorGroupsAMD(numGroups1, groupsSize, groups1)

def glSelectPerfMonitorCountersAMD(monitor, enable, group, numCounters, unsigned int counterList):
    cdef unsigned int* counterList1 = &counterList
    gl.glSelectPerfMonitorCountersAMD(monitor, enable, group, numCounters, counterList1)

#GL_AMD_sample_positions

GL_AMD_sample_positions = gl.GL_AMD_sample_positions

GL_SUBSAMPLE_DISTANCE_AMD = gl.GL_SUBSAMPLE_DISTANCE_AMD

def glSetMultisamplefvAMD(pname, index, float val):
    cdef float* val1 = &val
    gl.glSetMultisamplefvAMD(pname, index,  val1)

#GL_AMD_seamless_cubemap_per_texture

GL_AMD_seamless_cubemap_per_texture = gl.GL_AMD_seamless_cubemap_per_texture

GL_TEXTURE_CUBE_MAP_SEAMLESS_ARB = gl.GL_TEXTURE_CUBE_MAP_SEAMLESS_ARB

#GL_AMD_shader_stencil_export

GL_AMD_shader_stencil_export = gl.GL_AMD_shader_stencil_export

#GL_AMD_texture_texture4

GL_AMD_texture_texture4 = gl.GL_AMD_texture_texture4

#GL_AMD_transform_feedback3_lines_triangles

GL_AMD_transform_feedback3_lines_triangles = gl.GL_AMD_transform_feedback3_lines_triangles

#GL_AMD_vertex_shader_tessellator

GL_AMD_vertex_shader_tessellator = gl.GL_AMD_vertex_shader_tessellator

GL_SAMPLER_BUFFER_AMD = gl.GL_SAMPLER_BUFFER_AMD
GL_INT_SAMPLER_BUFFER_AMD = gl.GL_INT_SAMPLER_BUFFER_AMD
GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD = gl.GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD
GL_TESSELLATION_MODE_AMD = gl.GL_TESSELLATION_MODE_AMD
GL_TESSELLATION_FACTOR_AMD = gl.GL_TESSELLATION_FACTOR_AMD
GL_DISCRETE_AMD = gl.GL_DISCRETE_AMD
GL_CONTINUOUS_AMD = gl.GL_CONTINUOUS_AMD

def glTessellationFactorAMD(factor):
    gl.glTessellationFactorAMD(factor)

def glTessellationModeAMD(mode):
    gl.glTessellationModeAMD(mode)