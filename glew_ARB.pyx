cimport gl
from struct import*
from ctypes import*
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

#GL_3DFX_multisample

GL_3DFX_multisample = gl.GL_3DFX_multisample

GL_MULTISAMPLE_3DFX = gl.GL_MULTISAMPLE_3DFX
GL_SAMPLE_BUFFERS_3DFX = gl.GL_SAMPLE_BUFFERS_3DFX
GL_SAMPLES_3DFX = gl.GL_SAMPLES_3DFX
GL_MULTISAMPLE_BIT_3DFX = gl.GL_MULTISAMPLE_BIT_3DFX

#GL_3DFX_tbuffer

GL_3DFX_tbuffer = gl.GL_3DFX_tbuffer

def glTbufferMask3DFX(mask):
    gl.glTbufferMask3DFX(mask)

#GL_3DFX_texture_compression_FXT1

GL_3DFX_texture_compression_FXT1 = gl.GL_3DFX_texture_compression_FXT1

GL_COMPRESSED_RGB_FXT1_3DFX = gl.GL_COMPRESSED_RGB_FXT1_3DFX
GL_COMPRESSED_RGBA_FXT1_3DFX = gl.GL_COMPRESSED_RGBA_FXT1_3DFX

#GL_ARB_ES2_compatibility

GL_ARB_ES2_compatibility = gl.GL_ARB_ES2_compatibility

GL_FIXED = gl.GL_FIXED
GL_IMPLEMENTATION_COLOR_READ_TYPE = gl.GL_IMPLEMENTATION_COLOR_READ_TYPE
GL_IMPLEMENTATION_COLOR_READ_FORMAT = gl.GL_IMPLEMENTATION_COLOR_READ_FORMAT
GL_LOW_FLOAT = gl.GL_LOW_FLOAT
GL_MEDIUM_FLOAT = gl.GL_MEDIUM_FLOAT
GL_HIGH_FLOAT = gl.GL_HIGH_FLOAT
GL_LOW_INT = gl.GL_LOW_INT
GL_MEDIUM_INT = gl.GL_MEDIUM_INT
GL_HIGH_INT = gl.GL_HIGH_INT
GL_SHADER_BINARY_FORMATS = gl.GL_SHADER_BINARY_FORMATS
GL_NUM_SHADER_BINARY_FORMATS = gl.GL_NUM_SHADER_BINARY_FORMATS
GL_SHADER_COMPILER = gl.GL_SHADER_COMPILER
GL_MAX_VERTEX_UNIFORM_VECTORS = gl.GL_MAX_VERTEX_UNIFORM_VECTORS
GL_MAX_VARYING_VECTORS = gl.GL_MAX_VARYING_VECTORS
GL_MAX_FRAGMENT_UNIFORM_VECTORS = gl.GL_MAX_FRAGMENT_UNIFORM_VECTORS

def glClearDepthf(d):
    gl.glClearDepthf(d)

def glDepthRangef(n, f):
    gl.glDepthRangef(n, f)

def glGetShaderPrecisionFormat(shadertype, precisiontype, int range, int precision):
    cdef int* range1 = &range
    cdef int* precision1 = &range
    gl.glGetShaderPrecisionFormat(shadertype, precisiontype, range1, precision1)

def glReleaseShaderCompiler():
    gl.glReleaseShaderCompiler()

def glShaderBinary(count, unsigned int shaders, binaryformat, binary, length):
    cdef unsigned int* shaders1 = &shaders
    gl.glShaderBinary(count, shaders1, binaryformat, <void*>binary, length)

#GL_ARB_base_instance

GL_ARB_base_instance = gl.GL_ARB_base_instance

def glDrawArraysInstancedBaseInstance(mode, first, count, primcount, baseinstance):
    gl.glDrawArraysInstancedBaseInstance(mode, first, count, primcount, baseinstance)

def glDrawElementsInstancedBaseInstance(mode, count, type,  indices, primcount, baseinstance):
    gl.glDrawElementsInstancedBaseInstance(mode, count, type,  <void*>indices, primcount, baseinstance)

def glDrawElementsInstancedBaseVertexBaseInstance(mode, count, type,  indices, primcount, basevertex, baseinstance):
    gl.glDrawElementsInstancedBaseVertexBaseInstance(mode, count, type,  <void*>indices, primcount, basevertex, baseinstance)

#GL_ARB_blend_func_extended

GL_ARB_blend_func_extended = gl.GL_ARB_blend_func_extended

GL_SRC1_COLOR = gl.GL_SRC1_COLOR
GL_ONE_MINUS_SRC1_COLOR = gl.GL_ONE_MINUS_SRC1_COLOR
GL_ONE_MINUS_SRC1_ALPHA = gl.GL_ONE_MINUS_SRC1_ALPHA
GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = gl.GL_MAX_DUAL_SOURCE_DRAW_BUFFERS

def glBindFragDataLocationIndexed(program, colorNumber, index,  name):
    gl.glBindFragDataLocationIndexed(program, colorNumber, index,  name)

def glGetFragDataIndex(program,  name):
    return gl.glGetFragDataIndex(program,  name)

#GL_ARB_cl_event

GL_ARB_cl_event = gl.GL_ARB_cl_event

GL_SYNC_CL_EVENT_ARB = gl.GL_SYNC_CL_EVENT_ARB
GL_SYNC_CL_EVENT_COMPLETE_ARB = gl.GL_SYNC_CL_EVENT_COMPLETE_ARB

# GLSYNC thing
cdef class GLsync_blah:
    cdef gl.GLsync test

class GLsynchronize(object):
    pass

#def glCreateSyncFromCLeventARB(context, event, flags):
#    waffle = GLsync_blah()
#    waffle.test = gl.glCreateSyncFromCLeventARB(<gl.cl_context>context, <gl.cl_event>event, flags)
#    caik = GLsynchronize()
#    caik.test = waffle.test
#    return caik

#GL_ARB_color_buffer_float

GL_ARB_color_buffer_float = gl.GL_ARB_color_buffer_float

GL_RGBA_FLOAT_MODE_ARB = gl.GL_RGBA_FLOAT_MODE_ARB
GL_CLAMP_VERTEX_COLOR_ARB = gl.GL_CLAMP_VERTEX_COLOR_ARB
GL_CLAMP_FRAGMENT_COLOR_ARB = gl.GL_CLAMP_FRAGMENT_COLOR_ARB
GL_CLAMP_READ_COLOR_ARB = gl.GL_CLAMP_READ_COLOR_ARB
GL_FIXED_ONLY_ARB = gl.GL_FIXED_ONLY_ARB

def glClampColorARB(target, clamp):
    gl.glClampColorARB(target, clamp)

#GL_ARB_compatibility

GL_ARB_compatibility = gl.GL_ARB_compatibility

#GL_ARB_compressed_texture_pixel_storage

GL_ARB_compressed_texture_pixel_storage = gl.GL_ARB_compressed_texture_pixel_storage

GL_UNPACK_COMPRESSED_BLOCK_WIDTH = gl.GL_UNPACK_COMPRESSED_BLOCK_WIDTH
GL_UNPACK_COMPRESSED_BLOCK_HEIGHT = gl.GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
GL_UNPACK_COMPRESSED_BLOCK_DEPTH = gl.GL_UNPACK_COMPRESSED_BLOCK_DEPTH
GL_UNPACK_COMPRESSED_BLOCK_SIZE = gl.GL_UNPACK_COMPRESSED_BLOCK_SIZE
GL_PACK_COMPRESSED_BLOCK_WIDTH = gl.GL_PACK_COMPRESSED_BLOCK_WIDTH
GL_PACK_COMPRESSED_BLOCK_HEIGHT = gl.GL_PACK_COMPRESSED_BLOCK_HEIGHT
GL_PACK_COMPRESSED_BLOCK_DEPTH = gl.GL_PACK_COMPRESSED_BLOCK_DEPTH
GL_PACK_COMPRESSED_BLOCK_SIZE = gl.GL_PACK_COMPRESSED_BLOCK_SIZE

#GL_ARB_conservative_depth

GL_ARB_conservative_depth = gl.GL_ARB_conservative_depth

#GL_ARB_copy_buffer

GL_ARB_copy_buffer = gl.GL_ARB_copy_buffer

GL_COPY_READ_BUFFER = gl.GL_COPY_READ_BUFFER
GL_COPY_WRITE_BUFFER = gl.GL_COPY_WRITE_BUFFER

def glCopyBufferSubData(readtarget, writetarget, readoffset, writeoffset, size):
    gl.glCopyBufferSubData(readtarget, writetarget, readoffset, writeoffset, size)

#GL_ARB_debug_output

GL_ARB_debug_output = gl.GL_ARB_debug_output

GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB = gl.GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB
GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB = gl.GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB
GL_DEBUG_CALLBACK_FUNCTION_ARB = gl.GL_DEBUG_CALLBACK_FUNCTION_ARB
GL_DEBUG_CALLBACK_USER_PARAM_ARB = gl.GL_DEBUG_CALLBACK_USER_PARAM_ARB
GL_DEBUG_SOURCE_API_ARB = gl.GL_DEBUG_SOURCE_API_ARB
GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB = gl.GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB
GL_DEBUG_SOURCE_SHADER_COMPILER_ARB = gl.GL_DEBUG_SOURCE_SHADER_COMPILER_ARB
GL_DEBUG_SOURCE_THIRD_PARTY_ARB = gl.GL_DEBUG_SOURCE_THIRD_PARTY_ARB
GL_DEBUG_SOURCE_APPLICATION_ARB = gl.GL_DEBUG_SOURCE_APPLICATION_ARB
GL_DEBUG_SOURCE_OTHER_ARB = gl.GL_DEBUG_SOURCE_OTHER_ARB
GL_DEBUG_TYPE_ERROR_ARB = gl.GL_DEBUG_TYPE_ERROR_ARB
GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB = gl.GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB
GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB = gl.GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB
GL_DEBUG_TYPE_PORTABILITY_ARB = gl.GL_DEBUG_TYPE_PORTABILITY_ARB
GL_DEBUG_TYPE_PERFORMANCE_ARB = gl.GL_DEBUG_TYPE_PERFORMANCE_ARB
GL_DEBUG_TYPE_OTHER_ARB = gl.GL_DEBUG_TYPE_OTHER_ARB
GL_MAX_DEBUG_MESSAGE_LENGTH_ARB = gl.GL_MAX_DEBUG_MESSAGE_LENGTH_ARB
GL_MAX_DEBUG_LOGGED_MESSAGES_ARB = gl.GL_MAX_DEBUG_LOGGED_MESSAGES_ARB
GL_DEBUG_LOGGED_MESSAGES_ARB = gl.GL_DEBUG_LOGGED_MESSAGES_ARB
GL_DEBUG_SEVERITY_HIGH_ARB = gl.GL_DEBUG_SEVERITY_HIGH_ARB
GL_DEBUG_SEVERITY_MEDIUM_ARB = gl.GL_DEBUG_SEVERITY_MEDIUM_ARB
GL_DEBUG_SEVERITY_LOW_ARB = gl.GL_DEBUG_SEVERITY_LOW_ARB

def glDebugMessageCallbackARB(callback, userParam):
    gl.glDebugMessageCallbackARB(<void*>callback, <void*>userParam)

def glDebugMessageControlARB(source, type, severity, count, unsigned int ids, enabled):
    cdef unsigned int* ids1 = &ids
    gl.glDebugMessageControlARB(source, type, severity, count, ids1, enabled)

def glDebugMessageInsertARB(source, type, id, severity, length,  buf):
    gl.glDebugMessageInsertARB(source, type, id, severity, length,  buf)

def glGetDebugMessageLogARB(count, bufsize, unsigned int sources, unsigned int types, unsigned int ids, unsigned int severities, int lengths, messageLog):
    cdef unsigned int* sources1 = &sources
    cdef unsigned int* types1 = &types
    cdef unsigned int* ids1 = &ids
    cdef unsigned int* severities1 = &severities
    cdef int* lengths1 = &lengths
    return gl.glGetDebugMessageLogARB(count, bufsize, sources1, types1, ids1, severities1, lengths1, messageLog)

#GL_ARB_depth_buffer_float

GL_ARB_depth_buffer_float = gl.GL_ARB_depth_buffer_float

GL_DEPTH_COMPONENT32F = gl.GL_DEPTH_COMPONENT32F
GL_DEPTH32F_STENCIL8 = gl.GL_DEPTH32F_STENCIL8
GL_FLOAT_32_UNSIGNED_INT_24_8_REV = gl.GL_FLOAT_32_UNSIGNED_INT_24_8_REV

#GL_ARB_depth_clamp

GL_ARB_depth_clamp = gl.GL_ARB_depth_clamp

GL_DEPTH_CLAMP = gl.GL_DEPTH_CLAMP

#GL_ARB_depth_texture

GL_ARB_depth_texture = gl.GL_ARB_depth_texture

GL_DEPTH_COMPONENT16_ARB = gl.GL_DEPTH_COMPONENT16_ARB
GL_DEPTH_COMPONENT24_ARB = gl.GL_DEPTH_COMPONENT24_ARB
GL_DEPTH_COMPONENT32_ARB = gl.GL_DEPTH_COMPONENT32_ARB
GL_TEXTURE_DEPTH_SIZE_ARB = gl.GL_TEXTURE_DEPTH_SIZE_ARB
GL_DEPTH_TEXTURE_MODE_ARB = gl.GL_DEPTH_TEXTURE_MODE_ARB

#GL_ARB_draw_buffers

GL_ARB_draw_buffers = gl.GL_ARB_draw_buffers

GL_MAX_DRAW_BUFFERS_ARB = gl.GL_MAX_DRAW_BUFFERS_ARB
GL_DRAW_BUFFER0_ARB = gl.GL_DRAW_BUFFER0_ARB
GL_DRAW_BUFFER1_ARB = gl.GL_DRAW_BUFFER1_ARB
GL_DRAW_BUFFER2_ARB = gl.GL_DRAW_BUFFER2_ARB
GL_DRAW_BUFFER3_ARB = gl.GL_DRAW_BUFFER3_ARB
GL_DRAW_BUFFER4_ARB = gl.GL_DRAW_BUFFER4_ARB
GL_DRAW_BUFFER5_ARB = gl.GL_DRAW_BUFFER5_ARB
GL_DRAW_BUFFER6_ARB = gl.GL_DRAW_BUFFER6_ARB
GL_DRAW_BUFFER7_ARB = gl.GL_DRAW_BUFFER7_ARB
GL_DRAW_BUFFER8_ARB = gl.GL_DRAW_BUFFER8_ARB
GL_DRAW_BUFFER9_ARB = gl.GL_DRAW_BUFFER9_ARB
GL_DRAW_BUFFER10_ARB = gl.GL_DRAW_BUFFER10_ARB
GL_DRAW_BUFFER11_ARB = gl.GL_DRAW_BUFFER11_ARB
GL_DRAW_BUFFER12_ARB = gl.GL_DRAW_BUFFER12_ARB
GL_DRAW_BUFFER13_ARB = gl.GL_DRAW_BUFFER13_ARB
GL_DRAW_BUFFER14_ARB = gl.GL_DRAW_BUFFER14_ARB
GL_DRAW_BUFFER15_ARB = gl.GL_DRAW_BUFFER15_ARB

def glDrawBuffersARB(n, unsigned int bufs):
    cdef unsigned int* bufs1 = &bufs
    gl.glDrawBuffersARB(n, bufs1)

#GL_ARB_draw_buffers_blend

GL_ARB_draw_buffers_blend = gl.GL_ARB_draw_buffers_blend

def glBlendEquationSeparateiARB(buf, modeRGB, modeAlpha):
    gl.glBlendEquationSeparateiARB(buf, modeRGB, modeAlpha)

def glBlendEquationiARB(buf, mode):
    gl.glBlendEquationiARB(buf, mode)

def glBlendFuncSeparateiARB(buf, srcRGB, dstRGB, srcAlpha, dstAlpha):
    gl.glBlendFuncSeparateiARB(buf, srcRGB, dstRGB, srcAlpha, dstAlpha)

def glBlendFunciARB(buf, src, dst):
    gl.glBlendFunciARB(buf, src, dst)

#GL_ARB_draw_elements_base_vertex

GL_ARB_draw_elements_base_vertex = gl.GL_ARB_draw_elements_base_vertex

def glDrawElementsBaseVertex(mode, count, type, indices, basevertex):
    gl.glDrawElementsBaseVertex(mode, count, type, <void*>indices, basevertex)

def glDrawElementsInstancedBaseVertex(mode, count, type,  indices, primcount, basevertex):
    gl.glDrawElementsInstancedBaseVertex(mode, count, type,  <void*>indices, primcount, basevertex)

def glDrawRangeElementsBaseVertex(mode, start, end, count, type, indices, basevertex):
    gl.glDrawRangeElementsBaseVertex(mode, start, end, count, type, <void*>indices, basevertex)

def glMultiDrawElementsBaseVertex(mode, int count, type, A, primcount, int basevertex):
    cdef void* t = <void*> A
    cdef int* count1 = &count
    cdef int* basevertex1 = &basevertex
    gl.glMultiDrawElementsBaseVertex(mode, count1, type, &t, primcount, basevertex1)

#GL_ARB_draw_indirect

GL_ARB_draw_indirect = gl.GL_ARB_draw_indirect

GL_DRAW_INDIRECT_BUFFER = gl.GL_DRAW_INDIRECT_BUFFER
GL_DRAW_INDIRECT_BUFFER_BINDING = gl.GL_DRAW_INDIRECT_BUFFER_BINDING

def glDrawArraysIndirect(mode,  indirect):
    gl.glDrawArraysIndirect(mode,  <void*>indirect)

def glDrawElementsIndirect(mode, type,  indirect):
    gl.glDrawElementsIndirect(mode, type,  <void*>indirect)

#GL_ARB_draw_instanced

GL_ARB_draw_instanced = gl.GL_ARB_draw_instanced

#GL_ARB_explicit_attrib_location

GL_ARB_explicit_attrib_location = gl.GL_ARB_explicit_attrib_location

#GL_ARB_fragment_coord_conventions

GL_ARB_fragment_coord_conventions = gl.GL_ARB_fragment_coord_conventions

#GL_ARB_fragment_program

GL_ARB_fragment_program = gl.GL_ARB_fragment_program

GL_FRAGMENT_PROGRAM_ARB = gl.GL_FRAGMENT_PROGRAM_ARB
GL_PROGRAM_ALU_INSTRUCTIONS_ARB = gl.GL_PROGRAM_ALU_INSTRUCTIONS_ARB
GL_PROGRAM_TEX_INSTRUCTIONS_ARB = gl.GL_PROGRAM_TEX_INSTRUCTIONS_ARB
GL_PROGRAM_TEX_INDIRECTIONS_ARB = gl.GL_PROGRAM_TEX_INDIRECTIONS_ARB
GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = gl.GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = gl.GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = gl.GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB = gl.GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB
GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB = gl.GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB
GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB = gl.GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB
GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = gl.GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = gl.GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = gl.GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
GL_MAX_TEXTURE_COORDS_ARB = gl.GL_MAX_TEXTURE_COORDS_ARB
GL_MAX_TEXTURE_IMAGE_UNITS_ARB = gl.GL_MAX_TEXTURE_IMAGE_UNITS_ARB

#GL_ARB_fragment_program_shadow

GL_ARB_fragment_program_shadow = gl.GL_ARB_fragment_program_shadow

#GL_ARB_fragment_shader

GL_ARB_fragment_shader = gl.GL_ARB_fragment_shader

GL_FRAGMENT_SHADER_ARB = gl.GL_FRAGMENT_SHADER_ARB
GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB = gl.GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB
GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = gl.GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB

#GL_ARB_framebuffer_object

GL_ARB_framebuffer_object = gl.GL_ARB_framebuffer_object

GL_INVALID_FRAMEBUFFER_OPERATION = gl.GL_INVALID_FRAMEBUFFER_OPERATION
GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = gl.GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = gl.GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = gl.GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = gl.GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = gl.GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = gl.GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = gl.GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = gl.GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
GL_FRAMEBUFFER_DEFAULT = gl.GL_FRAMEBUFFER_DEFAULT
GL_FRAMEBUFFER_UNDEFINED = gl.GL_FRAMEBUFFER_UNDEFINED
GL_DEPTH_STENCIL_ATTACHMENT = gl.GL_DEPTH_STENCIL_ATTACHMENT
GL_INDEX = gl.GL_INDEX
GL_MAX_RENDERBUFFER_SIZE = gl.GL_MAX_RENDERBUFFER_SIZE
GL_DEPTH_STENCIL = gl.GL_DEPTH_STENCIL
GL_UNSIGNED_INT_24_8 = gl.GL_UNSIGNED_INT_24_8
GL_DEPTH24_STENCIL8 = gl.GL_DEPTH24_STENCIL8
GL_TEXTURE_STENCIL_SIZE = gl.GL_TEXTURE_STENCIL_SIZE
GL_UNSIGNED_NORMALIZED = gl.GL_UNSIGNED_NORMALIZED
GL_SRGB = gl.GL_SRGB
GL_DRAW_FRAMEBUFFER_BINDING = gl.GL_DRAW_FRAMEBUFFER_BINDING
GL_FRAMEBUFFER_BINDING = gl.GL_FRAMEBUFFER_BINDING
GL_RENDERBUFFER_BINDING = gl.GL_RENDERBUFFER_BINDING
GL_READ_FRAMEBUFFER = gl.GL_READ_FRAMEBUFFER
GL_DRAW_FRAMEBUFFER = gl.GL_DRAW_FRAMEBUFFER
GL_READ_FRAMEBUFFER_BINDING = gl.GL_READ_FRAMEBUFFER_BINDING
GL_RENDERBUFFER_SAMPLES = gl.GL_RENDERBUFFER_SAMPLES
GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = gl.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = gl.GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = gl.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = gl.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = gl.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
GL_FRAMEBUFFER_COMPLETE = gl.GL_FRAMEBUFFER_COMPLETE
GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = gl.GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = gl.GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = gl.GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = gl.GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
GL_FRAMEBUFFER_UNSUPPORTED = gl.GL_FRAMEBUFFER_UNSUPPORTED
GL_MAX_COLOR_ATTACHMENTS = gl.GL_MAX_COLOR_ATTACHMENTS
GL_COLOR_ATTACHMENT0 = gl.GL_COLOR_ATTACHMENT0
GL_COLOR_ATTACHMENT1 = gl.GL_COLOR_ATTACHMENT1
GL_COLOR_ATTACHMENT2 = gl.GL_COLOR_ATTACHMENT2
GL_COLOR_ATTACHMENT3 = gl.GL_COLOR_ATTACHMENT3
GL_COLOR_ATTACHMENT4 = gl.GL_COLOR_ATTACHMENT4
GL_COLOR_ATTACHMENT5 = gl.GL_COLOR_ATTACHMENT5
GL_COLOR_ATTACHMENT6 = gl.GL_COLOR_ATTACHMENT6
GL_COLOR_ATTACHMENT7 = gl.GL_COLOR_ATTACHMENT7
GL_COLOR_ATTACHMENT8 = gl.GL_COLOR_ATTACHMENT8
GL_COLOR_ATTACHMENT9 = gl.GL_COLOR_ATTACHMENT9
GL_COLOR_ATTACHMENT10 = gl.GL_COLOR_ATTACHMENT10
GL_COLOR_ATTACHMENT11 = gl.GL_COLOR_ATTACHMENT11
GL_COLOR_ATTACHMENT12 = gl.GL_COLOR_ATTACHMENT12
GL_COLOR_ATTACHMENT13 = gl.GL_COLOR_ATTACHMENT13
GL_COLOR_ATTACHMENT14 = gl.GL_COLOR_ATTACHMENT14
GL_COLOR_ATTACHMENT15 = gl.GL_COLOR_ATTACHMENT15
GL_DEPTH_ATTACHMENT = gl.GL_DEPTH_ATTACHMENT
GL_STENCIL_ATTACHMENT = gl.GL_STENCIL_ATTACHMENT
GL_FRAMEBUFFER = gl.GL_FRAMEBUFFER
GL_RENDERBUFFER = gl.GL_RENDERBUFFER
GL_RENDERBUFFER_WIDTH = gl.GL_RENDERBUFFER_WIDTH
GL_RENDERBUFFER_HEIGHT = gl.GL_RENDERBUFFER_HEIGHT
GL_RENDERBUFFER_INTERNAL_FORMAT = gl.GL_RENDERBUFFER_INTERNAL_FORMAT
GL_STENCIL_INDEX1 = gl.GL_STENCIL_INDEX1
GL_STENCIL_INDEX4 = gl.GL_STENCIL_INDEX4
GL_STENCIL_INDEX8 = gl.GL_STENCIL_INDEX8
GL_STENCIL_INDEX16 = gl.GL_STENCIL_INDEX16
GL_RENDERBUFFER_RED_SIZE = gl.GL_RENDERBUFFER_RED_SIZE
GL_RENDERBUFFER_GREEN_SIZE = gl.GL_RENDERBUFFER_GREEN_SIZE
GL_RENDERBUFFER_BLUE_SIZE = gl.GL_RENDERBUFFER_BLUE_SIZE
GL_RENDERBUFFER_ALPHA_SIZE = gl.GL_RENDERBUFFER_ALPHA_SIZE
GL_RENDERBUFFER_DEPTH_SIZE = gl.GL_RENDERBUFFER_DEPTH_SIZE
GL_RENDERBUFFER_STENCIL_SIZE = gl.GL_RENDERBUFFER_STENCIL_SIZE
GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = gl.GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
GL_MAX_SAMPLES = gl.GL_MAX_SAMPLES

def glBindFramebuffer(target, framebuffer):
    gl.glBindFramebuffer(target, framebuffer)

def glBindRenderbuffer(target, renderbuffer):
    gl.glBindRenderbuffer(target, renderbuffer)

def glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter):
    gl.glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter)

def glCheckFramebufferStatus(target):
    return gl.glCheckFramebufferStatus(target)

def glDeleteFramebuffers(n, unsigned int framebuffers):
    cdef unsigned int* framebuffers1 = &framebuffers
    gl.glDeleteFramebuffers(n, framebuffers1)

def glDeleteRenderbuffers(n, unsigned int renderbuffers):
    cdef unsigned int* renderbuffers1 = &renderbuffers
    gl.glDeleteRenderbuffers(n, renderbuffers1)

def glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer):
    gl.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer)

def glFramebufferTexture1D(target, attachment, textarget, texture, level):
    gl.glFramebufferTexture1D(target, attachment, textarget, texture, level)

def glFramebufferTexture2D(target, attachment, textarget, texture, level):
    gl.glFramebufferTexture2D(target, attachment, textarget, texture, level)

def glFramebufferTexture3D(target, attachment, textarget, texture, level, layer):
    gl.glFramebufferTexture3D(target, attachment, textarget, texture, level, layer)

def glFramebufferTextureLayer(target, attachment, texture, level, layer):
    gl.glFramebufferTextureLayer(target, attachment, texture, level, layer)

def glGenFramebuffers(n, unsigned int framebuffers):
    cdef unsigned int* framebuffers1 = &framebuffers
    gl.glGenFramebuffers(n, framebuffers1)

def glGenRenderbuffers(n, unsigned int renderbuffers):
    cdef unsigned int* renderbuffers1 = &renderbuffers
    gl.glGenRenderbuffers(n, renderbuffers1)

def glGenerateMipmap(target):
    gl.glGenerateMipmap(target)

def glGetFramebufferAttachmentParameteriv(target, attachment, pname, int params):
    cdef int* params1 = &params
    gl.glGetFramebufferAttachmentParameteriv(target, attachment, pname, params1)

def glGetRenderbufferParameteriv(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetRenderbufferParameteriv(target, pname, params1)

def glIsFramebuffer(framebuffer):
    return gl.glIsFramebuffer(framebuffer)

def glIsRenderbuffer(renderbuffer):
    return gl.glIsRenderbuffer(renderbuffer)

def glRenderbufferStorage(target, internalformat, width, height):
    gl.glRenderbufferStorage(target, internalformat, width, height)

def glRenderbufferStorageMultisample(target, samples, internalformat, width, height):
    gl.glRenderbufferStorageMultisample(target, samples, internalformat, width, height)

#GL_ARB_framebuffer_sRGB

GL_ARB_framebuffer_sRGB = gl.GL_ARB_framebuffer_sRGB

GL_FRAMEBUFFER_SRGB = gl.GL_FRAMEBUFFER_SRGB

#GL_ARB_geometry_shader4

GL_ARB_geometry_shader4 = gl.GL_ARB_geometry_shader4

GL_LINES_ADJACENCY_ARB = gl.GL_LINES_ADJACENCY_ARB
GL_LINE_STRIP_ADJACENCY_ARB = gl.GL_LINE_STRIP_ADJACENCY_ARB
GL_TRIANGLES_ADJACENCY_ARB = gl.GL_TRIANGLES_ADJACENCY_ARB
GL_TRIANGLE_STRIP_ADJACENCY_ARB = gl.GL_TRIANGLE_STRIP_ADJACENCY_ARB
GL_PROGRAM_POINT_SIZE_ARB = gl.GL_PROGRAM_POINT_SIZE_ARB
GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB = gl.GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB
GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = gl.GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = gl.GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB
GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB = gl.GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB
GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB = gl.GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB
GL_GEOMETRY_SHADER_ARB = gl.GL_GEOMETRY_SHADER_ARB
GL_GEOMETRY_VERTICES_OUT_ARB = gl.GL_GEOMETRY_VERTICES_OUT_ARB
GL_GEOMETRY_INPUT_TYPE_ARB = gl.GL_GEOMETRY_INPUT_TYPE_ARB
GL_GEOMETRY_OUTPUT_TYPE_ARB = gl.GL_GEOMETRY_OUTPUT_TYPE_ARB
GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB = gl.GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB
GL_MAX_VERTEX_VARYING_COMPONENTS_ARB = gl.GL_MAX_VERTEX_VARYING_COMPONENTS_ARB
GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB = gl.GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB
GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB = gl.GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB
GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB = gl.GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB

def glFramebufferTextureARB(target, attachment, texture, level):
    gl.glFramebufferTextureARB(target, attachment, texture, level)

def glFramebufferTextureFaceARB(target, attachment, texture, level, face):
    gl.glFramebufferTextureFaceARB(target, attachment, texture, level, face)

def glFramebufferTextureLayerARB(target, attachment, texture, level, layer):
    gl.glFramebufferTextureLayerARB(target, attachment, texture, level, layer)

def glProgramParameteriARB(program, pname, value):
    gl.glProgramParameteriARB(program, pname, value)

#GL_ARB_get_program_binary

GL_ARB_get_program_binary = gl.GL_ARB_get_program_binary

GL_PROGRAM_BINARY_RETRIEVABLE_HINT = gl.GL_PROGRAM_BINARY_RETRIEVABLE_HINT
GL_PROGRAM_BINARY_LENGTH = gl.GL_PROGRAM_BINARY_LENGTH
GL_NUM_PROGRAM_BINARY_FORMATS = gl.GL_NUM_PROGRAM_BINARY_FORMATS
GL_PROGRAM_BINARY_FORMATS = gl.GL_PROGRAM_BINARY_FORMATS

def glGetProgramBinary(program, bufSize, int length, unsigned int binaryFormat, A):
    cdef int* length1 = &length
    cdef unsigned int* binaryFormat1 = &binaryFormat
    gl.glGetProgramBinary(program, bufSize, length1, binaryFormat1, <void*>A)

def glProgramBinary(program, binaryFormat,  binary, length):
    gl.glProgramBinary(program, binaryFormat,  <void*>binary, length)

def glProgramParameteri(program, pname, value):
    gl.glProgramParameteri(program, pname, value)

#GL_ARB_gpu_shader5

GL_ARB_gpu_shader5 = gl.GL_ARB_gpu_shader5

GL_GEOMETRY_SHADER_INVOCATIONS = gl.GL_GEOMETRY_SHADER_INVOCATIONS
GL_MAX_GEOMETRY_SHADER_INVOCATIONS = gl.GL_MAX_GEOMETRY_SHADER_INVOCATIONS
GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = gl.GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = gl.GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = gl.GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
GL_MAX_VERTEX_STREAMS = gl.GL_MAX_VERTEX_STREAMS

#GL_ARB_gpu_shader_fp64

GL_ARB_gpu_shader_fp64 = gl.GL_ARB_gpu_shader_fp64

GL_DOUBLE_MAT2 = gl.GL_DOUBLE_MAT2
GL_DOUBLE_MAT3 = gl.GL_DOUBLE_MAT3
GL_DOUBLE_MAT4 = gl.GL_DOUBLE_MAT4
GL_DOUBLE_MAT2x3 = gl.GL_DOUBLE_MAT2x3
GL_DOUBLE_MAT2x4 = gl.GL_DOUBLE_MAT2x4
GL_DOUBLE_MAT3x2 = gl.GL_DOUBLE_MAT3x2
GL_DOUBLE_MAT3x4 = gl.GL_DOUBLE_MAT3x4
GL_DOUBLE_MAT4x2 = gl.GL_DOUBLE_MAT4x2
GL_DOUBLE_MAT4x3 = gl.GL_DOUBLE_MAT4x3
GL_DOUBLE_VEC2 = gl.GL_DOUBLE_VEC2
GL_DOUBLE_VEC3 = gl.GL_DOUBLE_VEC3
GL_DOUBLE_VEC4 = gl.GL_DOUBLE_VEC4

def glGetUniformdv(program, location, double params):
    cdef double* params1 = &params
    gl.glGetUniformdv(program, location, params1)

def glProgramUniform1dEXT(program, location, x):
    gl.glProgramUniform1dEXT(program, location, x)

def glProgramUniform1dvEXT(program, location, count,  double value):
    cdef double* value1 = &value
    gl.glProgramUniform1dvEXT(program, location, count,  value1)

def glProgramUniform2dEXT(program, location, x, y):
    gl.glProgramUniform2dEXT(program, location, x, y)

def glProgramUniform2dvEXT(program, location, count, double value):
    cdef double* value1 = &value
    gl.glProgramUniform2dvEXT(program, location, count,  value1)

def glProgramUniform3dEXT(program, location, x, y, z):
    gl.glProgramUniform3dEXT(program, location, x, y, z)

def glProgramUniform3dvEXT(program, location, count, double value):
    cdef double* value1 = &value
    gl.glProgramUniform3dvEXT(program, location, count,  value1)

def glProgramUniform4dEXT(program, location, x, y, z, w):
    gl.glProgramUniform4dEXT(program, location, x, y, z, w)

def glProgramUniform4dvEXT(program, location, count, double value):
    cdef double* value1 = &value
    gl.glProgramUniform4dvEXT(program, location, count,  value1)

def glProgramUniformMatrix2dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix2dvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix2x3dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix2x3dvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix2x4dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix2x4dvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix3dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix3dvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix3x2dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix3x2dvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix3x4dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix3x4dvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix4dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix4dvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix4x2dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix4x2dvEXT(program, location, count, transpose,  value1)

def glProgramUniformMatrix4x3dvEXT(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix4x3dvEXT(program, location, count, transpose,  value1)

def glUniform1d(location, x):
    gl.glUniform1d(location, x)

def glUniform1dv(location, count, double value):
    cdef double* value1 = &value
    gl.glUniform1dv(location, count,  value1)

def glUniform2d(location, x, y):
    gl.glUniform2d(location, x, y)

def glUniform2dv(location, count, double value):
    cdef double* value1 = &value
    gl.glUniform2dv(location, count,  value1)

def glUniform3d(location, x, y, z):
    gl.glUniform3d(location, x, y, z)

def glUniform3dv(location, count, double value):
    cdef double* value1 = &value
    gl.glUniform3dv(location, count,  value1)

def glUniform4d(location, x, y, z, w):
    gl.glUniform4d(location, x, y, z, w)

def glUniform4dv(location, count, double value):
    cdef double* value1 = &value
    gl.glUniform4dv(location, count,  value1)

def glUniformMatrix2dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix2dv(location, count, transpose,  value1)

def glUniformMatrix2x3dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix2x3dv(location, count, transpose,  value1)

def glUniformMatrix2x4dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix2x4dv(location, count, transpose,  value1)

def glUniformMatrix3dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix3dv(location, count, transpose,  value1)

def glUniformMatrix3x2dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix3x2dv(location, count, transpose,  value1)

def glUniformMatrix3x4dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix3x4dv(location, count, transpose,  value1)

def glUniformMatrix4dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix4dv(location, count, transpose,  value1)

def glUniformMatrix4x2dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix4x2dv(location, count, transpose,  value1)

def glUniformMatrix4x3dv(location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glUniformMatrix4x3dv(location, count, transpose,  value1)

#GL_ARB_half_float_pixel

GL_ARB_half_float_pixel = gl.GL_ARB_half_float_pixel

GL_HALF_FLOAT_ARB = gl.GL_HALF_FLOAT_ARB

#GL_ARB_half_float_vertex

GL_ARB_half_float_vertex = gl.GL_ARB_half_float_vertex

GL_HALF_FLOAT = gl.GL_HALF_FLOAT

#GL_ARB_imaging

GL_ARB_imaging = gl.GL_ARB_imaging

GL_CONSTANT_COLOR = gl.GL_CONSTANT_COLOR
GL_ONE_MINUS_CONSTANT_COLOR = gl.GL_ONE_MINUS_CONSTANT_COLOR
GL_CONSTANT_ALPHA = gl.GL_CONSTANT_ALPHA
GL_ONE_MINUS_CONSTANT_ALPHA = gl.GL_ONE_MINUS_CONSTANT_ALPHA
GL_BLEND_COLOR = gl.GL_BLEND_COLOR
GL_FUNC_ADD = gl.GL_FUNC_ADD
GL_MIN = gl.GL_MIN
GL_MAX = gl.GL_MAX
GL_BLEND_EQUATION = gl.GL_BLEND_EQUATION
GL_FUNC_SUBTRACT = gl.GL_FUNC_SUBTRACT
GL_FUNC_REVERSE_SUBTRACT = gl.GL_FUNC_REVERSE_SUBTRACT
GL_CONVOLUTION_1D = gl.GL_CONVOLUTION_1D
GL_CONVOLUTION_2D = gl.GL_CONVOLUTION_2D
GL_SEPARABLE_2D = gl.GL_SEPARABLE_2D
GL_CONVOLUTION_BORDER_MODE = gl.GL_CONVOLUTION_BORDER_MODE
GL_CONVOLUTION_FILTER_SCALE = gl.GL_CONVOLUTION_FILTER_SCALE
GL_CONVOLUTION_FILTER_BIAS = gl.GL_CONVOLUTION_FILTER_BIAS
GL_REDUCE = gl.GL_REDUCE
GL_CONVOLUTION_FORMAT = gl.GL_CONVOLUTION_FORMAT
GL_CONVOLUTION_WIDTH = gl.GL_CONVOLUTION_WIDTH
GL_CONVOLUTION_HEIGHT = gl.GL_CONVOLUTION_HEIGHT
GL_MAX_CONVOLUTION_WIDTH = gl.GL_MAX_CONVOLUTION_WIDTH
GL_MAX_CONVOLUTION_HEIGHT = gl.GL_MAX_CONVOLUTION_HEIGHT
GL_POST_CONVOLUTION_RED_SCALE = gl.GL_POST_CONVOLUTION_RED_SCALE
GL_POST_CONVOLUTION_GREEN_SCALE = gl.GL_POST_CONVOLUTION_GREEN_SCALE
GL_POST_CONVOLUTION_BLUE_SCALE = gl.GL_POST_CONVOLUTION_BLUE_SCALE
GL_POST_CONVOLUTION_ALPHA_SCALE = gl.GL_POST_CONVOLUTION_ALPHA_SCALE
GL_POST_CONVOLUTION_RED_BIAS = gl.GL_POST_CONVOLUTION_RED_BIAS
GL_POST_CONVOLUTION_GREEN_BIAS = gl.GL_POST_CONVOLUTION_GREEN_BIAS
GL_POST_CONVOLUTION_BLUE_BIAS = gl.GL_POST_CONVOLUTION_BLUE_BIAS
GL_POST_CONVOLUTION_ALPHA_BIAS = gl.GL_POST_CONVOLUTION_ALPHA_BIAS
GL_HISTOGRAM = gl.GL_HISTOGRAM
GL_PROXY_HISTOGRAM = gl.GL_PROXY_HISTOGRAM
GL_HISTOGRAM_WIDTH = gl.GL_HISTOGRAM_WIDTH
GL_HISTOGRAM_FORMAT = gl.GL_HISTOGRAM_FORMAT
GL_HISTOGRAM_RED_SIZE = gl.GL_HISTOGRAM_RED_SIZE
GL_HISTOGRAM_GREEN_SIZE = gl.GL_HISTOGRAM_GREEN_SIZE
GL_HISTOGRAM_BLUE_SIZE = gl.GL_HISTOGRAM_BLUE_SIZE
GL_HISTOGRAM_ALPHA_SIZE = gl.GL_HISTOGRAM_ALPHA_SIZE
GL_HISTOGRAM_LUMINANCE_SIZE = gl.GL_HISTOGRAM_LUMINANCE_SIZE
GL_HISTOGRAM_SINK = gl.GL_HISTOGRAM_SINK
GL_MINMAX = gl.GL_MINMAX
GL_MINMAX_FORMAT = gl.GL_MINMAX_FORMAT
GL_MINMAX_SINK = gl.GL_MINMAX_SINK
GL_TABLE_TOO_LARGE = gl.GL_TABLE_TOO_LARGE
GL_COLOR_MATRIX = gl.GL_COLOR_MATRIX
GL_COLOR_MATRIX_STACK_DEPTH = gl.GL_COLOR_MATRIX_STACK_DEPTH
GL_MAX_COLOR_MATRIX_STACK_DEPTH = gl.GL_MAX_COLOR_MATRIX_STACK_DEPTH
GL_POST_COLOR_MATRIX_RED_SCALE = gl.GL_POST_COLOR_MATRIX_RED_SCALE
GL_POST_COLOR_MATRIX_GREEN_SCALE = gl.GL_POST_COLOR_MATRIX_GREEN_SCALE
GL_POST_COLOR_MATRIX_BLUE_SCALE = gl.GL_POST_COLOR_MATRIX_BLUE_SCALE
GL_POST_COLOR_MATRIX_ALPHA_SCALE = gl.GL_POST_COLOR_MATRIX_ALPHA_SCALE
GL_POST_COLOR_MATRIX_RED_BIAS = gl.GL_POST_COLOR_MATRIX_RED_BIAS
GL_POST_COLOR_MATRIX_GREEN_BIAS = gl.GL_POST_COLOR_MATRIX_GREEN_BIAS
GL_POST_COLOR_MATRIX_BLUE_BIAS = gl.GL_POST_COLOR_MATRIX_BLUE_BIAS
GL_POST_COLOR_MATRIX_ALPHA_BIAS = gl.GL_POST_COLOR_MATRIX_ALPHA_BIAS
GL_COLOR_TABLE = gl.GL_COLOR_TABLE
GL_POST_CONVOLUTION_COLOR_TABLE = gl.GL_POST_CONVOLUTION_COLOR_TABLE
GL_POST_COLOR_MATRIX_COLOR_TABLE = gl.GL_POST_COLOR_MATRIX_COLOR_TABLE
GL_PROXY_COLOR_TABLE = gl.GL_PROXY_COLOR_TABLE
GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = gl.GL_PROXY_POST_CONVOLUTION_COLOR_TABLE
GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = gl.GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
GL_COLOR_TABLE_SCALE = gl.GL_COLOR_TABLE_SCALE
GL_COLOR_TABLE_BIAS = gl.GL_COLOR_TABLE_BIAS
GL_COLOR_TABLE_FORMAT = gl.GL_COLOR_TABLE_FORMAT
GL_COLOR_TABLE_WIDTH = gl.GL_COLOR_TABLE_WIDTH
GL_COLOR_TABLE_RED_SIZE = gl.GL_COLOR_TABLE_RED_SIZE
GL_COLOR_TABLE_GREEN_SIZE = gl.GL_COLOR_TABLE_GREEN_SIZE
GL_COLOR_TABLE_BLUE_SIZE = gl.GL_COLOR_TABLE_BLUE_SIZE
GL_COLOR_TABLE_ALPHA_SIZE = gl.GL_COLOR_TABLE_ALPHA_SIZE
GL_COLOR_TABLE_LUMINANCE_SIZE = gl.GL_COLOR_TABLE_LUMINANCE_SIZE
GL_COLOR_TABLE_INTENSITY_SIZE = gl.GL_COLOR_TABLE_INTENSITY_SIZE
GL_IGNORE_BORDER = gl.GL_IGNORE_BORDER
GL_CONSTANT_BORDER = gl.GL_CONSTANT_BORDER
GL_WRAP_BORDER = gl.GL_WRAP_BORDER
GL_REPLICATE_BORDER = gl.GL_REPLICATE_BORDER
GL_CONVOLUTION_BORDER_COLOR = gl.GL_CONVOLUTION_BORDER_COLOR

def glColorSubTable(target, start, count, format, type, data):
    gl.glColorSubTable(target, start, count, format, type, <void*>data)

def glColorTable(target, internalformat, width, format, type, table):
    gl.glColorTable(target, internalformat, width, format, type, <void*>table)

def glColorTableParameterfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glColorTableParameterfv(target, pname, params1)

def glColorTableParameteriv(target, pname, int params):
    cdef int* params1 = &params
    gl.glColorTableParameteriv(target, pname, params1)

def glConvolutionFilter1D(target, internalformat, width, format, type, image):
    gl.glConvolutionFilter1D(target, internalformat, width, format, type, <void*>image)

def glConvolutionFilter2D(target, internalformat, width, height, format, type, image):
    gl.glConvolutionFilter2D(target, internalformat, width, height, format, type, <void*>image)

def glConvolutionParameterf(target, pname, params):
    gl.glConvolutionParameterf(target, pname, params)

def glConvolutionParameterfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glConvolutionParameterfv(target, pname, params1)

def glConvolutionParameteri(target, pname, params):
    gl.glConvolutionParameteri(target, pname, params)

def glConvolutionParameteriv(target, pname, int params):
    cdef int* params1 = &params
    gl.glConvolutionParameteriv(target, pname, params1)

def glCopyColorSubTable(target, start, x, y, width):
    gl.glCopyColorSubTable(target, start, x, y, width)

def glCopyColorTable(target, internalformat, x, y, width):
    gl.glCopyColorTable(target, internalformat, x, y, width)

def glCopyConvolutionFilter1D(target, internalformat, x, y, width):
    gl.glCopyConvolutionFilter1D(target, internalformat, x, y, width)

def glCopyConvolutionFilter2D(target, internalformat, x, y, width, height):
    gl.glCopyConvolutionFilter2D(target, internalformat, x, y, width, height)

def glGetColorTable(target, format, type, table):
    gl.glGetColorTable(target, format, type, <void*>table)

def glGetColorTableParameterfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetColorTableParameterfv(target, pname, params1)

def glGetColorTableParameteriv(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetColorTableParameteriv(target, pname, params1)

def glGetConvolutionFilter(target, format, type, image):
    gl.glGetConvolutionFilter(target, format, type, <void*>image)

def glGetConvolutionParameterfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetConvolutionParameterfv(target, pname, params1)

def glGetConvolutionParameteriv(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetConvolutionParameteriv(target, pname, params1)

def glGetHistogram(target, reset, format, type, values):
    gl.glGetHistogram(target, reset, format, type, <void*>values)

def glGetHistogramParameterfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetHistogramParameterfv(target, pname, params1)

def glGetHistogramParameteriv(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetHistogramParameteriv(target, pname, params1)

def glGetMinmax(target, reset, format, types, values):
    gl.glGetMinmax(target, reset, format, types, <void*>values)

def glGetMinmaxParameterfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetMinmaxParameterfv(target, pname, params1)

def glGetMinmaxParameteriv(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetMinmaxParameteriv(target, pname, params1)

def glGetSeparableFilter(target, format, type, row, column, span):
    gl.glGetSeparableFilter(target, format, type, <void*>row, <void*>column, <void*>span)

def glHistogram(target, width, internalformat, sink):
    gl.glHistogram(target, width, internalformat, sink)

def glMinmax(target, internalformat, sink):
    gl.glMinmax(target, internalformat, sink)

def glResetHistogram(target):
    gl.glResetHistogram(target)

def glResetMinmax(target):
    gl.glResetMinmax(target)

def glSeparableFilter2D(target, internalformat, width, height, format, type, row, column):
    gl.glSeparableFilter2D(target, internalformat, width, height, format, type, <void*>row, <void*>column)

#GL_ARB_instanced_arrays

GL_ARB_instanced_arrays = gl.GL_ARB_instanced_arrays

GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB = gl.GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB

def glDrawArraysInstancedARB(mode, first, count, primcount):
    gl.glDrawArraysInstancedARB(mode, first, count, primcount)

def glDrawElementsInstancedARB(mode, count, type,  indices, primcount):
    gl.glDrawElementsInstancedARB(mode, count, type,  <void*>indices, primcount)

def glVertexAttribDivisorARB(index, divisor):
    gl.glVertexAttribDivisorARB(index, divisor)

#GL_ARB_internalformat_query

GL_ARB_internalformat_query = gl.GL_ARB_internalformat_query

GL_NUM_SAMPLE_COUNTS = gl.GL_NUM_SAMPLE_COUNTS

def glGetInternalformativ(target, internalformat, pname, bufSize, int params):
    cdef int* params1 = &params
    gl.glGetInternalformativ(target, internalformat, pname, bufSize, params1)

#GL_ARB_map_buffer_alignment

GL_ARB_map_buffer_alignment = gl.GL_ARB_map_buffer_alignment

GL_MIN_MAP_BUFFER_ALIGNMENT = gl.GL_MIN_MAP_BUFFER_ALIGNMENT

#GL_ARB_map_buffer_range

GL_ARB_map_buffer_range = gl.GL_ARB_map_buffer_range

GL_MAP_READ_BIT = gl.GL_MAP_READ_BIT
GL_MAP_WRITE_BIT = gl.GL_MAP_WRITE_BIT
GL_MAP_INVALIDATE_RANGE_BIT = gl.GL_MAP_INVALIDATE_RANGE_BIT
GL_MAP_INVALIDATE_BUFFER_BIT = gl.GL_MAP_INVALIDATE_BUFFER_BIT
GL_MAP_FLUSH_EXPLICIT_BIT = gl.GL_MAP_FLUSH_EXPLICIT_BIT
GL_MAP_UNSYNCHRONIZED_BIT = gl.GL_MAP_UNSYNCHRONIZED_BIT

def glFlushMappedBufferRange(target, offset, length):
    gl.glFlushMappedBufferRange(target, offset, length)

# NEEDS TESTING GL_MAP_BUFFER_RANGE
cdef void *ragequit(target, offset, length, access):
    return gl.glMapBufferRange(target, offset, length, access)
    
def glMapBufferRange(target, offset, length, access):
    test = <char*>ragequit(target, offset, length, access)
    return ctypes.cast(test,ctypes.c_void_p).value

#GL_ARB_matrix_palette

GL_ARB_matrix_palette = gl.GL_ARB_matrix_palette

GL_MATRIX_PALETTE_ARB = gl.GL_MATRIX_PALETTE_ARB
GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = gl.GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB
GL_MAX_PALETTE_MATRICES_ARB = gl.GL_MAX_PALETTE_MATRICES_ARB
GL_CURRENT_PALETTE_MATRIX_ARB = gl.GL_CURRENT_PALETTE_MATRIX_ARB
GL_MATRIX_INDEX_ARRAY_ARB = gl.GL_MATRIX_INDEX_ARRAY_ARB
GL_CURRENT_MATRIX_INDEX_ARB = gl.GL_CURRENT_MATRIX_INDEX_ARB
GL_MATRIX_INDEX_ARRAY_SIZE_ARB = gl.GL_MATRIX_INDEX_ARRAY_SIZE_ARB
GL_MATRIX_INDEX_ARRAY_TYPE_ARB = gl.GL_MATRIX_INDEX_ARRAY_TYPE_ARB
GL_MATRIX_INDEX_ARRAY_STRIDE_ARB = gl.GL_MATRIX_INDEX_ARRAY_STRIDE_ARB
GL_MATRIX_INDEX_ARRAY_POINTER_ARB = gl.GL_MATRIX_INDEX_ARRAY_POINTER_ARB

def glCurrentPaletteMatrixARB(index):
    gl.glCurrentPaletteMatrixARB(index)

def glMatrixIndexPointerARB(size, type, stride, pointer):
    gl.glMatrixIndexPointerARB(size, type, stride, <void*>pointer)

def glMatrixIndexubvARB(size, unsigned char indices):
    cdef unsigned char* indices1 = &indices
    gl.glMatrixIndexubvARB(size, indices1)

def glMatrixIndexuivARB(size, unsigned int indices):
    cdef unsigned int* indices1 = &indices
    gl.glMatrixIndexuivARB(size, indices1)

def glMatrixIndexusvARB(size, unsigned short indices):
    cdef unsigned short* indices1 = &indices
    gl.glMatrixIndexusvARB(size, indices1)

#GL_ARB_multisample

GL_ARB_multisample = gl.GL_ARB_multisample

GL_MULTISAMPLE_ARB = gl.GL_MULTISAMPLE_ARB
GL_SAMPLE_ALPHA_TO_COVERAGE_ARB = gl.GL_SAMPLE_ALPHA_TO_COVERAGE_ARB
GL_SAMPLE_ALPHA_TO_ONE_ARB = gl.GL_SAMPLE_ALPHA_TO_ONE_ARB
GL_SAMPLE_COVERAGE_ARB = gl.GL_SAMPLE_COVERAGE_ARB
GL_SAMPLE_BUFFERS_ARB = gl.GL_SAMPLE_BUFFERS_ARB
GL_SAMPLES_ARB = gl.GL_SAMPLES_ARB
GL_SAMPLE_COVERAGE_VALUE_ARB = gl.GL_SAMPLE_COVERAGE_VALUE_ARB
GL_SAMPLE_COVERAGE_INVERT_ARB = gl.GL_SAMPLE_COVERAGE_INVERT_ARB
GL_MULTISAMPLE_BIT_ARB = gl.GL_MULTISAMPLE_BIT_ARB

def glSampleCoverageARB(value, invert):
    gl.glSampleCoverageARB(value, invert)

#GL_ARB_multitexture

GL_ARB_multitexture = gl.GL_ARB_multitexture

GL_TEXTURE0_ARB = gl.GL_TEXTURE0_ARB
GL_TEXTURE1_ARB = gl.GL_TEXTURE1_ARB
GL_TEXTURE2_ARB = gl.GL_TEXTURE2_ARB
GL_TEXTURE3_ARB = gl.GL_TEXTURE3_ARB
GL_TEXTURE4_ARB = gl.GL_TEXTURE4_ARB
GL_TEXTURE5_ARB = gl.GL_TEXTURE5_ARB
GL_TEXTURE6_ARB = gl.GL_TEXTURE6_ARB
GL_TEXTURE7_ARB = gl.GL_TEXTURE7_ARB
GL_TEXTURE8_ARB = gl.GL_TEXTURE8_ARB
GL_TEXTURE9_ARB = gl.GL_TEXTURE9_ARB
GL_TEXTURE10_ARB = gl.GL_TEXTURE10_ARB
GL_TEXTURE11_ARB = gl.GL_TEXTURE11_ARB
GL_TEXTURE12_ARB = gl.GL_TEXTURE12_ARB
GL_TEXTURE13_ARB = gl.GL_TEXTURE13_ARB
GL_TEXTURE14_ARB = gl.GL_TEXTURE14_ARB
GL_TEXTURE15_ARB = gl.GL_TEXTURE15_ARB
GL_TEXTURE16_ARB = gl.GL_TEXTURE16_ARB
GL_TEXTURE17_ARB = gl.GL_TEXTURE17_ARB
GL_TEXTURE18_ARB = gl.GL_TEXTURE18_ARB
GL_TEXTURE19_ARB = gl.GL_TEXTURE19_ARB
GL_TEXTURE20_ARB = gl.GL_TEXTURE20_ARB
GL_TEXTURE21_ARB = gl.GL_TEXTURE21_ARB
GL_TEXTURE22_ARB = gl.GL_TEXTURE22_ARB
GL_TEXTURE23_ARB = gl.GL_TEXTURE23_ARB
GL_TEXTURE24_ARB = gl.GL_TEXTURE24_ARB
GL_TEXTURE25_ARB = gl.GL_TEXTURE25_ARB
GL_TEXTURE26_ARB = gl.GL_TEXTURE26_ARB
GL_TEXTURE27_ARB = gl.GL_TEXTURE27_ARB
GL_TEXTURE28_ARB = gl.GL_TEXTURE28_ARB
GL_TEXTURE29_ARB = gl.GL_TEXTURE29_ARB
GL_TEXTURE30_ARB = gl.GL_TEXTURE30_ARB
GL_TEXTURE31_ARB = gl.GL_TEXTURE31_ARB
GL_ACTIVE_TEXTURE_ARB = gl.GL_ACTIVE_TEXTURE_ARB
GL_CLIENT_ACTIVE_TEXTURE_ARB = gl.GL_CLIENT_ACTIVE_TEXTURE_ARB
GL_MAX_TEXTURE_UNITS_ARB = gl.GL_MAX_TEXTURE_UNITS_ARB

def glActiveTextureARB(texture):
    gl.glActiveTextureARB(texture)

def glClientActiveTextureARB(texture):
    gl.glClientActiveTextureARB(texture)

def glMultiTexCoord1dARB(target, s):
    gl.glMultiTexCoord1dARB(target, s)

def glMultiTexCoord1dvARB(target, double v):
    cdef double* v1 = &v
    gl.glMultiTexCoord1dvARB(target, v1)

def glMultiTexCoord1fARB(target, s):
    gl.glMultiTexCoord1fARB(target, s)

def glMultiTexCoord1fvARB(target, float v):
    cdef float* v1 = &v
    gl.glMultiTexCoord1fvARB(target, v1)

def glMultiTexCoord1iARB(target, s):
    gl.glMultiTexCoord1iARB(target, s)

def glMultiTexCoord1ivARB(target, int v):
    cdef int* v1 = &v
    gl.glMultiTexCoord1ivARB(target, v1)

def glMultiTexCoord1sARB(target, s):
    gl.glMultiTexCoord1sARB(target, s)

def glMultiTexCoord1svARB(target, short v):
    cdef short* v1 = &v
    gl.glMultiTexCoord1svARB(target, v1)

def glMultiTexCoord2dARB(target, s, t):
    gl.glMultiTexCoord2dARB(target, s, t)

def glMultiTexCoord2dvARB(target, double v):
    cdef double* v1 = &v
    gl.glMultiTexCoord2dvARB(target, v1)

def glMultiTexCoord2fARB(target, s, t):
    gl.glMultiTexCoord2fARB(target, s, t)

def glMultiTexCoord2fvARB(target, float v):
    cdef float* v1 = &v
    gl.glMultiTexCoord2fvARB(target, v1)

def glMultiTexCoord2iARB(target, s, t):
    gl.glMultiTexCoord2iARB(target, s, t)

def glMultiTexCoord2ivARB(target, int v):
    cdef int* v1 = &v
    gl.glMultiTexCoord2ivARB(target, v1)

def glMultiTexCoord2sARB(target, s, t):
    gl.glMultiTexCoord2sARB(target, s, t)

def glMultiTexCoord2svARB(target,short v):
    cdef short* v1 = &v
    gl.glMultiTexCoord2svARB(target, v1)

def glMultiTexCoord3dARB(target, s, t, r):
    gl.glMultiTexCoord3dARB(target, s, t, r)

def glMultiTexCoord3dvARB(target, double v):
    cdef double* v1 = &v
    gl.glMultiTexCoord3dvARB(target, v1)

def glMultiTexCoord3fARB(target, s, t, r):
    gl.glMultiTexCoord3fARB(target, s, t, r)

def glMultiTexCoord3fvARB(target, float v):
    cdef float* v1 = &v
    gl.glMultiTexCoord3fvARB(target, v1)

def glMultiTexCoord3iARB(target, s, t, r):
    gl.glMultiTexCoord3iARB(target, s, t, r)

def glMultiTexCoord3ivARB(target, int v):
    cdef int* v1 = &v
    gl.glMultiTexCoord3ivARB(target, v1)

def glMultiTexCoord3sARB(target, s, t, r):
    gl.glMultiTexCoord3sARB(target, s, t, r)

def glMultiTexCoord3svARB(target, short v):
    cdef short* v1 = &v
    gl.glMultiTexCoord3svARB(target, v1)

def glMultiTexCoord4dARB(target, s, t, r, q):
    gl.glMultiTexCoord4dARB(target, s, t, r, q)

def glMultiTexCoord4dvARB(target, double v):
    cdef double* v1 = &v
    gl.glMultiTexCoord4dvARB(target, v1)

def glMultiTexCoord4fARB(target, s, t, r, q):
    gl.glMultiTexCoord4fARB(target, s, t, r, q)

def glMultiTexCoord4fvARB(target, float v):
    cdef float* v1 = &v
    gl.glMultiTexCoord4fvARB(target, v1)

def glMultiTexCoord4iARB(target, s, t, r, q):
    gl.glMultiTexCoord4iARB(target, s, t, r, q)

def glMultiTexCoord4ivARB(target, int v):
    cdef int* v1 = &v
    gl.glMultiTexCoord4ivARB(target, v1)

def glMultiTexCoord4sARB(target, s, t, r, q):
    gl.glMultiTexCoord4sARB(target, s, t, r, q)

def glMultiTexCoord4svARB(target, short v):
    cdef short* v1 = &v
    gl.glMultiTexCoord4svARB(target, v1)

#GL_ARB_occlusion_query

GL_ARB_occlusion_query = gl.GL_ARB_occlusion_query

GL_QUERY_COUNTER_BITS_ARB = gl.GL_QUERY_COUNTER_BITS_ARB
GL_CURRENT_QUERY_ARB = gl.GL_CURRENT_QUERY_ARB
GL_QUERY_RESULT_ARB = gl.GL_QUERY_RESULT_ARB
GL_QUERY_RESULT_AVAILABLE_ARB = gl.GL_QUERY_RESULT_AVAILABLE_ARB
GL_SAMPLES_PASSED_ARB = gl.GL_SAMPLES_PASSED_ARB

def glBeginQueryARB(target, id):
    gl.glBeginQueryARB(target, id)

def glDeleteQueriesARB(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glDeleteQueriesARB(n, ids1)

def glEndQueryARB(target):
    gl.glEndQueryARB(target)

def glGenQueriesARB(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glGenQueriesARB(n, ids1)

def glGetQueryObjectivARB(id, pname, int params):
    cdef int* params1 = &params
    gl.glGetQueryObjectivARB(id, pname, params1)

def glGetQueryObjectuivARB(id, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetQueryObjectuivARB(id, pname, params1)

def glGetQueryivARB(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetQueryivARB(target, pname, params1)

def glIsQueryARB(id):
    return gl.glIsQueryARB(id)

#GL_ARB_occlusion_query2

GL_ARB_occlusion_query2 = gl.GL_ARB_occlusion_query2

GL_ANY_SAMPLES_PASSED = gl.GL_ANY_SAMPLES_PASSED

#GL_ARB_pixel_buffer_object

GL_ARB_pixel_buffer_object = gl.GL_ARB_pixel_buffer_object

GL_PIXEL_PACK_BUFFER_ARB = gl.GL_PIXEL_PACK_BUFFER_ARB
GL_PIXEL_UNPACK_BUFFER_ARB = gl.GL_PIXEL_UNPACK_BUFFER_ARB
GL_PIXEL_PACK_BUFFER_BINDING_ARB = gl.GL_PIXEL_PACK_BUFFER_BINDING_ARB
GL_PIXEL_UNPACK_BUFFER_BINDING_ARB = gl.GL_PIXEL_UNPACK_BUFFER_BINDING_ARB

#GL_ARB_point_parameters

GL_ARB_point_parameters = gl.GL_ARB_point_parameters

GL_POINT_SIZE_MIN_ARB = gl.GL_POINT_SIZE_MIN_ARB
GL_POINT_SIZE_MAX_ARB = gl.GL_POINT_SIZE_MAX_ARB
GL_POINT_FADE_THRESHOLD_SIZE_ARB = gl.GL_POINT_FADE_THRESHOLD_SIZE_ARB
GL_POINT_DISTANCE_ATTENUATION_ARB = gl.GL_POINT_DISTANCE_ATTENUATION_ARB

def glPointParameterfARB(pname, param):
    gl.glPointParameterfARB(pname, param)

def glPointParameterfvARB(pname, float params):
    cdef float* params1 = &params
    gl.glPointParameterfvARB(pname,  params1)

#GL_ARB_point_sprite

GL_ARB_point_sprite = gl.GL_ARB_point_sprite

GL_POINT_SPRITE_ARB = gl.GL_POINT_SPRITE_ARB
GL_COORD_REPLACE_ARB = gl.GL_COORD_REPLACE_ARB

#GL_ARB_provoking_vertex

GL_ARB_provoking_vertex = gl.GL_ARB_provoking_vertex

GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = gl.GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
GL_FIRST_VERTEX_CONVENTION = gl.GL_FIRST_VERTEX_CONVENTION
GL_LAST_VERTEX_CONVENTION = gl.GL_LAST_VERTEX_CONVENTION
GL_PROVOKING_VERTEX = gl.GL_PROVOKING_VERTEX

def glProvokingVertex(mode):
    gl.glProvokingVertex(mode)

#GL_ARB_robustness

GL_ARB_robustness = gl.GL_ARB_robustness

GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = gl.GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB
GL_LOSE_CONTEXT_ON_RESET_ARB = gl.GL_LOSE_CONTEXT_ON_RESET_ARB
GL_GUILTY_CONTEXT_RESET_ARB = gl.GL_GUILTY_CONTEXT_RESET_ARB
GL_INNOCENT_CONTEXT_RESET_ARB = gl.GL_INNOCENT_CONTEXT_RESET_ARB
GL_UNKNOWN_CONTEXT_RESET_ARB = gl.GL_UNKNOWN_CONTEXT_RESET_ARB
GL_RESET_NOTIFICATION_STRATEGY_ARB = gl.GL_RESET_NOTIFICATION_STRATEGY_ARB
GL_NO_RESET_NOTIFICATION_ARB = gl.GL_NO_RESET_NOTIFICATION_ARB

def glGetGraphicsResetStatusARB():
    return gl.glGetGraphicsResetStatusARB()

def glGetnColorTableARB(target, format, type, bufSize, table):
    gl.glGetnColorTableARB(target, format, type, bufSize, <void*>table)

def glGetnCompressedTexImageARB(target, lod, bufSize, img):
    gl.glGetnCompressedTexImageARB(target, lod, bufSize, <void*>img)

def glGetnConvolutionFilterARB(target, format, type, bufSize, image):
    gl.glGetnConvolutionFilterARB(target, format, type, bufSize, <void*>image)

def glGetnHistogramARB(target, reset, format, type, bufSize, values):
    gl.glGetnHistogramARB(target, reset, format, type, bufSize, <void*>values)

def glGetnMapdvARB(target, query, bufSize, double v):
    cdef double* v1 = &v
    gl.glGetnMapdvARB(target, query, bufSize, v1)

def glGetnMapfvARB(target, query, bufSize, float v):
    cdef float* v1 = &v
    gl.glGetnMapfvARB(target, query, bufSize, v1)

def glGetnMapivARB(target, query, bufSize, int v):
    cdef int* v1 = &v
    gl.glGetnMapivARB(target, query, bufSize, v1)

def glGetnMinmaxARB(target, reset, format, type, bufSize, values):
    gl.glGetnMinmaxARB(target, reset, format, type, bufSize, <void*>values)

def glGetnPixelMapfvARB(map, bufSize, float values):
    cdef float* values1 = &values
    gl.glGetnPixelMapfvARB(map, bufSize, values1)

def glGetnPixelMapuivARB(map, bufSize, unsigned int values):
    cdef unsigned int* values1 = &values
    gl.glGetnPixelMapuivARB(map, bufSize, values1)

def glGetnPixelMapusvARB(map, bufSize, unsigned short values):
    cdef unsigned short* values1 = &values
    gl.glGetnPixelMapusvARB(map, bufSize, values1)

def glGetnPolygonStippleARB(bufSize, unsigned char pattern):
    cdef unsigned char* pattern1 = &pattern
    gl.glGetnPolygonStippleARB(bufSize, pattern1)

def glGetnSeparableFilterARB(target, format, type, rowBufSize, row, columnBufSize, A, B):
    gl.glGetnSeparableFilterARB(target, format, type, rowBufSize, <void*>row, columnBufSize, <void*>A, <void*>B)

def glGetnTexImageARB(target, level, format, type, bufSize, img):
    gl.glGetnTexImageARB(target, level, format, type, bufSize, <void*>img)

def glGetnUniformdvARB(program, location, bufSize, double params):
    cdef double* params1 = &params
    gl.glGetnUniformdvARB(program, location, bufSize, params1)

def glGetnUniformfvARB(program, location, bufSize, float params):
    cdef float* params1 = &params
    gl.glGetnUniformfvARB(program, location, bufSize, params1)

def glGetnUniformivARB(program, location, bufSize, int params):
    cdef int* params1 = &params
    gl.glGetnUniformivARB(program, location, bufSize, params1)

def glGetnUniformuivARB(program, location, bufSize, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetnUniformuivARB(program, location, bufSize, params1)

def glReadnPixelsARB(x, y, width, height, format, type, bufSize, data):
    gl.glReadnPixelsARB(x, y, width, height, format, type, bufSize, <void*>data)

#GL_ARB_sample_shading

GL_ARB_sample_shading = gl.GL_ARB_sample_shading

GL_SAMPLE_SHADING_ARB = gl.GL_SAMPLE_SHADING_ARB
GL_MIN_SAMPLE_SHADING_VALUE_ARB = gl.GL_MIN_SAMPLE_SHADING_VALUE_ARB

def glMinSampleShadingARB(value):
    gl.glMinSampleShadingARB(value)

#GL_ARB_sampler_objects

GL_ARB_sampler_objects = gl.GL_ARB_sampler_objects

GL_SAMPLER_BINDING = gl.GL_SAMPLER_BINDING

def glBindSampler(unit, sampler):
    gl.glBindSampler(unit, sampler)

def glDeleteSamplers(count, unsigned int samplers):
    cdef unsigned int* samplers1 = &samplers
    gl.glDeleteSamplers(count,  samplers1)

def glGenSamplers(count, unsigned int samplers):
    cdef unsigned int* samplers1 = &samplers
    gl.glGenSamplers(count, samplers1)

def glGetSamplerParameterIiv(sampler, pname, int params):
    cdef int* params1 = &params
    gl.glGetSamplerParameterIiv(sampler, pname, params1)

def glGetSamplerParameterIuiv(sampler, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetSamplerParameterIuiv(sampler, pname, params1)

def glGetSamplerParameterfv(sampler, pname, float params):
    cdef float* params1 = &params
    gl.glGetSamplerParameterfv(sampler, pname, params1)

def glGetSamplerParameteriv(sampler, pname, int params):
    cdef int* params1 = &params
    gl.glGetSamplerParameteriv(sampler, pname, params1)

def glIsSampler(sampler):
    return gl.glIsSampler(sampler)

def glSamplerParameterIiv(sampler, pname, int params):
    cdef int* params1 = &params
    gl.glSamplerParameterIiv(sampler, pname,  params1)

def glSamplerParameterIuiv(sampler, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glSamplerParameterIuiv(sampler, pname, params1)

def glSamplerParameterf(sampler, pname, param):
    gl.glSamplerParameterf(sampler, pname, param)

def glSamplerParameterfv(sampler, pname, float params):
    cdef float* params1 = &params
    gl.glSamplerParameterfv(sampler, pname,  params1)

def glSamplerParameteri(sampler, pname, param):
    gl.glSamplerParameteri(sampler, pname, param)

def glSamplerParameteriv(sampler, pname, int params):
    cdef int* params1 = &params
    gl.glSamplerParameteriv(sampler, pname,  params1)

#GL_ARB_seamless_cube_map

GL_ARB_seamless_cube_map = gl.GL_ARB_seamless_cube_map

GL_TEXTURE_CUBE_MAP_SEAMLESS = gl.GL_TEXTURE_CUBE_MAP_SEAMLESS

#GL_ARB_separate_shader_objects

GL_ARB_separate_shader_objects = gl.GL_ARB_separate_shader_objects

GL_VERTEX_SHADER_BIT = gl.GL_VERTEX_SHADER_BIT
GL_FRAGMENT_SHADER_BIT = gl.GL_FRAGMENT_SHADER_BIT
GL_GEOMETRY_SHADER_BIT = gl.GL_GEOMETRY_SHADER_BIT
GL_TESS_CONTROL_SHADER_BIT = gl.GL_TESS_CONTROL_SHADER_BIT
GL_TESS_EVALUATION_SHADER_BIT = gl.GL_TESS_EVALUATION_SHADER_BIT
GL_PROGRAM_SEPARABLE = gl.GL_PROGRAM_SEPARABLE
GL_ACTIVE_PROGRAM = gl.GL_ACTIVE_PROGRAM
GL_PROGRAM_PIPELINE_BINDING = gl.GL_PROGRAM_PIPELINE_BINDING
GL_ALL_SHADER_BITS = gl.GL_ALL_SHADER_BITS

def glActiveShaderProgram(pipeline, program):
    gl.glActiveShaderProgram(pipeline, program)

def glBindProgramPipeline(pipeline):
    gl.glBindProgramPipeline(pipeline)

def glCreateShaderProgramv(type, count,  strings):
    cdef char* c = <char*>strings
    return gl.glCreateShaderProgramv(type, count,  &c)

def glDeleteProgramPipelines(n, unsigned int pipelines):
    cdef unsigned int* pipelines1 = &pipelines
    gl.glDeleteProgramPipelines(n, pipelines1)

def glGenProgramPipelines(n, unsigned int pipelines):
    cdef unsigned int* pipelines1 = &pipelines
    gl.glGenProgramPipelines(n, pipelines1)

def glGetProgramPipelineInfoLog(pipeline, bufSize, int length, infoLog):
    cdef int* length1 = &length
    gl.glGetProgramPipelineInfoLog(pipeline, bufSize, length1, infoLog)

def glGetProgramPipelineiv(pipeline, pname, int params):
    cdef int* params1 = &params
    gl.glGetProgramPipelineiv(pipeline, pname, params1)

def glIsProgramPipeline(pipeline):
    return gl.glIsProgramPipeline(pipeline)

def glProgramUniform1d(program, location, x):
    gl.glProgramUniform1d(program, location, x)

def glProgramUniform1dv(program, location, count, double value):
    cdef double* value1 = &value
    gl.glProgramUniform1dv(program, location, count,  value1)

def glProgramUniform1f(program, location, x):
    gl.glProgramUniform1f(program, location, x)

def glProgramUniform1fv(program, location, count, float value):
    cdef float* value1 = &value
    gl.glProgramUniform1fv(program, location, count,  value1)

def glProgramUniform1i(program, location, x):
    gl.glProgramUniform1i(program, location, x)

def glProgramUniform1iv(program, location, count, int value):
    cdef int* value1 = &value
    gl.glProgramUniform1iv(program, location, count,  value1)

def glProgramUniform1ui(program, location, x):
    gl.glProgramUniform1ui(program, location, x)

def glProgramUniform1uiv(program, location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glProgramUniform1uiv(program, location, count, value1)

def glProgramUniform2d(program, location, x, y):
    gl.glProgramUniform2d(program, location, x, y)

def glProgramUniform2dv(program, location, count, double value):
    cdef double* value1 = &value
    gl.glProgramUniform2dv(program, location, count,  value1)

def glProgramUniform2f(program, location, x, y):
    gl.glProgramUniform2f(program, location, x, y)

def glProgramUniform2fv(program, location, count, float value):
    cdef float* value1 = &value
    gl.glProgramUniform2fv(program, location, count,  value1)

def glProgramUniform2i(program, location, x, y):
    gl.glProgramUniform2i(program, location, x, y)

def glProgramUniform2iv(program, location, count, int value):
    cdef int* value1 = &value
    gl.glProgramUniform2iv(program, location, count,  value1)

def glProgramUniform2ui(program, location, x, y):
    gl.glProgramUniform2ui(program, location, x, y)

def glProgramUniform2uiv(program, location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glProgramUniform2uiv(program, location, count, value1)

def glProgramUniform3d(program, location, x, y, z):
    gl.glProgramUniform3d(program, location, x, y, z)

def glProgramUniform3dv(program, location, count, double value):
    cdef double* value1 = &value
    gl.glProgramUniform3dv(program, location, count,  value1)

def glProgramUniform3f(program, location, x, y, z):
    gl.glProgramUniform3f(program, location, x, y, z)

def glProgramUniform3fv(program, location, count, float value):
    cdef float* value1 = &value
    gl.glProgramUniform3fv(program, location, count,  value1)

def glProgramUniform3i(program, location, x, y, z):
    gl.glProgramUniform3i(program, location, x, y, z)

def glProgramUniform3iv(program, location, count, int value):
    cdef int* value1 = &value
    gl.glProgramUniform3iv(program, location, count,  value1)

def glProgramUniform3ui(program, location, x, y, z):
    gl.glProgramUniform3ui(program, location, x, y, z)

def glProgramUniform3uiv(program, location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glProgramUniform3uiv(program, location, count, value1)

def glProgramUniform4d(program, location, x, y, z, w):
    gl.glProgramUniform4d(program, location, x, y, z, w)

def glProgramUniform4dv(program, location, count, double value):
    cdef double* value1 = &value
    gl.glProgramUniform4dv(program, location, count,  value1)

def glProgramUniform4f(program, location, x, y, z, w):
    gl.glProgramUniform4f(program, location, x, y, z, w)

def glProgramUniform4fv(program, location, count, float value):
    cdef float* value1 = &value
    gl.glProgramUniform4fv(program, location, count,  value1)

def glProgramUniform4i(program, location, x, y, z, w):
    gl.glProgramUniform4i(program, location, x, y, z, w)

def glProgramUniform4iv(program, location, count, int value):
    cdef int* value1 = &value
    gl.glProgramUniform4iv(program, location, count,  value1)

def glProgramUniform4ui(program, location, x, y, z, w):
    gl.glProgramUniform4ui(program, location, x, y, z, w)

def glProgramUniform4uiv(program, location, count, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glProgramUniform4uiv(program, location, count, value1)

def glProgramUniformMatrix2dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix2dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix2fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix2fv(program, location, count, transpose,  value1)

def glProgramUniformMatrix2x3dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix2x3dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix2x3fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix2x3fv(program, location, count, transpose,  value1)

def glProgramUniformMatrix2x4dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix2x4dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix2x4fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix2x4fv(program, location, count, transpose,  value1)

def glProgramUniformMatrix3dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix3dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix3fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix3fv(program, location, count, transpose,  value1)

def glProgramUniformMatrix3x2dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix3x2dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix3x2fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix3x2fv(program, location, count, transpose,  value1)

def glProgramUniformMatrix3x4dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix3x4dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix3x4fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix3x4fv(program, location, count, transpose,  value1)

def glProgramUniformMatrix4dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix4dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix4fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix4fv(program, location, count, transpose,  value1)

def glProgramUniformMatrix4x2dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix4x2dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix4x2fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix4x2fv(program, location, count, transpose,  value1)

def glProgramUniformMatrix4x3dv(program, location, count, transpose, double value):
    cdef double* value1 = &value
    gl.glProgramUniformMatrix4x3dv(program, location, count, transpose,  value1)

def glProgramUniformMatrix4x3fv(program, location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glProgramUniformMatrix4x3fv(program, location, count, transpose,  value1)

def glUseProgramStages(pipeline, stages, program):
    gl.glUseProgramStages(pipeline, stages, program)

def glValidateProgramPipeline(pipeline):
    gl.glValidateProgramPipeline(pipeline)

#GL_ARB_shader_atomic_counters

GL_ARB_shader_atomic_counters = gl.GL_ARB_shader_atomic_counters

GL_ATOMIC_COUNTER_BUFFER = gl.GL_ATOMIC_COUNTER_BUFFER
GL_ATOMIC_COUNTER_BUFFER_BINDING = gl.GL_ATOMIC_COUNTER_BUFFER_BINDING
GL_ATOMIC_COUNTER_BUFFER_START = gl.GL_ATOMIC_COUNTER_BUFFER_START
GL_ATOMIC_COUNTER_BUFFER_SIZE = gl.GL_ATOMIC_COUNTER_BUFFER_SIZE
GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = gl.GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = gl.GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = gl.GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = gl.GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = gl.GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = gl.GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = gl.GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = gl.GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = gl.GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = gl.GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = gl.GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = gl.GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = gl.GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = gl.GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
GL_MAX_VERTEX_ATOMIC_COUNTERS = gl.GL_MAX_VERTEX_ATOMIC_COUNTERS
GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = gl.GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = gl.GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
GL_MAX_GEOMETRY_ATOMIC_COUNTERS = gl.GL_MAX_GEOMETRY_ATOMIC_COUNTERS
GL_MAX_FRAGMENT_ATOMIC_COUNTERS = gl.GL_MAX_FRAGMENT_ATOMIC_COUNTERS
GL_MAX_COMBINED_ATOMIC_COUNTERS = gl.GL_MAX_COMBINED_ATOMIC_COUNTERS
GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = gl.GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = gl.GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = gl.GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
GL_UNSIGNED_INT_ATOMIC_COUNTER = gl.GL_UNSIGNED_INT_ATOMIC_COUNTER
GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = gl.GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS

def glGetActiveAtomicCounterBufferiv(program, bufferIndex, pname, int params):
    cdef int* params1 = &params
    gl.glGetActiveAtomicCounterBufferiv(program, bufferIndex, pname, params1)

#GL_ARB_shader_bit_encoding

GL_ARB_shader_bit_encoding = gl.GL_ARB_shader_bit_encoding

#GL_ARB_shader_image_load_store

GL_ARB_shader_image_load_store = gl.GL_ARB_shader_image_load_store

GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = gl.GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
GL_ELEMENT_ARRAY_BARRIER_BIT = gl.GL_ELEMENT_ARRAY_BARRIER_BIT
GL_UNIFORM_BARRIER_BIT = gl.GL_UNIFORM_BARRIER_BIT
GL_TEXTURE_FETCH_BARRIER_BIT = gl.GL_TEXTURE_FETCH_BARRIER_BIT
GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = gl.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
GL_COMMAND_BARRIER_BIT = gl.GL_COMMAND_BARRIER_BIT
GL_PIXEL_BUFFER_BARRIER_BIT = gl.GL_PIXEL_BUFFER_BARRIER_BIT
GL_TEXTURE_UPDATE_BARRIER_BIT = gl.GL_TEXTURE_UPDATE_BARRIER_BIT
GL_BUFFER_UPDATE_BARRIER_BIT = gl.GL_BUFFER_UPDATE_BARRIER_BIT
GL_FRAMEBUFFER_BARRIER_BIT = gl.GL_FRAMEBUFFER_BARRIER_BIT
GL_TRANSFORM_FEEDBACK_BARRIER_BIT = gl.GL_TRANSFORM_FEEDBACK_BARRIER_BIT
GL_ATOMIC_COUNTER_BARRIER_BIT = gl.GL_ATOMIC_COUNTER_BARRIER_BIT
GL_MAX_IMAGE_UNITS = gl.GL_MAX_IMAGE_UNITS
GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = gl.GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
GL_IMAGE_BINDING_NAME = gl.GL_IMAGE_BINDING_NAME
GL_IMAGE_BINDING_LEVEL = gl.GL_IMAGE_BINDING_LEVEL
GL_IMAGE_BINDING_LAYERED = gl.GL_IMAGE_BINDING_LAYERED
GL_IMAGE_BINDING_LAYER = gl.GL_IMAGE_BINDING_LAYER
GL_IMAGE_BINDING_ACCESS = gl.GL_IMAGE_BINDING_ACCESS
GL_IMAGE_1D = gl.GL_IMAGE_1D
GL_IMAGE_2D = gl.GL_IMAGE_2D
GL_IMAGE_3D = gl.GL_IMAGE_3D
GL_IMAGE_2D_RECT = gl.GL_IMAGE_2D_RECT
GL_IMAGE_CUBE = gl.GL_IMAGE_CUBE
GL_IMAGE_BUFFER = gl.GL_IMAGE_BUFFER
GL_IMAGE_1D_ARRAY = gl.GL_IMAGE_1D_ARRAY
GL_IMAGE_2D_ARRAY = gl.GL_IMAGE_2D_ARRAY
GL_IMAGE_CUBE_MAP_ARRAY = gl.GL_IMAGE_CUBE_MAP_ARRAY
GL_IMAGE_2D_MULTISAMPLE = gl.GL_IMAGE_2D_MULTISAMPLE
GL_IMAGE_2D_MULTISAMPLE_ARRAY = gl.GL_IMAGE_2D_MULTISAMPLE_ARRAY
GL_INT_IMAGE_1D = gl.GL_INT_IMAGE_1D
GL_INT_IMAGE_2D = gl.GL_INT_IMAGE_2D
GL_INT_IMAGE_3D = gl.GL_INT_IMAGE_3D
GL_INT_IMAGE_2D_RECT = gl.GL_INT_IMAGE_2D_RECT
GL_INT_IMAGE_CUBE = gl.GL_INT_IMAGE_CUBE
GL_INT_IMAGE_BUFFER = gl.GL_INT_IMAGE_BUFFER
GL_INT_IMAGE_1D_ARRAY = gl.GL_INT_IMAGE_1D_ARRAY
GL_INT_IMAGE_2D_ARRAY = gl.GL_INT_IMAGE_2D_ARRAY
GL_INT_IMAGE_CUBE_MAP_ARRAY = gl.GL_INT_IMAGE_CUBE_MAP_ARRAY
GL_INT_IMAGE_2D_MULTISAMPLE = gl.GL_INT_IMAGE_2D_MULTISAMPLE
GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = gl.GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
GL_UNSIGNED_INT_IMAGE_1D = gl.GL_UNSIGNED_INT_IMAGE_1D
GL_UNSIGNED_INT_IMAGE_2D = gl.GL_UNSIGNED_INT_IMAGE_2D
GL_UNSIGNED_INT_IMAGE_3D = gl.GL_UNSIGNED_INT_IMAGE_3D
GL_UNSIGNED_INT_IMAGE_2D_RECT = gl.GL_UNSIGNED_INT_IMAGE_2D_RECT
GL_UNSIGNED_INT_IMAGE_CUBE = gl.GL_UNSIGNED_INT_IMAGE_CUBE
GL_UNSIGNED_INT_IMAGE_BUFFER = gl.GL_UNSIGNED_INT_IMAGE_BUFFER
GL_UNSIGNED_INT_IMAGE_1D_ARRAY = gl.GL_UNSIGNED_INT_IMAGE_1D_ARRAY
GL_UNSIGNED_INT_IMAGE_2D_ARRAY = gl.GL_UNSIGNED_INT_IMAGE_2D_ARRAY
GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = gl.GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = gl.GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = gl.GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
GL_MAX_IMAGE_SAMPLES = gl.GL_MAX_IMAGE_SAMPLES
GL_IMAGE_BINDING_FORMAT = gl.GL_IMAGE_BINDING_FORMAT
GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = gl.GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = gl.GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = gl.GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
GL_MAX_VERTEX_IMAGE_UNIFORMS = gl.GL_MAX_VERTEX_IMAGE_UNIFORMS
GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = gl.GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = gl.GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
GL_MAX_GEOMETRY_IMAGE_UNIFORMS = gl.GL_MAX_GEOMETRY_IMAGE_UNIFORMS
GL_MAX_FRAGMENT_IMAGE_UNIFORMS = gl.GL_MAX_FRAGMENT_IMAGE_UNIFORMS
GL_MAX_COMBINED_IMAGE_UNIFORMS = gl.GL_MAX_COMBINED_IMAGE_UNIFORMS
GL_ALL_BARRIER_BITS = gl.GL_ALL_BARRIER_BITS

def glBindImageTexture(unit, texture, level, layered, layer, access, format):
    gl.glBindImageTexture(unit, texture, level, layered, layer, access, format)

def glMemoryBarrier(barriers):
    gl.glMemoryBarrier(barriers)

#GL_ARB_shader_objects

GL_ARB_shader_objects = gl.GL_ARB_shader_objects

GL_PROGRAM_OBJECT_ARB = gl.GL_PROGRAM_OBJECT_ARB
GL_SHADER_OBJECT_ARB = gl.GL_SHADER_OBJECT_ARB
GL_OBJECT_TYPE_ARB = gl.GL_OBJECT_TYPE_ARB
GL_OBJECT_SUBTYPE_ARB = gl.GL_OBJECT_SUBTYPE_ARB
GL_FLOAT_VEC2_ARB = gl.GL_FLOAT_VEC2_ARB
GL_FLOAT_VEC3_ARB = gl.GL_FLOAT_VEC3_ARB
GL_FLOAT_VEC4_ARB = gl.GL_FLOAT_VEC4_ARB
GL_INT_VEC2_ARB = gl.GL_INT_VEC2_ARB
GL_INT_VEC3_ARB = gl.GL_INT_VEC3_ARB
GL_INT_VEC4_ARB = gl.GL_INT_VEC4_ARB
GL_BOOL_ARB = gl.GL_BOOL_ARB
GL_BOOL_VEC2_ARB = gl.GL_BOOL_VEC2_ARB
GL_BOOL_VEC3_ARB = gl.GL_BOOL_VEC3_ARB
GL_BOOL_VEC4_ARB = gl.GL_BOOL_VEC4_ARB
GL_FLOAT_MAT2_ARB = gl.GL_FLOAT_MAT2_ARB
GL_FLOAT_MAT3_ARB = gl.GL_FLOAT_MAT3_ARB
GL_FLOAT_MAT4_ARB = gl.GL_FLOAT_MAT4_ARB
GL_SAMPLER_1D_ARB = gl.GL_SAMPLER_1D_ARB
GL_SAMPLER_2D_ARB = gl.GL_SAMPLER_2D_ARB
GL_SAMPLER_3D_ARB = gl.GL_SAMPLER_3D_ARB
GL_SAMPLER_CUBE_ARB = gl.GL_SAMPLER_CUBE_ARB
GL_SAMPLER_1D_SHADOW_ARB = gl.GL_SAMPLER_1D_SHADOW_ARB
GL_SAMPLER_2D_SHADOW_ARB = gl.GL_SAMPLER_2D_SHADOW_ARB
GL_SAMPLER_2D_RECT_ARB = gl.GL_SAMPLER_2D_RECT_ARB
GL_SAMPLER_2D_RECT_SHADOW_ARB = gl.GL_SAMPLER_2D_RECT_SHADOW_ARB
GL_OBJECT_DELETE_STATUS_ARB = gl.GL_OBJECT_DELETE_STATUS_ARB
GL_OBJECT_COMPILE_STATUS_ARB = gl.GL_OBJECT_COMPILE_STATUS_ARB
GL_OBJECT_LINK_STATUS_ARB = gl.GL_OBJECT_LINK_STATUS_ARB
GL_OBJECT_VALIDATE_STATUS_ARB = gl.GL_OBJECT_VALIDATE_STATUS_ARB
GL_OBJECT_INFO_LOG_LENGTH_ARB = gl.GL_OBJECT_INFO_LOG_LENGTH_ARB
GL_OBJECT_ATTACHED_OBJECTS_ARB = gl.GL_OBJECT_ATTACHED_OBJECTS_ARB
GL_OBJECT_ACTIVE_UNIFORMS_ARB = gl.GL_OBJECT_ACTIVE_UNIFORMS_ARB
GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = gl.GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB
GL_OBJECT_SHADER_SOURCE_LENGTH_ARB = gl.GL_OBJECT_SHADER_SOURCE_LENGTH_ARB

def glAttachObjectARB(containerObj, obj):
    gl.glAttachObjectARB(containerObj, obj)

def glCompileShaderARB(shaderObj):
    gl.glCompileShaderARB(shaderObj)

def glCreateProgramObjectARB():
    return gl.glCreateProgramObjectARB()

def glCreateShaderObjectARB(shaderType):
    return gl.glCreateShaderObjectARB(shaderType)

def glDeleteObjectARB(obj):
    gl.glDeleteObjectARB(obj)

def glDetachObjectARB(containerObj, attachedObj):
    gl.glDetachObjectARB(containerObj, attachedObj)

def glGetActiveUniformARB(programObj, index, maxLength, int length, int size, unsigned int type, name):
    cdef int* length1 = &length
    cdef int* size1 = &size
    cdef unsigned int* type1 = &type
    cdef char* name1 = name
    gl.glGetActiveUniformARB(programObj, index, maxLength, length1, size1, type1, name1)

def glGetAttachedObjectsARB(containerObj, maxCount, int count, unsigned int obj):
    cdef int* count1 = &count
    cdef unsigned int* obj1 = &obj
    gl.glGetAttachedObjectsARB(containerObj, maxCount, count1, obj1)

def glGetHandleARB(pname):
    return gl.glGetHandleARB(pname)

def glGetInfoLogARB(obj, maxLength, int length, infoLog):
    cdef int* length1 = &length
    gl.glGetInfoLogARB(obj, maxLength, length1, <char*>infoLog)

def glGetObjectParameterfvARB(obj, pname, float params):
    cdef float* params1 = &params
    gl.glGetObjectParameterfvARB(obj, pname, params1)

def glGetObjectParameterivARB(obj, pname, int params):
    cdef int* params1 = &params
    gl.glGetObjectParameterivARB(obj, pname, params1)

def glGetShaderSourceARB(obj, maxLength, int length, source):
    cdef int* length1 = &length
    cdef char* source1 = source
    gl.glGetShaderSourceARB(obj, maxLength, length1, source1)

def glGetUniformLocationARB(programObj, name):
    return gl.glGetUniformLocationARB(programObj, name)

def glGetUniformfvARB(programObj, location, float params):
    cdef float* params1 = &params
    gl.glGetUniformfvARB(programObj, location, params1)

def glGetUniformivARB(programObj, location, int params):
    cdef int* params1 = &params
    gl.glGetUniformivARB(programObj, location, params1)

def glLinkProgramARB(programObj):
    gl.glLinkProgramARB(programObj)

def glShaderSourceARB(shaderObj, count, string, int length):
    cdef char* c = <char*>string
    cdef int* length1 = <int*>length
    gl.glShaderSourceARB(shaderObj, count, &c, length1)

def glUniform1fARB(location, v0):
    gl.glUniform1fARB(location, v0)

def glUniform1fvARB(location, count, float value):
    cdef float* value1 = &value
    gl.glUniform1fvARB(location, count,  value1)

def glUniform1iARB(location, v0):
    gl.glUniform1iARB(location, v0)

def glUniform1ivARB(location, count, int value):
    cdef int* value1 = &value
    gl.glUniform1ivARB(location, count,  value1)

def glUniform2fARB(location, v0, v1):
    gl.glUniform2fARB(location, v0, v1)

def glUniform2fvARB(location, count, float value):
    cdef float* value1 = &value
    gl.glUniform2fvARB(location, count,  value1)

def glUniform2iARB(location, v0, v1):
    gl.glUniform2iARB(location, v0, v1)

def glUniform2ivARB(location, count, int value):
    cdef int* value1 = &value
    gl.glUniform2ivARB(location, count,  value1)

def glUniform3fARB(location, v0, v1, v2):
    gl.glUniform3fARB(location, v0, v1, v2)

def glUniform3fvARB(location, count, float value):
    cdef float* value1 = &value
    gl.glUniform3fvARB(location, count,  value1)

def glUniform3iARB(location, v0, v1, v2):
    gl.glUniform3iARB(location, v0, v1, v2)

def glUniform3ivARB(location, count, int value):
    cdef int* value1 = &value
    gl.glUniform3ivARB(location, count,  value1)

def glUniform4fARB(location, v0, v1, v2, v3):
    gl.glUniform4fARB(location, v0, v1, v2, v3)

def glUniform4fvARB(location, count, float value):
    cdef float* value1 = &value
    gl.glUniform4fvARB(location, count,  value1)

def glUniform4iARB(location, v0, v1, v2, v3):
    gl.glUniform4iARB(location, v0, v1, v2, v3)

def glUniform4ivARB(location, count, int value):
    cdef int* value1 = &value
    gl.glUniform4ivARB(location, count,  value1)

def glUniformMatrix2fvARB(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix2fvARB(location, count, transpose,  value1)

def glUniformMatrix3fvARB(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix3fvARB(location, count, transpose,  value1)

def glUniformMatrix4fvARB(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix4fvARB(location, count, transpose,  value1)

def glUseProgramObjectARB(programObj):
    gl.glUseProgramObjectARB(programObj)

def glValidateProgramARB(programObj):
    gl.glValidateProgramARB(programObj)

#GL_ARB_shader_precision

GL_ARB_shader_precision = gl.GL_ARB_shader_precision

#GL_ARB_shader_stencil_export

GL_ARB_shader_stencil_export = gl.GL_ARB_shader_stencil_export

#GL_ARB_shader_subroutine

GL_ARB_shader_subroutine = gl.GL_ARB_shader_subroutine

GL_ACTIVE_SUBROUTINES = gl.GL_ACTIVE_SUBROUTINES
GL_ACTIVE_SUBROUTINE_UNIFORMS = gl.GL_ACTIVE_SUBROUTINE_UNIFORMS
GL_MAX_SUBROUTINES = gl.GL_MAX_SUBROUTINES
GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS = gl.GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = gl.GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
GL_ACTIVE_SUBROUTINE_MAX_LENGTH = gl.GL_ACTIVE_SUBROUTINE_MAX_LENGTH
GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = gl.GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
GL_NUM_COMPATIBLE_SUBROUTINES = gl.GL_NUM_COMPATIBLE_SUBROUTINES
GL_COMPATIBLE_SUBROUTINES = gl.GL_COMPATIBLE_SUBROUTINES

def glGetActiveSubroutineName(program, shadertype, index, bufsize, int length, name):
    cdef int* length1 = &length
    gl.glGetActiveSubroutineName(program, shadertype, index, bufsize, length1, name)

def glGetActiveSubroutineUniformName(program, shadertype, index, bufsize, int length, name):
    cdef int* length1 = &length
    gl.glGetActiveSubroutineUniformName(program, shadertype, index, bufsize, length1, name)

def glGetActiveSubroutineUniformiv(program, shadertype, index, pname, int values):
    cdef int* values1 = &values
    gl.glGetActiveSubroutineUniformiv(program, shadertype, index, pname, values1)

def glGetProgramStageiv(program, shadertype, pname, int values):
    cdef int* values1 = &values
    gl.glGetProgramStageiv(program, shadertype, pname, values1)

def glGetSubroutineIndex(program, shadertype,  name):
    return gl.glGetSubroutineIndex(program, shadertype,  name)

def glGetSubroutineUniformLocation(program, shadertype,  name):
    return gl.glGetSubroutineUniformLocation(program, shadertype,  name)

def glGetUniformSubroutineuiv(shadertype, location, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetUniformSubroutineuiv(shadertype, location, params1)

def glUniformSubroutinesuiv(shadertype, count, unsigned int indices):
    cdef unsigned int* indices1 = &indices
    gl.glUniformSubroutinesuiv(shadertype, count, indices1)

#GL_ARB_shader_texture_lod

GL_ARB_shader_texture_lod = gl.GL_ARB_shader_texture_lod

#GL_ARB_shading_language_100

GL_ARB_shading_language_100 = gl.GL_ARB_shading_language_100

GL_SHADING_LANGUAGE_VERSION_ARB = gl.GL_SHADING_LANGUAGE_VERSION_ARB

#GL_ARB_shading_language_420pack

GL_ARB_shading_language_420pack = gl.GL_ARB_shading_language_420pack

#GL_ARB_shading_language_include

GL_ARB_shading_language_include = gl.GL_ARB_shading_language_include

GL_SHADER_INCLUDE_ARB = gl.GL_SHADER_INCLUDE_ARB
GL_NAMED_STRING_LENGTH_ARB = gl.GL_NAMED_STRING_LENGTH_ARB
GL_NAMED_STRING_TYPE_ARB = gl.GL_NAMED_STRING_TYPE_ARB

def glCompileShaderIncludeARB(shader, count,  path, int length):
    cdef char* c = <char*>path
    cdef int* length1 = &length
    gl.glCompileShaderIncludeARB(shader, count, &c, length1)

def glDeleteNamedStringARB(namelen,  name):
    gl.glDeleteNamedStringARB(namelen,  name)

def glGetNamedStringARB(namelen,  name, bufSize, int stringlen, string):
    cdef int* stringlen1 = &stringlen
    gl.glGetNamedStringARB(namelen,  name, bufSize, stringlen1, string)

def glGetNamedStringivARB(namelen,  name, pname, int params):
    cdef int* params1 = &params
    gl.glGetNamedStringivARB(namelen,  name, pname, params1)

def glIsNamedStringARB(namelen,  name):
    return gl.glIsNamedStringARB(namelen,  name)

def glNamedStringARB(type, namelen,  name, stringlen, string):
    gl.glNamedStringARB(type, namelen,  name, stringlen, string)

#GL_ARB_shading_language_packing

GL_ARB_shading_language_packing = gl.GL_ARB_shading_language_packing

#GL_ARB_shadow

GL_ARB_shadow = gl.GL_ARB_shadow

GL_TEXTURE_COMPARE_MODE_ARB = gl.GL_TEXTURE_COMPARE_MODE_ARB
GL_TEXTURE_COMPARE_FUNC_ARB = gl.GL_TEXTURE_COMPARE_FUNC_ARB
GL_COMPARE_R_TO_TEXTURE_ARB = gl.GL_COMPARE_R_TO_TEXTURE_ARB

#GL_ARB_shadow_ambient

GL_ARB_shadow_ambient = gl.GL_ARB_shadow_ambient

GL_TEXTURE_COMPARE_FAIL_VALUE_ARB = gl.GL_TEXTURE_COMPARE_FAIL_VALUE_ARB

#GL_ARB_sync

GL_ARB_sync = gl.GL_ARB_sync

GL_SYNC_FLUSH_COMMANDS_BIT = gl.GL_SYNC_FLUSH_COMMANDS_BIT
GL_MAX_SERVER_WAIT_TIMEOUT = gl.GL_MAX_SERVER_WAIT_TIMEOUT
GL_OBJECT_TYPE = gl.GL_OBJECT_TYPE
GL_SYNC_CONDITION = gl.GL_SYNC_CONDITION
GL_SYNC_STATUS = gl.GL_SYNC_STATUS
GL_SYNC_FLAGS = gl.GL_SYNC_FLAGS
GL_SYNC_FENCE = gl.GL_SYNC_FENCE
GL_SYNC_GPU_COMMANDS_COMPLETE = gl.GL_SYNC_GPU_COMMANDS_COMPLETE
GL_UNSIGNALED = gl.GL_UNSIGNALED
GL_SIGNALED = gl.GL_SIGNALED
GL_ALREADY_SIGNALED = gl.GL_ALREADY_SIGNALED
GL_TIMEOUT_EXPIRED = gl.GL_TIMEOUT_EXPIRED
GL_CONDITION_SATISFIED = gl.GL_CONDITION_SATISFIED
GL_WAIT_FAILED = gl.GL_WAIT_FAILED
GL_TIMEOUT_IGNORED = gl.GL_TIMEOUT_IGNORED

def glClientWaitSync(GLsync1, flags, timeout):
    waffle = GLsync_blah()
    waffle.test = <gl.GLsync>GLsync1.test
    return gl.glClientWaitSync(waffle.test, flags, timeout)

def glDeleteSync(GLsync1):
    waffle = GLsync_blah()
    waffle.test = <gl.GLsync>GLsync1.test
    gl.glDeleteSync(waffle.test)

#def glFenceSync(condition, flags):    
#    waffle = GLsync_blah()
#    waffle.test = gl.glFenceSync(condition,flags)
#    caik = GLsynchronize()
#    caik.test = waffle.test
#    return caik

def glGetInteger64v(pname, signed long long params):
    cdef signed long long* params1 = &params
    gl.glGetInteger64v(pname, params1)

def glGetSynciv(GLsync1, pname, bufSize, int length, int values):
    waffle = GLsync_blah()
    waffle.test = <gl.GLsync>GLsync1.test
    gl.glGetSynciv(waffle.test, pname, bufSize, &length, &values)

def glIsSync(GLsync1):
    waffle = GLsync_blah()
    waffle.test = <gl.GLsync>GLsync1.test
    return gl.glIsSync(waffle.test)

def glWaitSync(GLsync1, flags, timeout):
    waffle = GLsync_blah()
    waffle.test = <gl.GLsync>GLsync1.test
    gl.glWaitSync(waffle.test, flags, timeout)

#GL_ARB_tessellation_shader

GL_ARB_tessellation_shader = gl.GL_ARB_tessellation_shader

GL_PATCHES = gl.GL_PATCHES
GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = gl.GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = gl.GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = gl.GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = gl.GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = gl.GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = gl.GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
GL_PATCH_VERTICES = gl.GL_PATCH_VERTICES
GL_PATCH_DEFAULT_INNER_LEVEL = gl.GL_PATCH_DEFAULT_INNER_LEVEL
GL_PATCH_DEFAULT_OUTER_LEVEL = gl.GL_PATCH_DEFAULT_OUTER_LEVEL
GL_TESS_CONTROL_OUTPUT_VERTICES = gl.GL_TESS_CONTROL_OUTPUT_VERTICES
GL_TESS_GEN_MODE = gl.GL_TESS_GEN_MODE
GL_TESS_GEN_SPACING = gl.GL_TESS_GEN_SPACING
GL_TESS_GEN_VERTEX_ORDER = gl.GL_TESS_GEN_VERTEX_ORDER
GL_TESS_GEN_POINT_MODE = gl.GL_TESS_GEN_POINT_MODE
GL_ISOLINES = gl.GL_ISOLINES
GL_FRACTIONAL_ODD = gl.GL_FRACTIONAL_ODD
GL_FRACTIONAL_EVEN = gl.GL_FRACTIONAL_EVEN
GL_MAX_PATCH_VERTICES = gl.GL_MAX_PATCH_VERTICES
GL_MAX_TESS_GEN_LEVEL = gl.GL_MAX_TESS_GEN_LEVEL
GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = gl.GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = gl.GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = gl.GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = gl.GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = gl.GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
GL_MAX_TESS_PATCH_COMPONENTS = gl.GL_MAX_TESS_PATCH_COMPONENTS
GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = gl.GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = gl.GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
GL_TESS_EVALUATION_SHADER = gl.GL_TESS_EVALUATION_SHADER
GL_TESS_CONTROL_SHADER = gl.GL_TESS_CONTROL_SHADER
GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = gl.GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = gl.GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS

def glPatchParameterfv(pname, float values):
    cdef float* values1 = &values
    gl.glPatchParameterfv(pname,  values1)

def glPatchParameteri(pname, value):
    gl.glPatchParameteri(pname, value)

#GL_ARB_texture_border_clamp

GL_ARB_texture_border_clamp = gl.GL_ARB_texture_border_clamp

GL_CLAMP_TO_BORDER_ARB = gl.GL_CLAMP_TO_BORDER_ARB

#GL_ARB_texture_buffer_object

GL_ARB_texture_buffer_object = gl.GL_ARB_texture_buffer_object

GL_TEXTURE_BUFFER_ARB = gl.GL_TEXTURE_BUFFER_ARB
GL_MAX_TEXTURE_BUFFER_SIZE_ARB = gl.GL_MAX_TEXTURE_BUFFER_SIZE_ARB
GL_TEXTURE_BINDING_BUFFER_ARB = gl.GL_TEXTURE_BINDING_BUFFER_ARB
GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB = gl.GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB
GL_TEXTURE_BUFFER_FORMAT_ARB = gl.GL_TEXTURE_BUFFER_FORMAT_ARB

def glTexBufferARB(target, internalformat, buffer):
    gl.glTexBufferARB(target, internalformat, buffer)

#GL_ARB_texture_buffer_object_rgb32

GL_ARB_texture_buffer_object_rgb32 = gl.GL_ARB_texture_buffer_object_rgb32

#GL_ARB_texture_compression

GL_ARB_texture_compression = gl.GL_ARB_texture_compression

GL_COMPRESSED_ALPHA_ARB = gl.GL_COMPRESSED_ALPHA_ARB
GL_COMPRESSED_LUMINANCE_ARB = gl.GL_COMPRESSED_LUMINANCE_ARB
GL_COMPRESSED_LUMINANCE_ALPHA_ARB = gl.GL_COMPRESSED_LUMINANCE_ALPHA_ARB
GL_COMPRESSED_INTENSITY_ARB = gl.GL_COMPRESSED_INTENSITY_ARB
GL_COMPRESSED_RGB_ARB = gl.GL_COMPRESSED_RGB_ARB
GL_COMPRESSED_RGBA_ARB = gl.GL_COMPRESSED_RGBA_ARB
GL_TEXTURE_COMPRESSION_HINT_ARB = gl.GL_TEXTURE_COMPRESSION_HINT_ARB
GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB = gl.GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB
GL_TEXTURE_COMPRESSED_ARB = gl.GL_TEXTURE_COMPRESSED_ARB
GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB = gl.GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB
GL_COMPRESSED_TEXTURE_FORMATS_ARB = gl.GL_COMPRESSED_TEXTURE_FORMATS_ARB

def glCompressedTexImage1DARB(target, level, internalformat, width, border, imageSize,  data):
    gl.glCompressedTexImage1DARB(target, level, internalformat, width, border, imageSize,  <void*>data)

def glCompressedTexImage2DARB(target, level, internalformat, width, height, border, imageSize,  data):
    gl.glCompressedTexImage2DARB(target, level, internalformat, width, height, border, imageSize,  <void*>data)

def glCompressedTexImage3DARB(target, level, internalformat, width, height, depth, border, imageSize,  data):
    gl.glCompressedTexImage3DARB(target, level, internalformat, width, height, depth, border, imageSize,  <void*>data)

def glCompressedTexSubImage1DARB(target, level, xoffset, width, format, imageSize,  data):
    gl.glCompressedTexSubImage1DARB(target, level, xoffset, width, format, imageSize,  <void*>data)

def glCompressedTexSubImage2DARB(target, level, xoffset, yoffset, width, height, format, imageSize,  data):
    gl.glCompressedTexSubImage2DARB(target, level, xoffset, yoffset, width, height, format, imageSize,  <void*>data)

def glCompressedTexSubImage3DARB(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize,  data):
    gl.glCompressedTexSubImage3DARB(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize,  <void*>data)

def glGetCompressedTexImageARB(target, lod, img):
    gl.glGetCompressedTexImageARB(target, lod, <void*>img)

#GL_ARB_texture_compression_bptc

GL_ARB_texture_compression_bptc = gl.GL_ARB_texture_compression_bptc

GL_COMPRESSED_RGBA_BPTC_UNORM_ARB = gl.GL_COMPRESSED_RGBA_BPTC_UNORM_ARB
GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = gl.GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = gl.GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = gl.GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB

#GL_ARB_texture_compression_rgtc

GL_ARB_texture_compression_rgtc = gl.GL_ARB_texture_compression_rgtc

GL_COMPRESSED_RED_RGTC1 = gl.GL_COMPRESSED_RED_RGTC1
GL_COMPRESSED_SIGNED_RED_RGTC1 = gl.GL_COMPRESSED_SIGNED_RED_RGTC1
GL_COMPRESSED_RG_RGTC2 = gl.GL_COMPRESSED_RG_RGTC2
GL_COMPRESSED_SIGNED_RG_RGTC2 = gl.GL_COMPRESSED_SIGNED_RG_RGTC2

#GL_ARB_texture_cube_map

GL_ARB_texture_cube_map = gl.GL_ARB_texture_cube_map

GL_NORMAL_MAP_ARB = gl.GL_NORMAL_MAP_ARB
GL_REFLECTION_MAP_ARB = gl.GL_REFLECTION_MAP_ARB
GL_TEXTURE_CUBE_MAP_ARB = gl.GL_TEXTURE_CUBE_MAP_ARB
GL_TEXTURE_BINDING_CUBE_MAP_ARB = gl.GL_TEXTURE_BINDING_CUBE_MAP_ARB
GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB
GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB
GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB
GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB
GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB
GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB
GL_PROXY_TEXTURE_CUBE_MAP_ARB = gl.GL_PROXY_TEXTURE_CUBE_MAP_ARB
GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB = gl.GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB

#GL_ARB_texture_cube_map_array

GL_ARB_texture_cube_map_array = gl.GL_ARB_texture_cube_map_array

GL_TEXTURE_CUBE_MAP_ARRAY_ARB = gl.GL_TEXTURE_CUBE_MAP_ARRAY_ARB
GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB = gl.GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB
GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB = gl.GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB
GL_SAMPLER_CUBE_MAP_ARRAY_ARB = gl.GL_SAMPLER_CUBE_MAP_ARRAY_ARB
GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB = gl.GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB
GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = gl.GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB
GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB = gl.GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB

#GL_ARB_texture_env_add

GL_ARB_texture_env_add = gl.GL_ARB_texture_env_add

#GL_ARB_texture_env_combine

GL_ARB_texture_env_combine = gl.GL_ARB_texture_env_combine

GL_SUBTRACT_ARB = gl.GL_SUBTRACT_ARB
GL_COMBINE_ARB = gl.GL_COMBINE_ARB
GL_COMBINE_RGB_ARB = gl.GL_COMBINE_RGB_ARB
GL_COMBINE_ALPHA_ARB = gl.GL_COMBINE_ALPHA_ARB
GL_RGB_SCALE_ARB = gl.GL_RGB_SCALE_ARB
GL_ADD_SIGNED_ARB = gl.GL_ADD_SIGNED_ARB
GL_INTERPOLATE_ARB = gl.GL_INTERPOLATE_ARB
GL_CONSTANT_ARB = gl.GL_CONSTANT_ARB
GL_PRIMARY_COLOR_ARB = gl.GL_PRIMARY_COLOR_ARB
GL_PREVIOUS_ARB = gl.GL_PREVIOUS_ARB
GL_SOURCE0_RGB_ARB = gl.GL_SOURCE0_RGB_ARB
GL_SOURCE1_RGB_ARB = gl.GL_SOURCE1_RGB_ARB
GL_SOURCE2_RGB_ARB = gl.GL_SOURCE2_RGB_ARB
GL_SOURCE0_ALPHA_ARB = gl.GL_SOURCE0_ALPHA_ARB
GL_SOURCE1_ALPHA_ARB = gl.GL_SOURCE1_ALPHA_ARB
GL_SOURCE2_ALPHA_ARB = gl.GL_SOURCE2_ALPHA_ARB
GL_OPERAND0_RGB_ARB = gl.GL_OPERAND0_RGB_ARB
GL_OPERAND1_RGB_ARB = gl.GL_OPERAND1_RGB_ARB
GL_OPERAND2_RGB_ARB = gl.GL_OPERAND2_RGB_ARB
GL_OPERAND0_ALPHA_ARB = gl.GL_OPERAND0_ALPHA_ARB
GL_OPERAND1_ALPHA_ARB = gl.GL_OPERAND1_ALPHA_ARB
GL_OPERAND2_ALPHA_ARB = gl.GL_OPERAND2_ALPHA_ARB

#GL_ARB_texture_env_crossbar

GL_ARB_texture_env_crossbar = gl.GL_ARB_texture_env_crossbar

#GL_ARB_texture_env_dot3

GL_ARB_texture_env_dot3 = gl.GL_ARB_texture_env_dot3

GL_DOT3_RGB_ARB = gl.GL_DOT3_RGB_ARB
GL_DOT3_RGBA_ARB = gl.GL_DOT3_RGBA_ARB

#GL_ARB_texture_float

GL_ARB_texture_float = gl.GL_ARB_texture_float

GL_RGBA32F_ARB = gl.GL_RGBA32F_ARB
GL_RGB32F_ARB = gl.GL_RGB32F_ARB
GL_ALPHA32F_ARB = gl.GL_ALPHA32F_ARB
GL_INTENSITY32F_ARB = gl.GL_INTENSITY32F_ARB
GL_LUMINANCE32F_ARB = gl.GL_LUMINANCE32F_ARB
GL_LUMINANCE_ALPHA32F_ARB = gl.GL_LUMINANCE_ALPHA32F_ARB
GL_RGBA16F_ARB = gl.GL_RGBA16F_ARB
GL_RGB16F_ARB = gl.GL_RGB16F_ARB
GL_ALPHA16F_ARB = gl.GL_ALPHA16F_ARB
GL_INTENSITY16F_ARB = gl.GL_INTENSITY16F_ARB
GL_LUMINANCE16F_ARB = gl.GL_LUMINANCE16F_ARB
GL_LUMINANCE_ALPHA16F_ARB = gl.GL_LUMINANCE_ALPHA16F_ARB
GL_TEXTURE_RED_TYPE_ARB = gl.GL_TEXTURE_RED_TYPE_ARB
GL_TEXTURE_GREEN_TYPE_ARB = gl.GL_TEXTURE_GREEN_TYPE_ARB
GL_TEXTURE_BLUE_TYPE_ARB = gl.GL_TEXTURE_BLUE_TYPE_ARB
GL_TEXTURE_ALPHA_TYPE_ARB = gl.GL_TEXTURE_ALPHA_TYPE_ARB
GL_TEXTURE_LUMINANCE_TYPE_ARB = gl.GL_TEXTURE_LUMINANCE_TYPE_ARB
GL_TEXTURE_INTENSITY_TYPE_ARB = gl.GL_TEXTURE_INTENSITY_TYPE_ARB
GL_TEXTURE_DEPTH_TYPE_ARB = gl.GL_TEXTURE_DEPTH_TYPE_ARB
GL_UNSIGNED_NORMALIZED_ARB = gl.GL_UNSIGNED_NORMALIZED_ARB

#GL_ARB_texture_gather

GL_ARB_texture_gather = gl.GL_ARB_texture_gather

GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = gl.GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = gl.GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB = gl.GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB

#GL_ARB_texture_mirrored_repeat

GL_ARB_texture_mirrored_repeat = gl.GL_ARB_texture_mirrored_repeat

GL_MIRRORED_REPEAT_ARB = gl.GL_MIRRORED_REPEAT_ARB

#GL_ARB_texture_multisample

GL_ARB_texture_multisample = gl.GL_ARB_texture_multisample

GL_SAMPLE_POSITION = gl.GL_SAMPLE_POSITION
GL_SAMPLE_MASK = gl.GL_SAMPLE_MASK
GL_SAMPLE_MASK_VALUE = gl.GL_SAMPLE_MASK_VALUE
GL_MAX_SAMPLE_MASK_WORDS = gl.GL_MAX_SAMPLE_MASK_WORDS
GL_TEXTURE_2D_MULTISAMPLE = gl.GL_TEXTURE_2D_MULTISAMPLE
GL_PROXY_TEXTURE_2D_MULTISAMPLE = gl.GL_PROXY_TEXTURE_2D_MULTISAMPLE
GL_TEXTURE_2D_MULTISAMPLE_ARRAY = gl.GL_TEXTURE_2D_MULTISAMPLE_ARRAY
GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = gl.GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
GL_TEXTURE_BINDING_2D_MULTISAMPLE = gl.GL_TEXTURE_BINDING_2D_MULTISAMPLE
GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = gl.GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
GL_TEXTURE_SAMPLES = gl.GL_TEXTURE_SAMPLES
GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = gl.GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
GL_SAMPLER_2D_MULTISAMPLE = gl.GL_SAMPLER_2D_MULTISAMPLE
GL_INT_SAMPLER_2D_MULTISAMPLE = gl.GL_INT_SAMPLER_2D_MULTISAMPLE
GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = gl.GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
GL_SAMPLER_2D_MULTISAMPLE_ARRAY = gl.GL_SAMPLER_2D_MULTISAMPLE_ARRAY
GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = gl.GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = gl.GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
GL_MAX_COLOR_TEXTURE_SAMPLES = gl.GL_MAX_COLOR_TEXTURE_SAMPLES
GL_MAX_DEPTH_TEXTURE_SAMPLES = gl.GL_MAX_DEPTH_TEXTURE_SAMPLES
GL_MAX_INTEGER_SAMPLES = gl.GL_MAX_INTEGER_SAMPLES

def glGetMultisamplefv(pname, index, float val):
    cdef float* val1 = &val
    gl.glGetMultisamplefv(pname, index, val1)

def glSampleMaski(index, mask):
    gl.glSampleMaski(index, mask)

def glTexImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations):
    gl.glTexImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations)

def glTexImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations):
    gl.glTexImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations)

#GL_ARB_texture_non_power_of_two

GL_ARB_texture_non_power_of_two = gl.GL_ARB_texture_non_power_of_two

#GL_ARB_texture_query_lod

GL_ARB_texture_query_lod = gl.GL_ARB_texture_query_lod

#GL_ARB_texture_rectangle

GL_ARB_texture_rectangle = gl.GL_ARB_texture_rectangle

GL_TEXTURE_RECTANGLE_ARB = gl.GL_TEXTURE_RECTANGLE_ARB
GL_TEXTURE_BINDING_RECTANGLE_ARB = gl.GL_TEXTURE_BINDING_RECTANGLE_ARB
GL_PROXY_TEXTURE_RECTANGLE_ARB = gl.GL_PROXY_TEXTURE_RECTANGLE_ARB
GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB = gl.GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB
GL_SAMPLER_2D_RECT_ARB = gl.GL_SAMPLER_2D_RECT_ARB
GL_SAMPLER_2D_RECT_SHADOW_ARB = gl.GL_SAMPLER_2D_RECT_SHADOW_ARB

#GL_ARB_texture_rg

GL_ARB_texture_rg = gl.GL_ARB_texture_rg

GL_RED = gl.GL_RED
GL_COMPRESSED_RED = gl.GL_COMPRESSED_RED
GL_COMPRESSED_RG = gl.GL_COMPRESSED_RG
GL_RG = gl.GL_RG
GL_RG_INTEGER = gl.GL_RG_INTEGER
GL_R8 = gl.GL_R8
GL_R16 = gl.GL_R16
GL_RG8 = gl.GL_RG8
GL_RG16 = gl.GL_RG16
GL_R16F = gl.GL_R16F
GL_R32F = gl.GL_R32F
GL_RG16F = gl.GL_RG16F
GL_RG32F = gl.GL_RG32F
GL_R8I = gl.GL_R8I
GL_R8UI = gl.GL_R8UI
GL_R16I = gl.GL_R16I
GL_R16UI = gl.GL_R16UI
GL_R32I = gl.GL_R32I
GL_R32UI = gl.GL_R32UI
GL_RG8I = gl.GL_RG8I
GL_RG8UI = gl.GL_RG8UI
GL_RG16I = gl.GL_RG16I
GL_RG16UI = gl.GL_RG16UI
GL_RG32I = gl.GL_RG32I
GL_RG32UI = gl.GL_RG32UI

#GL_ARB_texture_rgb10_a2ui

GL_ARB_texture_rgb10_a2ui = gl.GL_ARB_texture_rgb10_a2ui

GL_RGB10_A2UI = gl.GL_RGB10_A2UI

#GL_ARB_texture_storage

GL_ARB_texture_storage = gl.GL_ARB_texture_storage

GL_ALPHA8_EXT = gl.GL_ALPHA8_EXT
GL_LUMINANCE8_EXT = gl.GL_LUMINANCE8_EXT
GL_LUMINANCE8_ALPHA8_EXT = gl.GL_LUMINANCE8_ALPHA8_EXT
GL_TEXTURE_IMMUTABLE_FORMAT = gl.GL_TEXTURE_IMMUTABLE_FORMAT

def glTexStorage1D(target, levels, internalformat, width):
    gl.glTexStorage1D(target, levels, internalformat, width)

def glTexStorage2D(target, levels, internalformat, width, height):
    gl.glTexStorage2D(target, levels, internalformat, width, height)

def glTexStorage3D(target, levels, internalformat, width, height, depth):
    gl.glTexStorage3D(target, levels, internalformat, width, height, depth)

def glTextureStorage1DEXT(texture, target, levels, internalformat, width):
    gl.glTextureStorage1DEXT(texture, target, levels, internalformat, width)

def glTextureStorage2DEXT(texture, target, levels, internalformat, width, height):
    gl.glTextureStorage2DEXT(texture, target, levels, internalformat, width, height)

def glTextureStorage3DEXT(texture, target, levels, internalformat, width, height, depth):
    gl.glTextureStorage3DEXT(texture, target, levels, internalformat, width, height, depth)

#GL_ARB_texture_swizzle

GL_ARB_texture_swizzle = gl.GL_ARB_texture_swizzle

GL_TEXTURE_SWIZZLE_R = gl.GL_TEXTURE_SWIZZLE_R
GL_TEXTURE_SWIZZLE_G = gl.GL_TEXTURE_SWIZZLE_G
GL_TEXTURE_SWIZZLE_B = gl.GL_TEXTURE_SWIZZLE_B
GL_TEXTURE_SWIZZLE_A = gl.GL_TEXTURE_SWIZZLE_A
GL_TEXTURE_SWIZZLE_RGBA = gl.GL_TEXTURE_SWIZZLE_RGBA

#GL_ARB_timer_query

GL_ARB_timer_query = gl.GL_ARB_timer_query

GL_TIME_ELAPSED = gl.GL_TIME_ELAPSED
GL_TIMESTAMP = gl.GL_TIMESTAMP

def glGetQueryObjecti64v(id, pname, signed long long params):
    cdef signed long long* params1 = &params
    gl.glGetQueryObjecti64v(id, pname, params1)

def glGetQueryObjectui64v(id, pname, unsigned long long params):
    cdef unsigned long long* params1 = &params
    gl.glGetQueryObjectui64v(id, pname, params1)

def glQueryCounter(id, target):
    gl.glQueryCounter(id, target)

#GL_ARB_transform_feedback2

GL_ARB_transform_feedback2 = gl.GL_ARB_transform_feedback2

GL_TRANSFORM_FEEDBACK = gl.GL_TRANSFORM_FEEDBACK
GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED = gl.GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = gl.GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
GL_TRANSFORM_FEEDBACK_BINDING = gl.GL_TRANSFORM_FEEDBACK_BINDING

def glBindTransformFeedback(target, id):
    gl.glBindTransformFeedback(target, id)

def glDeleteTransformFeedbacks(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glDeleteTransformFeedbacks(n, ids1)

def glDrawTransformFeedback(mode, id):
    gl.glDrawTransformFeedback(mode, id)

def glGenTransformFeedbacks(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glGenTransformFeedbacks(n, ids1)

def glIsTransformFeedback(id):
    return gl.glIsTransformFeedback(id)

def glPauseTransformFeedback():
    gl.glPauseTransformFeedback()

def glResumeTransformFeedback():
    gl.glResumeTransformFeedback()

#GL_ARB_transform_feedback3

GL_ARB_transform_feedback3 = gl.GL_ARB_transform_feedback3

GL_MAX_TRANSFORM_FEEDBACK_BUFFERS = gl.GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
GL_MAX_VERTEX_STREAMS = gl.GL_MAX_VERTEX_STREAMS

def glBeginQueryIndexed(target, index, id):
    gl.glBeginQueryIndexed(target, index, id)

def glDrawTransformFeedbackStream(mode, id, stream):
    gl.glDrawTransformFeedbackStream(mode, id, stream)

def glEndQueryIndexed(target, index):
    gl.glEndQueryIndexed(target, index)

def glGetQueryIndexediv(target, index, pname, int params):
    cdef int* params1 = &params
    gl.glGetQueryIndexediv(target, index, pname, params1)

#GL_ARB_transform_feedback_instanced

GL_ARB_transform_feedback_instanced = gl.GL_ARB_transform_feedback_instanced

def glDrawTransformFeedbackInstanced(mode, id, primcount):
    gl.glDrawTransformFeedbackInstanced(mode, id, primcount)

def glDrawTransformFeedbackStreamInstanced(mode, id, stream, primcount):
    gl.glDrawTransformFeedbackStreamInstanced(mode, id, stream, primcount)

#GL_ARB_transpose_matrix

GL_ARB_transpose_matrix = gl.GL_ARB_transpose_matrix

GL_TRANSPOSE_MODELVIEW_MATRIX_ARB = gl.GL_TRANSPOSE_MODELVIEW_MATRIX_ARB
GL_TRANSPOSE_PROJECTION_MATRIX_ARB = gl.GL_TRANSPOSE_PROJECTION_MATRIX_ARB
GL_TRANSPOSE_TEXTURE_MATRIX_ARB = gl.GL_TRANSPOSE_TEXTURE_MATRIX_ARB
GL_TRANSPOSE_COLOR_MATRIX_ARB = gl.GL_TRANSPOSE_COLOR_MATRIX_ARB

# def glLoadTransposeMatrixdARB(m[16]):
    # gl.glLoadTransposeMatrixdARB(m[16])

# def glLoadTransposeMatrixfARB(m[16]):
    # gl.glLoadTransposeMatrixfARB(m[16])

# def glMultTransposeMatrixdARB(m[16]):
    # gl.glMultTransposeMatrixdARB(m[16])

# def glMultTransposeMatrixfARB(m[16]):
    # gl.glMultTransposeMatrixfARB(m[16])

#GL_ARB_uniform_buffer_object

GL_ARB_uniform_buffer_object = gl.GL_ARB_uniform_buffer_object

GL_UNIFORM_BUFFER = gl.GL_UNIFORM_BUFFER
GL_UNIFORM_BUFFER_BINDING = gl.GL_UNIFORM_BUFFER_BINDING
GL_UNIFORM_BUFFER_START = gl.GL_UNIFORM_BUFFER_START
GL_UNIFORM_BUFFER_SIZE = gl.GL_UNIFORM_BUFFER_SIZE
GL_MAX_VERTEX_UNIFORM_BLOCKS = gl.GL_MAX_VERTEX_UNIFORM_BLOCKS
GL_MAX_GEOMETRY_UNIFORM_BLOCKS = gl.GL_MAX_GEOMETRY_UNIFORM_BLOCKS
GL_MAX_FRAGMENT_UNIFORM_BLOCKS = gl.GL_MAX_FRAGMENT_UNIFORM_BLOCKS
GL_MAX_COMBINED_UNIFORM_BLOCKS = gl.GL_MAX_COMBINED_UNIFORM_BLOCKS
GL_MAX_UNIFORM_BUFFER_BINDINGS = gl.GL_MAX_UNIFORM_BUFFER_BINDINGS
GL_MAX_UNIFORM_BLOCK_SIZE = gl.GL_MAX_UNIFORM_BLOCK_SIZE
GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = gl.GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = gl.GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = gl.GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = gl.GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = gl.GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
GL_ACTIVE_UNIFORM_BLOCKS = gl.GL_ACTIVE_UNIFORM_BLOCKS
GL_UNIFORM_TYPE = gl.GL_UNIFORM_TYPE
GL_UNIFORM_SIZE = gl.GL_UNIFORM_SIZE
GL_UNIFORM_NAME_LENGTH = gl.GL_UNIFORM_NAME_LENGTH
GL_UNIFORM_BLOCK_INDEX = gl.GL_UNIFORM_BLOCK_INDEX
GL_UNIFORM_OFFSET = gl.GL_UNIFORM_OFFSET
GL_UNIFORM_ARRAY_STRIDE = gl.GL_UNIFORM_ARRAY_STRIDE
GL_UNIFORM_MATRIX_STRIDE = gl.GL_UNIFORM_MATRIX_STRIDE
GL_UNIFORM_IS_ROW_MAJOR = gl.GL_UNIFORM_IS_ROW_MAJOR
GL_UNIFORM_BLOCK_BINDING = gl.GL_UNIFORM_BLOCK_BINDING
GL_UNIFORM_BLOCK_DATA_SIZE = gl.GL_UNIFORM_BLOCK_DATA_SIZE
GL_UNIFORM_BLOCK_NAME_LENGTH = gl.GL_UNIFORM_BLOCK_NAME_LENGTH
GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = gl.GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = gl.GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = gl.GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = gl.GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = gl.GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
GL_INVALID_INDEX = gl.GL_INVALID_INDEX

def glBindBufferBase(target, index, buffer):
    gl.glBindBufferBase(target, index, buffer)

def glBindBufferRange(target, index, buffer, offset, size):
    gl.glBindBufferRange(target, index, buffer, offset, size)

def glGetActiveUniformBlockName(program, uniformBlockIndex, bufSize, int length, uniformBlockName):
    cdef int* length1 = &length
    cdef char* uniformBlockName1 = uniformBlockName
    gl.glGetActiveUniformBlockName(program, uniformBlockIndex, bufSize, length1, uniformBlockName1)

def glGetActiveUniformBlockiv(program, uniformBlockIndex, pname, int params):
    cdef int* params1 = &params
    gl.glGetActiveUniformBlockiv(program, uniformBlockIndex, pname, params1)

def glGetActiveUniformName(program, uniformIndex, bufSize, int length, uniformName):
    cdef int* length1 = &length
    cdef char* uniformName1 = uniformName
    gl.glGetActiveUniformName(program, uniformIndex, bufSize, length1, uniformName1)

def glGetActiveUniformsiv(program, uniformCount, unsigned int uniformIndices, pname, int params):
    cdef unsigned int* uniformIndices1 = &uniformIndices
    cdef int* params1 = &params
    gl.glGetActiveUniformsiv(program, uniformCount, uniformIndices1, pname, params1)

def glGetIntegeri_v(target, index, int data):
    cdef int* data1 = &data
    gl.glGetIntegeri_v(target, index, data1)

def glGetUniformBlockIndex(program,  uniformBlockName):
    return gl.glGetUniformBlockIndex(program,  uniformBlockName)

def glGetUniformIndices(program, uniformCount,  uniformNames, unsigned int uniformIndices):
    cdef char* c = <char*>uniformNames
    cdef unsigned int* uniformIndices1 = &uniformIndices
    gl.glGetUniformIndices(program, uniformCount,  &c, uniformIndices1)

def glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding):
    gl.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding)

#GL_ARB_vertex_array_bgra

GL_ARB_vertex_array_bgra = gl.GL_ARB_vertex_array_bgra

GL_BGRA = gl.GL_BGRA

#GL_ARB_vertex_array_object

GL_ARB_vertex_array_object = gl.GL_ARB_vertex_array_object

GL_VERTEX_ARRAY_BINDING = gl.GL_VERTEX_ARRAY_BINDING

def glBindVertexArray(array):
    gl.glBindVertexArray(array)

def glDeleteVertexArrays(n, unsigned int arrays):
    cdef unsigned int* arrays1 = &arrays
    gl.glDeleteVertexArrays(n, arrays1)

def glGenVertexArrays(n, unsigned int arrays):
    cdef unsigned int* arrays1 = &arrays
    gl.glGenVertexArrays(n, arrays1)

def glIsVertexArray(array):
    return gl.glIsVertexArray(array)

#GL_ARB_vertex_attrib_64bit

GL_ARB_vertex_attrib_64bit = gl.GL_ARB_vertex_attrib_64bit

GL_DOUBLE_MAT2 = gl.GL_DOUBLE_MAT2
GL_DOUBLE_MAT3 = gl.GL_DOUBLE_MAT3
GL_DOUBLE_MAT4 = gl.GL_DOUBLE_MAT4
GL_DOUBLE_VEC2 = gl.GL_DOUBLE_VEC2
GL_DOUBLE_VEC3 = gl.GL_DOUBLE_VEC3
GL_DOUBLE_VEC4 = gl.GL_DOUBLE_VEC4

def glGetVertexAttribLdv(index, pname, double params):
    cdef double* params1 = &params
    gl.glGetVertexAttribLdv(index, pname, params1)

def glVertexAttribL1d(index, x):
    gl.glVertexAttribL1d(index, x)

def glVertexAttribL1dv(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttribL1dv(index,  v1)

def glVertexAttribL2d(index, x, y):
    gl.glVertexAttribL2d(index, x, y)

def glVertexAttribL2dv(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttribL2dv(index,  v1)

def glVertexAttribL3d(index, x, y, z):
    gl.glVertexAttribL3d(index, x, y, z)

def glVertexAttribL3dv(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttribL3dv(index,  v1)

def glVertexAttribL4d(index, x, y, z, w):
    gl.glVertexAttribL4d(index, x, y, z, w)

def glVertexAttribL4dv(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttribL4dv(index,  v1)

def glVertexAttribLPointer(index, size, type, stride,  pointer):
    gl.glVertexAttribLPointer(index, size, type, stride,  <void*>pointer)

#GL_ARB_vertex_blend

GL_ARB_vertex_blend = gl.GL_ARB_vertex_blend

GL_MODELVIEW0_ARB = gl.GL_MODELVIEW0_ARB
GL_MODELVIEW1_ARB = gl.GL_MODELVIEW1_ARB
GL_MAX_VERTEX_UNITS_ARB = gl.GL_MAX_VERTEX_UNITS_ARB
GL_ACTIVE_VERTEX_UNITS_ARB = gl.GL_ACTIVE_VERTEX_UNITS_ARB
GL_WEIGHT_SUM_UNITY_ARB = gl.GL_WEIGHT_SUM_UNITY_ARB
GL_VERTEX_BLEND_ARB = gl.GL_VERTEX_BLEND_ARB
GL_CURRENT_WEIGHT_ARB = gl.GL_CURRENT_WEIGHT_ARB
GL_WEIGHT_ARRAY_TYPE_ARB = gl.GL_WEIGHT_ARRAY_TYPE_ARB
GL_WEIGHT_ARRAY_STRIDE_ARB = gl.GL_WEIGHT_ARRAY_STRIDE_ARB
GL_WEIGHT_ARRAY_SIZE_ARB = gl.GL_WEIGHT_ARRAY_SIZE_ARB
GL_WEIGHT_ARRAY_POINTER_ARB = gl.GL_WEIGHT_ARRAY_POINTER_ARB
GL_WEIGHT_ARRAY_ARB = gl.GL_WEIGHT_ARRAY_ARB
GL_MODELVIEW2_ARB = gl.GL_MODELVIEW2_ARB
GL_MODELVIEW3_ARB = gl.GL_MODELVIEW3_ARB
GL_MODELVIEW4_ARB = gl.GL_MODELVIEW4_ARB
GL_MODELVIEW5_ARB = gl.GL_MODELVIEW5_ARB
GL_MODELVIEW6_ARB = gl.GL_MODELVIEW6_ARB
GL_MODELVIEW7_ARB = gl.GL_MODELVIEW7_ARB
GL_MODELVIEW8_ARB = gl.GL_MODELVIEW8_ARB
GL_MODELVIEW9_ARB = gl.GL_MODELVIEW9_ARB
GL_MODELVIEW10_ARB = gl.GL_MODELVIEW10_ARB
GL_MODELVIEW11_ARB = gl.GL_MODELVIEW11_ARB
GL_MODELVIEW12_ARB = gl.GL_MODELVIEW12_ARB
GL_MODELVIEW13_ARB = gl.GL_MODELVIEW13_ARB
GL_MODELVIEW14_ARB = gl.GL_MODELVIEW14_ARB
GL_MODELVIEW15_ARB = gl.GL_MODELVIEW15_ARB
GL_MODELVIEW16_ARB = gl.GL_MODELVIEW16_ARB
GL_MODELVIEW17_ARB = gl.GL_MODELVIEW17_ARB
GL_MODELVIEW18_ARB = gl.GL_MODELVIEW18_ARB
GL_MODELVIEW19_ARB = gl.GL_MODELVIEW19_ARB
GL_MODELVIEW20_ARB = gl.GL_MODELVIEW20_ARB
GL_MODELVIEW21_ARB = gl.GL_MODELVIEW21_ARB
GL_MODELVIEW22_ARB = gl.GL_MODELVIEW22_ARB
GL_MODELVIEW23_ARB = gl.GL_MODELVIEW23_ARB
GL_MODELVIEW24_ARB = gl.GL_MODELVIEW24_ARB
GL_MODELVIEW25_ARB = gl.GL_MODELVIEW25_ARB
GL_MODELVIEW26_ARB = gl.GL_MODELVIEW26_ARB
GL_MODELVIEW27_ARB = gl.GL_MODELVIEW27_ARB
GL_MODELVIEW28_ARB = gl.GL_MODELVIEW28_ARB
GL_MODELVIEW29_ARB = gl.GL_MODELVIEW29_ARB
GL_MODELVIEW30_ARB = gl.GL_MODELVIEW30_ARB
GL_MODELVIEW31_ARB = gl.GL_MODELVIEW31_ARB

def glVertexBlendARB(count):
    gl.glVertexBlendARB(count)

def glWeightPointerARB(size, type, stride, pointer):
    gl.glWeightPointerARB(size, type, stride, <void*>pointer)

def glWeightbvARB(size, signed char weights):
    cdef signed char* weights1 = &weights
    gl.glWeightbvARB(size, weights1)

def glWeightdvARB(size, double weights):
    cdef double* weights1 = &weights
    gl.glWeightdvARB(size, weights1)

def glWeightfvARB(size, float weights):
    cdef float* weights1 = &weights
    gl.glWeightfvARB(size, weights1)

def glWeightivARB(size, int weights):
    cdef int* weights1 = &weights
    gl.glWeightivARB(size, weights1)

def glWeightsvARB(size, short weights):
    cdef short* weights1 = &weights
    gl.glWeightsvARB(size, weights1)

def glWeightubvARB(size, unsigned char weights):
    cdef unsigned char* weights1 = &weights
    gl.glWeightubvARB(size, weights1)

def glWeightuivARB(size, unsigned int weights):
    cdef unsigned int* weights1 = &weights
    gl.glWeightuivARB(size, weights1)

def glWeightusvARB(size, unsigned short weights):
    cdef unsigned short* weights1 = &weights
    gl.glWeightusvARB(size, weights1)

#GL_ARB_vertex_buffer_object

GL_ARB_vertex_buffer_object = gl.GL_ARB_vertex_buffer_object

GL_BUFFER_SIZE_ARB = gl.GL_BUFFER_SIZE_ARB
GL_BUFFER_USAGE_ARB = gl.GL_BUFFER_USAGE_ARB
GL_ARRAY_BUFFER_ARB = gl.GL_ARRAY_BUFFER_ARB
GL_ELEMENT_ARRAY_BUFFER_ARB = gl.GL_ELEMENT_ARRAY_BUFFER_ARB
GL_ARRAY_BUFFER_BINDING_ARB = gl.GL_ARRAY_BUFFER_BINDING_ARB
GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB = gl.GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB
GL_VERTEX_ARRAY_BUFFER_BINDING_ARB = gl.GL_VERTEX_ARRAY_BUFFER_BINDING_ARB
GL_NORMAL_ARRAY_BUFFER_BINDING_ARB = gl.GL_NORMAL_ARRAY_BUFFER_BINDING_ARB
GL_COLOR_ARRAY_BUFFER_BINDING_ARB = gl.GL_COLOR_ARRAY_BUFFER_BINDING_ARB
GL_INDEX_ARRAY_BUFFER_BINDING_ARB = gl.GL_INDEX_ARRAY_BUFFER_BINDING_ARB
GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB = gl.GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB
GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB = gl.GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB
GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = gl.GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB
GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB = gl.GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB
GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB = gl.GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB
GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB = gl.GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB
GL_READ_ONLY_ARB = gl.GL_READ_ONLY_ARB
GL_WRITE_ONLY_ARB = gl.GL_WRITE_ONLY_ARB
GL_READ_WRITE_ARB = gl.GL_READ_WRITE_ARB
GL_BUFFER_ACCESS_ARB = gl.GL_BUFFER_ACCESS_ARB
GL_BUFFER_MAPPED_ARB = gl.GL_BUFFER_MAPPED_ARB
GL_BUFFER_MAP_POINTER_ARB = gl.GL_BUFFER_MAP_POINTER_ARB
GL_STREAM_DRAW_ARB = gl.GL_STREAM_DRAW_ARB
GL_STREAM_READ_ARB = gl.GL_STREAM_READ_ARB
GL_STREAM_COPY_ARB = gl.GL_STREAM_COPY_ARB
GL_STATIC_DRAW_ARB = gl.GL_STATIC_DRAW_ARB
GL_STATIC_READ_ARB = gl.GL_STATIC_READ_ARB
GL_STATIC_COPY_ARB = gl.GL_STATIC_COPY_ARB
GL_DYNAMIC_DRAW_ARB = gl.GL_DYNAMIC_DRAW_ARB
GL_DYNAMIC_READ_ARB = gl.GL_DYNAMIC_READ_ARB
GL_DYNAMIC_COPY_ARB = gl.GL_DYNAMIC_COPY_ARB

def glBindBufferARB(target, buffer):
    gl.glBindBufferARB(target, buffer)

def glBufferDataARB(target, size, data, usage):
    gl.glBufferDataARB(target, size, <void*>data, usage)

def glBufferSubDataARB(target, offset, size, data):
    gl.glBufferSubDataARB(target, offset, size, <void*>data)

def glDeleteBuffersARB(n, unsigned int buffers):
    cdef unsigned int* buffers1 = &buffers
    gl.glDeleteBuffersARB(n, buffers1)

def glGenBuffersARB(n, unsigned int buffers):
    cdef unsigned int* buffers1 = &buffers
    gl.glGenBuffersARB(n, buffers1)

def glGetBufferParameterivARB(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetBufferParameterivARB(target, pname, params1)

def glGetBufferPointervARB(target, pname, params):
    cdef void* t = <void*>params
    gl.glGetBufferPointervARB(target, pname, &t)

def glGetBufferSubDataARB(target, offset, size, data):
    gl.glGetBufferSubDataARB(target, offset, size, <void*>data)

def glIsBufferARB(buffer):
    return gl.glIsBufferARB(buffer)

cdef void *cglMapBufferARB(target,access):
    return gl.glMapBufferARB(target, access)
    
def glMapBufferARB(target, access):
    test = <char*>cglMapBufferARB(target,access)
    return ctypes.cast(test,ctypes.c_void_p).value

def glUnmapBufferARB(target):
    return gl.glUnmapBufferARB(target)

#GL_ARB_vertex_program

GL_ARB_vertex_program = gl.GL_ARB_vertex_program

GL_COLOR_SUM_ARB = gl.GL_COLOR_SUM_ARB
GL_VERTEX_PROGRAM_ARB = gl.GL_VERTEX_PROGRAM_ARB
GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB = gl.GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB
GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB = gl.GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB
GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB = gl.GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB
GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB = gl.GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB
GL_CURRENT_VERTEX_ATTRIB_ARB = gl.GL_CURRENT_VERTEX_ATTRIB_ARB
GL_PROGRAM_LENGTH_ARB = gl.GL_PROGRAM_LENGTH_ARB
GL_PROGRAM_STRING_ARB = gl.GL_PROGRAM_STRING_ARB
GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB = gl.GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB
GL_MAX_PROGRAM_MATRICES_ARB = gl.GL_MAX_PROGRAM_MATRICES_ARB
GL_CURRENT_MATRIX_STACK_DEPTH_ARB = gl.GL_CURRENT_MATRIX_STACK_DEPTH_ARB
GL_CURRENT_MATRIX_ARB = gl.GL_CURRENT_MATRIX_ARB
GL_VERTEX_PROGRAM_POINT_SIZE_ARB = gl.GL_VERTEX_PROGRAM_POINT_SIZE_ARB
GL_VERTEX_PROGRAM_TWO_SIDE_ARB = gl.GL_VERTEX_PROGRAM_TWO_SIDE_ARB
GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB = gl.GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB
GL_PROGRAM_ERROR_POSITION_ARB = gl.GL_PROGRAM_ERROR_POSITION_ARB
GL_PROGRAM_BINDING_ARB = gl.GL_PROGRAM_BINDING_ARB
GL_MAX_VERTEX_ATTRIBS_ARB = gl.GL_MAX_VERTEX_ATTRIBS_ARB
GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB = gl.GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB
GL_PROGRAM_ERROR_STRING_ARB = gl.GL_PROGRAM_ERROR_STRING_ARB
GL_PROGRAM_FORMAT_ASCII_ARB = gl.GL_PROGRAM_FORMAT_ASCII_ARB
GL_PROGRAM_FORMAT_ARB = gl.GL_PROGRAM_FORMAT_ARB
GL_PROGRAM_INSTRUCTIONS_ARB = gl.GL_PROGRAM_INSTRUCTIONS_ARB
GL_MAX_PROGRAM_INSTRUCTIONS_ARB = gl.GL_MAX_PROGRAM_INSTRUCTIONS_ARB
GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB = gl.GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB
GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = gl.GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB
GL_PROGRAM_TEMPORARIES_ARB = gl.GL_PROGRAM_TEMPORARIES_ARB
GL_MAX_PROGRAM_TEMPORARIES_ARB = gl.GL_MAX_PROGRAM_TEMPORARIES_ARB
GL_PROGRAM_NATIVE_TEMPORARIES_ARB = gl.GL_PROGRAM_NATIVE_TEMPORARIES_ARB
GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB = gl.GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB
GL_PROGRAM_PARAMETERS_ARB = gl.GL_PROGRAM_PARAMETERS_ARB
GL_MAX_PROGRAM_PARAMETERS_ARB = gl.GL_MAX_PROGRAM_PARAMETERS_ARB
GL_PROGRAM_NATIVE_PARAMETERS_ARB = gl.GL_PROGRAM_NATIVE_PARAMETERS_ARB
GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB = gl.GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB
GL_PROGRAM_ATTRIBS_ARB = gl.GL_PROGRAM_ATTRIBS_ARB
GL_MAX_PROGRAM_ATTRIBS_ARB = gl.GL_MAX_PROGRAM_ATTRIBS_ARB
GL_PROGRAM_NATIVE_ATTRIBS_ARB = gl.GL_PROGRAM_NATIVE_ATTRIBS_ARB
GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB = gl.GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB
GL_PROGRAM_ADDRESS_REGISTERS_ARB = gl.GL_PROGRAM_ADDRESS_REGISTERS_ARB
GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB = gl.GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB
GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = gl.GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = gl.GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB = gl.GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB
GL_MAX_PROGRAM_ENV_PARAMETERS_ARB = gl.GL_MAX_PROGRAM_ENV_PARAMETERS_ARB
GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB = gl.GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB
GL_TRANSPOSE_CURRENT_MATRIX_ARB = gl.GL_TRANSPOSE_CURRENT_MATRIX_ARB
GL_MATRIX0_ARB = gl.GL_MATRIX0_ARB
GL_MATRIX1_ARB = gl.GL_MATRIX1_ARB
GL_MATRIX2_ARB = gl.GL_MATRIX2_ARB
GL_MATRIX3_ARB = gl.GL_MATRIX3_ARB
GL_MATRIX4_ARB = gl.GL_MATRIX4_ARB
GL_MATRIX5_ARB = gl.GL_MATRIX5_ARB
GL_MATRIX6_ARB = gl.GL_MATRIX6_ARB
GL_MATRIX7_ARB = gl.GL_MATRIX7_ARB
GL_MATRIX8_ARB = gl.GL_MATRIX8_ARB
GL_MATRIX9_ARB = gl.GL_MATRIX9_ARB
GL_MATRIX10_ARB = gl.GL_MATRIX10_ARB
GL_MATRIX11_ARB = gl.GL_MATRIX11_ARB
GL_MATRIX12_ARB = gl.GL_MATRIX12_ARB
GL_MATRIX13_ARB = gl.GL_MATRIX13_ARB
GL_MATRIX14_ARB = gl.GL_MATRIX14_ARB
GL_MATRIX15_ARB = gl.GL_MATRIX15_ARB
GL_MATRIX16_ARB = gl.GL_MATRIX16_ARB
GL_MATRIX17_ARB = gl.GL_MATRIX17_ARB
GL_MATRIX18_ARB = gl.GL_MATRIX18_ARB
GL_MATRIX19_ARB = gl.GL_MATRIX19_ARB
GL_MATRIX20_ARB = gl.GL_MATRIX20_ARB
GL_MATRIX21_ARB = gl.GL_MATRIX21_ARB
GL_MATRIX22_ARB = gl.GL_MATRIX22_ARB
GL_MATRIX23_ARB = gl.GL_MATRIX23_ARB
GL_MATRIX24_ARB = gl.GL_MATRIX24_ARB
GL_MATRIX25_ARB = gl.GL_MATRIX25_ARB
GL_MATRIX26_ARB = gl.GL_MATRIX26_ARB
GL_MATRIX27_ARB = gl.GL_MATRIX27_ARB
GL_MATRIX28_ARB = gl.GL_MATRIX28_ARB
GL_MATRIX29_ARB = gl.GL_MATRIX29_ARB
GL_MATRIX30_ARB = gl.GL_MATRIX30_ARB
GL_MATRIX31_ARB = gl.GL_MATRIX31_ARB

def glBindProgramARB(target, program):
    gl.glBindProgramARB(target, program)

def glDeleteProgramsARB(n, unsigned int programs):
    cdef unsigned int* programs1 = &programs
    gl.glDeleteProgramsARB(n, programs1)

def glDisableVertexAttribArrayARB(index):
    gl.glDisableVertexAttribArrayARB(index)

def glEnableVertexAttribArrayARB(index):
    gl.glEnableVertexAttribArrayARB(index)

def glGenProgramsARB(n, unsigned int programs):
    cdef unsigned int* programs1 = &programs
    gl.glGenProgramsARB(n, programs1)

def glGetProgramEnvParameterdvARB(target, index, double params):
    cdef double* params1 = &params
    gl.glGetProgramEnvParameterdvARB(target, index, params1)

def glGetProgramEnvParameterfvARB(target, index, float params):
    cdef float* params1 = &params
    gl.glGetProgramEnvParameterfvARB(target, index, params1)

def glGetProgramLocalParameterdvARB(target, index, double params):
    cdef double* params1 = &params
    gl.glGetProgramLocalParameterdvARB(target, index, params1)

def glGetProgramLocalParameterfvARB(target, index, float params):
    cdef float* params1 = &params
    gl.glGetProgramLocalParameterfvARB(target, index, params1)

def glGetProgramStringARB(target, pname, string):
    gl.glGetProgramStringARB(target, pname, <void*>string)

def glGetProgramivARB(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetProgramivARB(target, pname, params1)

def glGetVertexAttribPointervARB(index, pname, pointer):
    cdef void* t = <void*>pointer
    gl.glGetVertexAttribPointervARB(index, pname, &t)

def glGetVertexAttribdvARB(index, pname,  double params):
    cdef double* params1 = &params
    gl.glGetVertexAttribdvARB(index, pname, params1)

def glGetVertexAttribfvARB(index, pname, float params):
    cdef float* params1 = &params
    gl.glGetVertexAttribfvARB(index, pname, params1)

def glGetVertexAttribivARB(index, pname, int params):
    cdef int* params1 = &params
    gl.glGetVertexAttribivARB(index, pname, params1)

def glIsProgramARB(program):
    return gl.glIsProgramARB(program)

def glProgramEnvParameter4dARB(target, index, x, y, z, w):
    gl.glProgramEnvParameter4dARB(target, index, x, y, z, w)

def glProgramEnvParameter4dvARB(target, index, double params):
    cdef double* params1 = &params
    gl.glProgramEnvParameter4dvARB(target, index,  params1)

def glProgramEnvParameter4fARB(target, index, x, y, z, w):
    gl.glProgramEnvParameter4fARB(target, index, x, y, z, w)

def glProgramEnvParameter4fvARB(target, index, float params):
    cdef float* params1 = &params
    gl.glProgramEnvParameter4fvARB(target, index,  params1)

def glProgramLocalParameter4dARB(target, index, x, y, z, w):
    gl.glProgramLocalParameter4dARB(target, index, x, y, z, w)

def glProgramLocalParameter4dvARB(target, index, double params):
    cdef double* params1 = &params
    gl.glProgramLocalParameter4dvARB(target, index,  params1)

def glProgramLocalParameter4fARB(target, index, x, y, z, w):
    gl.glProgramLocalParameter4fARB(target, index, x, y, z, w)

def glProgramLocalParameter4fvARB(target, index, float params):
    cdef float* params1 = &params
    gl.glProgramLocalParameter4fvARB(target, index,  params1)

def glProgramStringARB(target, format, len,  string):
    gl.glProgramStringARB(target, format, len,  <void*>string)

def glVertexAttrib1dARB(index, x):
    gl.glVertexAttrib1dARB(index, x)

def glVertexAttrib1dvARB(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib1dvARB(index,  v1)

def glVertexAttrib1fARB(index, x):
    gl.glVertexAttrib1fARB(index, x)

def glVertexAttrib1fvARB(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib1fvARB(index,  v1)

def glVertexAttrib1sARB(index, x):
    gl.glVertexAttrib1sARB(index, x)

def glVertexAttrib1svARB(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib1svARB(index,  v1)

def glVertexAttrib2dARB(index, x, y):
    gl.glVertexAttrib2dARB(index, x, y)

def glVertexAttrib2dvARB(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib2dvARB(index,  v1)

def glVertexAttrib2fARB(index, x, y):
    gl.glVertexAttrib2fARB(index, x, y)

def glVertexAttrib2fvARB(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib2fvARB(index,  v1)

def glVertexAttrib2sARB(index, x, y):
    gl.glVertexAttrib2sARB(index, x, y)

def glVertexAttrib2svARB(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib2svARB(index,  v1)

def glVertexAttrib3dARB(index, x, y, z):
    gl.glVertexAttrib3dARB(index, x, y, z)

def glVertexAttrib3dvARB(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib3dvARB(index,  v1)

def glVertexAttrib3fARB(index, x, y, z):
    gl.glVertexAttrib3fARB(index, x, y, z)

def glVertexAttrib3fvARB(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib3fvARB(index,  v1)

def glVertexAttrib3sARB(index, x, y, z):
    gl.glVertexAttrib3sARB(index, x, y, z)

def glVertexAttrib3svARB(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib3svARB(index,  v1)

def glVertexAttrib4NbvARB(index, signed char v):
    cdef signed char* v1 = &v
    gl.glVertexAttrib4NbvARB(index,  v1)

def glVertexAttrib4NivARB(index, int v):
    cdef int* v1 = &v
    gl.glVertexAttrib4NivARB(index,  v1)

def glVertexAttrib4NsvARB(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib4NsvARB(index,  v1)

def glVertexAttrib4NubARB(index, x, y, z, w):
    gl.glVertexAttrib4NubARB(index, x, y, z, w)

def glVertexAttrib4NubvARB(index, unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glVertexAttrib4NubvARB(index,  v1)

def glVertexAttrib4NuivARB(index, unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glVertexAttrib4NuivARB(index, v1)

def glVertexAttrib4NusvARB(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttrib4NusvARB(index, v1)

def glVertexAttrib4bvARB(index, signed char v):
    cdef signed char* v1 = &v
    gl.glVertexAttrib4bvARB(index,  v1)

def glVertexAttrib4dARB(index, x, y, z, w):
    gl.glVertexAttrib4dARB(index, x, y, z, w)

def glVertexAttrib4dvARB(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib4dvARB(index,  v1)

def glVertexAttrib4fARB(index, x, y, z, w):
    gl.glVertexAttrib4fARB(index, x, y, z, w)

def glVertexAttrib4fvARB(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib4fvARB(index,  v1)

def glVertexAttrib4ivARB(index, int v):
    cdef int* v1 = &v
    gl.glVertexAttrib4ivARB(index,  v1)

def glVertexAttrib4sARB(index, x, y, z, w):
    gl.glVertexAttrib4sARB(index, x, y, z, w)

def glVertexAttrib4svARB(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib4svARB(index,  v1)

def glVertexAttrib4ubvARB(index, unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glVertexAttrib4ubvARB(index,  v1)

def glVertexAttrib4uivARB(index, unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glVertexAttrib4uivARB(index, v1)

def glVertexAttrib4usvARB(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttrib4usvARB(index, v1)

def glVertexAttribPointerARB(index, size, type, normalized, stride,  pointer):
    cdef float* array
    
    if isinstance(pointer, list):
        array = <float*>malloc(len(pointer) * sizeof(float))
        
        for v,i in enumerate(pointer):
            array[v] = i
            
        gl.glVertexAttribPointerARB(index, size, type, normalized, stride,  array)
        
        free(array)
    else:
        array = <float*>malloc(pointer * sizeof(float))
        
        test = [0]
        
        for v,i in enumerate(test):
            array[v] = pointer
            
        gl.glVertexAttribPointerARB(index, size, type, normalized, stride,  array)
        free(array)

#GL_ARB_vertex_shader

GL_ARB_vertex_shader = gl.GL_ARB_vertex_shader

GL_VERTEX_SHADER_ARB = gl.GL_VERTEX_SHADER_ARB
GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB = gl.GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB
GL_MAX_VARYING_FLOATS_ARB = gl.GL_MAX_VARYING_FLOATS_ARB
GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB = gl.GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB = gl.GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB
GL_OBJECT_ACTIVE_ATTRIBUTES_ARB = gl.GL_OBJECT_ACTIVE_ATTRIBUTES_ARB
GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB = gl.GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB

def glBindAttribLocationARB(programObj, index, name):
    cdef char* name1 = name
    gl.glBindAttribLocationARB(programObj, index, name1)

def glGetActiveAttribARB(programObj, index, maxLength, int length, int size, unsigned int type, name):
    cdef int* length1 = &length
    cdef int* size1 = &size
    cdef unsigned int* type1 = &type
    cdef char* name1 = name
    gl.glGetActiveAttribARB(programObj, index, maxLength, length1, size1, type1, name1)

def glGetAttribLocationARB(programObj, name):
    cdef char* name1 = name
    return gl.glGetAttribLocationARB(programObj, name1)

#GL_ARB_vertex_type_2_10_10_10_rev

GL_ARB_vertex_type_2_10_10_10_rev = gl.GL_ARB_vertex_type_2_10_10_10_rev

GL_UNSIGNED_INT_2_10_10_10_REV = gl.GL_UNSIGNED_INT_2_10_10_10_REV
GL_INT_2_10_10_10_REV = gl.GL_INT_2_10_10_10_REV

def glColorP3ui(type, color):
    gl.glColorP3ui(type, color)

def glColorP3uiv(type, unsigned int color):
    cdef unsigned int* color1 = &color
    gl.glColorP3uiv(type, color1)

def glColorP4ui(type, color):
    gl.glColorP4ui(type, color)

def glColorP4uiv(type, unsigned int color):
    cdef unsigned int* color1 = &color
    gl.glColorP4uiv(type, color1)

def glMultiTexCoordP1ui(texture, type, coords):
    gl.glMultiTexCoordP1ui(texture, type, coords)

def glMultiTexCoordP1uiv(texture, type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glMultiTexCoordP1uiv(texture, type, coords1)

def glMultiTexCoordP2ui(texture, type, coords):
    gl.glMultiTexCoordP2ui(texture, type, coords)

def glMultiTexCoordP2uiv(texture, type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glMultiTexCoordP2uiv(texture, type, coords1)

def glMultiTexCoordP3ui(texture, type, coords):
    gl.glMultiTexCoordP3ui(texture, type, coords)

def glMultiTexCoordP3uiv(texture, type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glMultiTexCoordP3uiv(texture, type, coords1)

def glMultiTexCoordP4ui(texture, type, coords):
    gl.glMultiTexCoordP4ui(texture, type, coords)

def glMultiTexCoordP4uiv(texture, type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glMultiTexCoordP4uiv(texture, type, coords1)

def glNormalP3ui(type, coords):
    gl.glNormalP3ui(type, coords)

def glNormalP3uiv(type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glNormalP3uiv(type, coords1)

def glSecondaryColorP3ui(type, color):
    gl.glSecondaryColorP3ui(type, color)

def glSecondaryColorP3uiv(type, unsigned int color):
    cdef unsigned int* color1 = &color
    gl.glSecondaryColorP3uiv(type, color1)

def glTexCoordP1ui(type, coords):
    gl.glTexCoordP1ui(type, coords)

def glTexCoordP1uiv(type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glTexCoordP1uiv(type, coords1)

def glTexCoordP2ui(type, coords):
    gl.glTexCoordP2ui(type, coords)

def glTexCoordP2uiv(type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glTexCoordP2uiv(type, coords1)

def glTexCoordP3ui(type, coords):
    gl.glTexCoordP3ui(type, coords)

def glTexCoordP3uiv(type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glTexCoordP3uiv(type, coords1)

def glTexCoordP4ui(type, coords):
    gl.glTexCoordP4ui(type, coords)

def glTexCoordP4uiv(type, unsigned int coords):
    cdef unsigned int* coords1 = &coords
    gl.glTexCoordP4uiv(type, coords1)

def glVertexAttribP1ui(index, type, normalized, value):
    gl.glVertexAttribP1ui(index, type, normalized, value)

def glVertexAttribP1uiv(index, type, normalized, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glVertexAttribP1uiv(index, type, normalized, value1)

def glVertexAttribP2ui(index, type, normalized, value):
    gl.glVertexAttribP2ui(index, type, normalized, value)

def glVertexAttribP2uiv(index, type, normalized, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glVertexAttribP2uiv(index, type, normalized, value1)

def glVertexAttribP3ui(index, type, normalized, value):
    gl.glVertexAttribP3ui(index, type, normalized, value)

def glVertexAttribP3uiv(index, type, normalized, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glVertexAttribP3uiv(index, type, normalized, value1)

def glVertexAttribP4ui(index, type, normalized, value):
    gl.glVertexAttribP4ui(index, type, normalized, value)

def glVertexAttribP4uiv(index, type, normalized, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glVertexAttribP4uiv(index, type, normalized, value1)

def glVertexP2ui(type, value):
    gl.glVertexP2ui(type, value)

def glVertexP2uiv(type, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glVertexP2uiv(type, value1)

def glVertexP3ui(type, value):
    gl.glVertexP3ui(type, value)

def glVertexP3uiv(type, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glVertexP3uiv(type, value1)

def glVertexP4ui(type, value):
    gl.glVertexP4ui(type, value)

def glVertexP4uiv(type, unsigned int value):
    cdef unsigned int* value1 = &value
    gl.glVertexP4uiv(type, value1)

#GL_ARB_viewport_array

GL_ARB_viewport_array = gl.GL_ARB_viewport_array

GL_DEPTH_RANGE = gl.GL_DEPTH_RANGE
GL_VIEWPORT = gl.GL_VIEWPORT
GL_SCISSOR_BOX = gl.GL_SCISSOR_BOX
GL_SCISSOR_TEST = gl.GL_SCISSOR_TEST
GL_MAX_VIEWPORTS = gl.GL_MAX_VIEWPORTS
GL_VIEWPORT_SUBPIXEL_BITS = gl.GL_VIEWPORT_SUBPIXEL_BITS
GL_VIEWPORT_BOUNDS_RANGE = gl.GL_VIEWPORT_BOUNDS_RANGE
GL_LAYER_PROVOKING_VERTEX = gl.GL_LAYER_PROVOKING_VERTEX
GL_VIEWPORT_INDEX_PROVOKING_VERTEX = gl.GL_VIEWPORT_INDEX_PROVOKING_VERTEX
GL_UNDEFINED_VERTEX = gl.GL_UNDEFINED_VERTEX
GL_FIRST_VERTEX_CONVENTION = gl.GL_FIRST_VERTEX_CONVENTION
GL_LAST_VERTEX_CONVENTION = gl.GL_LAST_VERTEX_CONVENTION
GL_PROVOKING_VERTEX = gl.GL_PROVOKING_VERTEX

def glDepthRangeArrayv(first, count, double v):
    cdef double* v1 = &v
    gl.glDepthRangeArrayv(first, count, v1)

def glDepthRangeIndexed(index, n, f):
    gl.glDepthRangeIndexed(index, n, f)

def glGetDoublei_v(target, index, double data):
    cdef double* data1 = &data
    gl.glGetDoublei_v(target, index, data1)

def glGetFloati_v(target, index, float data):
    cdef float* data1 = &data
    gl.glGetFloati_v(target, index, data1)

def glScissorArrayv(first, count, int v):
    cdef int* v1 = &v
    gl.glScissorArrayv(first, count,  v1)

def glScissorIndexed(index, left, bottom, width, height):
    gl.glScissorIndexed(index, left, bottom, width, height)

def glScissorIndexedv(index, int v):
    cdef int* v1 = &v
    gl.glScissorIndexedv(index,  v1)

def glViewportArrayv(first, count, float v):
    cdef float* v1 = &v
    gl.glViewportArrayv(first, count,  v1)

def glViewportIndexedf(index, x, y, w, h):
    gl.glViewportIndexedf(index, x, y, w, h)

def glViewportIndexedfv(index, float v):
    cdef float* v1 = &v
    gl.glViewportIndexedfv(index,  v1)

#GL_ARB_window_pos

GL_ARB_window_pos = gl.GL_ARB_window_pos

def glWindowPos2dARB(x, y):
    gl.glWindowPos2dARB(x, y)

def glWindowPos2dvARB(double p):
    cdef double* p1 = &p
    gl.glWindowPos2dvARB( p1)

def glWindowPos2fARB(x, y):
    gl.glWindowPos2fARB(x, y)

def glWindowPos2fvARB(float p):
    cdef float* p1 = &p
    gl.glWindowPos2fvARB( p1)

def glWindowPos2iARB(x, y):
    gl.glWindowPos2iARB(x, y)

def glWindowPos2ivARB(int p):
    cdef int* p1 = &p
    gl.glWindowPos2ivARB( p1)

def glWindowPos2sARB(x, y):
    gl.glWindowPos2sARB(x, y)

def glWindowPos2svARB(short p):
    cdef short* p1 = &p
    gl.glWindowPos2svARB( p1)

def glWindowPos3dARB(x, y, z):
    gl.glWindowPos3dARB(x, y, z)

def glWindowPos3dvARB(double p):
    cdef double* p1 = &p
    gl.glWindowPos3dvARB( p1)

def glWindowPos3fARB(x, y, z):
    gl.glWindowPos3fARB(x, y, z)

def glWindowPos3fvARB(float p):
    cdef float* p1 = &p
    gl.glWindowPos3fvARB( p1)

def glWindowPos3iARB(x, y, z):
    gl.glWindowPos3iARB(x, y, z)

def glWindowPos3ivARB(int p):
    cdef int* p1 = &p
    gl.glWindowPos3ivARB( p1)

def glWindowPos3sARB(x, y, z):
    gl.glWindowPos3sARB(x, y, z)

def glWindowPos3svARB(short p):
    cdef short* p1 = &p
    gl.glWindowPos3svARB( p1)