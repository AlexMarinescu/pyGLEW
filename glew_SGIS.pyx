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

#GL_SGIS_color_range

GL_SGIS_color_range = gl.GL_SGIS_color_range

GL_EXTENDED_RANGE_SGIS = gl.GL_EXTENDED_RANGE_SGIS
GL_MIN_RED_SGIS = gl.GL_MIN_RED_SGIS
GL_MAX_RED_SGIS = gl.GL_MAX_RED_SGIS
GL_MIN_GREEN_SGIS = gl.GL_MIN_GREEN_SGIS
GL_MAX_GREEN_SGIS = gl.GL_MAX_GREEN_SGIS
GL_MIN_BLUE_SGIS = gl.GL_MIN_BLUE_SGIS
GL_MAX_BLUE_SGIS = gl.GL_MAX_BLUE_SGIS
GL_MIN_ALPHA_SGIS = gl.GL_MIN_ALPHA_SGIS
GL_MAX_ALPHA_SGIS = gl.GL_MAX_ALPHA_SGIS

#GL_SGIS_detail_texture

GL_SGIS_detail_texture = gl.GL_SGIS_detail_texture

def glDetailTexFuncSGIS(target, n, float points):
    cdef float* points1 = &points
    gl.glDetailTexFuncSGIS(target, n,  points1)

def glGetDetailTexFuncSGIS(target, float points):
    cdef float* points1 = &points
    gl.glGetDetailTexFuncSGIS(target, points1)

#GL_SGIS_fog_function

GL_SGIS_fog_function = gl.GL_SGIS_fog_function

def glFogFuncSGIS(n, float points):
    cdef float* points1 = &points
    gl.glFogFuncSGIS(n,  points1)

def glGetFogFuncSGIS(float points):
    cdef float* points1 = &points
    gl.glGetFogFuncSGIS(points1)

#GL_SGIS_generate_mipmap

GL_SGIS_generate_mipmap = gl.GL_SGIS_generate_mipmap

GL_GENERATE_MIPMAP_SGIS = gl.GL_GENERATE_MIPMAP_SGIS
GL_GENERATE_MIPMAP_HINT_SGIS = gl.GL_GENERATE_MIPMAP_HINT_SGIS

#GL_SGIS_multisample

GL_SGIS_multisample = gl.GL_SGIS_multisample

GL_MULTISAMPLE_SGIS = gl.GL_MULTISAMPLE_SGIS
GL_SAMPLE_ALPHA_TO_MASK_SGIS = gl.GL_SAMPLE_ALPHA_TO_MASK_SGIS
GL_SAMPLE_ALPHA_TO_ONE_SGIS = gl.GL_SAMPLE_ALPHA_TO_ONE_SGIS
GL_SAMPLE_MASK_SGIS = gl.GL_SAMPLE_MASK_SGIS
GL_1PASS_SGIS = gl.GL_1PASS_SGIS
GL_2PASS_0_SGIS = gl.GL_2PASS_0_SGIS
GL_2PASS_1_SGIS = gl.GL_2PASS_1_SGIS
GL_4PASS_0_SGIS = gl.GL_4PASS_0_SGIS
GL_4PASS_1_SGIS = gl.GL_4PASS_1_SGIS
GL_4PASS_2_SGIS = gl.GL_4PASS_2_SGIS
GL_4PASS_3_SGIS = gl.GL_4PASS_3_SGIS
GL_SAMPLE_BUFFERS_SGIS = gl.GL_SAMPLE_BUFFERS_SGIS
GL_SAMPLES_SGIS = gl.GL_SAMPLES_SGIS
GL_SAMPLE_MASK_VALUE_SGIS = gl.GL_SAMPLE_MASK_VALUE_SGIS
GL_SAMPLE_MASK_INVERT_SGIS = gl.GL_SAMPLE_MASK_INVERT_SGIS
GL_SAMPLE_PATTERN_SGIS = gl.GL_SAMPLE_PATTERN_SGIS
GL_MULTISAMPLE_BIT_EXT = gl.GL_MULTISAMPLE_BIT_EXT

def glSampleMaskSGIS(value, invert):
    gl.glSampleMaskSGIS(value, invert)

def glSamplePatternSGIS(pattern):
    gl.glSamplePatternSGIS(pattern)

#GL_SGIS_pixel_texture

GL_SGIS_pixel_texture = gl.GL_SGIS_pixel_texture

#GL_SGIS_point_line_texgen

GL_SGIS_point_line_texgen = gl.GL_SGIS_point_line_texgen

GL_EYE_DISTANCE_TO_POINT_SGIS = gl.GL_EYE_DISTANCE_TO_POINT_SGIS
GL_OBJECT_DISTANCE_TO_POINT_SGIS = gl.GL_OBJECT_DISTANCE_TO_POINT_SGIS
GL_EYE_DISTANCE_TO_LINE_SGIS = gl.GL_EYE_DISTANCE_TO_LINE_SGIS
GL_OBJECT_DISTANCE_TO_LINE_SGIS = gl.GL_OBJECT_DISTANCE_TO_LINE_SGIS
GL_EYE_POINT_SGIS = gl.GL_EYE_POINT_SGIS
GL_OBJECT_POINT_SGIS = gl.GL_OBJECT_POINT_SGIS
GL_EYE_LINE_SGIS = gl.GL_EYE_LINE_SGIS
GL_OBJECT_LINE_SGIS = gl.GL_OBJECT_LINE_SGIS

#GL_SGIS_sharpen_texture

GL_SGIS_sharpen_texture = gl.GL_SGIS_sharpen_texture

def glGetSharpenTexFuncSGIS(target, float points):
    cdef float* points1 = &points
    gl.glGetSharpenTexFuncSGIS(target, points1)

def glSharpenTexFuncSGIS(target, n, float points):
    cdef float* points1 = &points
    gl.glSharpenTexFuncSGIS(target, n,  points1)

#GL_SGIS_texture4D

GL_SGIS_texture4D = gl.GL_SGIS_texture4D

def glTexImage4DSGIS(target, level, internalformat, width, height, depth, extent, border, format, type,  pixels):
    gl.glTexImage4DSGIS(target, level, internalformat, width, height, depth, extent, border, format, type,  <void*>pixels)

def glTexSubImage4DSGIS(target, level, xoffset, yoffset, zoffset, woffset, width, height, depth, extent, format, type,  pixels):
    gl.glTexSubImage4DSGIS(target, level, xoffset, yoffset, zoffset, woffset, width, height, depth, extent, format, type,  <void*>pixels)

#GL_SGIS_texture_border_clamp

GL_SGIS_texture_border_clamp = gl.GL_SGIS_texture_border_clamp

GL_CLAMP_TO_BORDER_SGIS = gl.GL_CLAMP_TO_BORDER_SGIS

#GL_SGIS_texture_edge_clamp

GL_SGIS_texture_edge_clamp = gl.GL_SGIS_texture_edge_clamp

GL_CLAMP_TO_EDGE_SGIS = gl.GL_CLAMP_TO_EDGE_SGIS

#GL_SGIS_texture_filter4

GL_SGIS_texture_filter4 = gl.GL_SGIS_texture_filter4

def glGetTexFilterFuncSGIS(target, filter, float weights):
    cdef float* weights1 = &weights
    gl.glGetTexFilterFuncSGIS(target, filter, weights1)

def glTexFilterFuncSGIS(target, filter, n, float weights):
    cdef float* weights1 = &weights
    gl.glTexFilterFuncSGIS(target, filter, n,  weights1)

#GL_SGIS_texture_lod

GL_SGIS_texture_lod = gl.GL_SGIS_texture_lod

GL_TEXTURE_MIN_LOD_SGIS = gl.GL_TEXTURE_MIN_LOD_SGIS
GL_TEXTURE_MAX_LOD_SGIS = gl.GL_TEXTURE_MAX_LOD_SGIS
GL_TEXTURE_BASE_LEVEL_SGIS = gl.GL_TEXTURE_BASE_LEVEL_SGIS
GL_TEXTURE_MAX_LEVEL_SGIS = gl.GL_TEXTURE_MAX_LEVEL_SGIS

#GL_SGIS_texture_select

GL_SGIS_texture_select = gl.GL_SGIS_texture_select

#GL_SGIX_async

GL_SGIX_async = gl.GL_SGIX_async

GL_ASYNC_MARKER_SGIX = gl.GL_ASYNC_MARKER_SGIX

def glAsyncMarkerSGIX(marker):
    gl.glAsyncMarkerSGIX(marker)

def glDeleteAsyncMarkersSGIX(marker, range):
    gl.glDeleteAsyncMarkersSGIX(marker, range)

def glFinishAsyncSGIX(unsigned int markerp):
    cdef unsigned int* markerp1 = &markerp
    return gl.glFinishAsyncSGIX(markerp1)

def glGenAsyncMarkersSGIX(range):
    return gl.glGenAsyncMarkersSGIX(range)

def glIsAsyncMarkerSGIX(marker):
    return gl.glIsAsyncMarkerSGIX(marker)

def glPollAsyncSGIX(unsigned int markerp):
    cdef unsigned int* markerp1 = &markerp
    return gl.glPollAsyncSGIX(markerp1)

#GL_SGIX_async_histogram

GL_SGIX_async_histogram = gl.GL_SGIX_async_histogram

GL_ASYNC_HISTOGRAM_SGIX = gl.GL_ASYNC_HISTOGRAM_SGIX
GL_MAX_ASYNC_HISTOGRAM_SGIX = gl.GL_MAX_ASYNC_HISTOGRAM_SGIX

#GL_SGIX_async_pixel

GL_SGIX_async_pixel = gl.GL_SGIX_async_pixel

GL_ASYNC_TEX_IMAGE_SGIX = gl.GL_ASYNC_TEX_IMAGE_SGIX
GL_ASYNC_DRAW_PIXELS_SGIX = gl.GL_ASYNC_DRAW_PIXELS_SGIX
GL_ASYNC_READ_PIXELS_SGIX = gl.GL_ASYNC_READ_PIXELS_SGIX
GL_MAX_ASYNC_TEX_IMAGE_SGIX = gl.GL_MAX_ASYNC_TEX_IMAGE_SGIX
GL_MAX_ASYNC_DRAW_PIXELS_SGIX = gl.GL_MAX_ASYNC_DRAW_PIXELS_SGIX
GL_MAX_ASYNC_READ_PIXELS_SGIX = gl.GL_MAX_ASYNC_READ_PIXELS_SGIX

#GL_SGIX_blend_alpha_minmax

GL_SGIX_blend_alpha_minmax = gl.GL_SGIX_blend_alpha_minmax

GL_ALPHA_MIN_SGIX = gl.GL_ALPHA_MIN_SGIX
GL_ALPHA_MAX_SGIX = gl.GL_ALPHA_MAX_SGIX

#GL_SGIX_clipmap

GL_SGIX_clipmap = gl.GL_SGIX_clipmap

#GL_SGIX_convolution_accuracy

GL_SGIX_convolution_accuracy = gl.GL_SGIX_convolution_accuracy

GL_CONVOLUTION_HINT_SGIX = gl.GL_CONVOLUTION_HINT_SGIX

#GL_SGIX_depth_texture

GL_SGIX_depth_texture = gl.GL_SGIX_depth_texture

GL_DEPTH_COMPONENT16_SGIX = gl.GL_DEPTH_COMPONENT16_SGIX
GL_DEPTH_COMPONENT24_SGIX = gl.GL_DEPTH_COMPONENT24_SGIX
GL_DEPTH_COMPONENT32_SGIX = gl.GL_DEPTH_COMPONENT32_SGIX

#GL_SGIX_flush_raster

GL_SGIX_flush_raster = gl.GL_SGIX_flush_raster

def glFlushRasterSGIX():
    gl.glFlushRasterSGIX()

#GL_SGIX_fog_offset

GL_SGIX_fog_offset = gl.GL_SGIX_fog_offset

GL_FOG_OFFSET_SGIX = gl.GL_FOG_OFFSET_SGIX
GL_FOG_OFFSET_VALUE_SGIX = gl.GL_FOG_OFFSET_VALUE_SGIX

#GL_SGIX_fog_texture

GL_SGIX_fog_texture = gl.GL_SGIX_fog_texture

GL_TEXTURE_FOG_SGIX = gl.GL_TEXTURE_FOG_SGIX
GL_FOG_PATCHY_FACTOR_SGIX = gl.GL_FOG_PATCHY_FACTOR_SGIX
GL_FRAGMENT_FOG_SGIX = gl.GL_FRAGMENT_FOG_SGIX

def glTextureFogSGIX(pname):
    gl.glTextureFogSGIX(pname)

#GL_SGIX_fragment_specular_lighting

GL_SGIX_fragment_specular_lighting = gl.GL_SGIX_fragment_specular_lighting

def glFragmentColorMaterialSGIX(face, mode):
    gl.glFragmentColorMaterialSGIX(face, mode)

def glFragmentLightModelfSGIX(pname, param):
    gl.glFragmentLightModelfSGIX(pname, param)

def glFragmentLightModelfvSGIX(pname, float params):
    cdef float* params1 = &params
    gl.glFragmentLightModelfvSGIX(pname, params1)

def glFragmentLightModeliSGIX(pname, param):
    gl.glFragmentLightModeliSGIX(pname, param)

def glFragmentLightModelivSGIX(pname, int params):
    cdef int* params1 = &params
    gl.glFragmentLightModelivSGIX(pname, params1)

def glFragmentLightfSGIX(light, pname, param):
    gl.glFragmentLightfSGIX(light, pname, param)

def glFragmentLightfvSGIX(light, pname, float params):
    cdef float* params1 = &params
    gl.glFragmentLightfvSGIX(light, pname, params1)

def glFragmentLightiSGIX(light, pname, param):
    gl.glFragmentLightiSGIX(light, pname, param)

def glFragmentLightivSGIX(light, pname, int params):
    cdef int* params1 = &params
    gl.glFragmentLightivSGIX(light, pname, params1)

def glFragmentMaterialfSGIX(face, pname, param):
    gl.glFragmentMaterialfSGIX(face, pname, param)

def glFragmentMaterialfvSGIX(face, pname, float params):
    cdef float* params1 = &params
    gl.glFragmentMaterialfvSGIX(face, pname,  params1)

def glFragmentMaterialiSGIX(face, pname, param):
    gl.glFragmentMaterialiSGIX(face, pname, param)

def glFragmentMaterialivSGIX(face, pname, int params):
    cdef int* params1 = &params
    gl.glFragmentMaterialivSGIX(face, pname,  params1)

def glGetFragmentLightfvSGIX(light, value, float data):
    cdef float* data1 = &data
    gl.glGetFragmentLightfvSGIX(light, value, data1)

def glGetFragmentLightivSGIX(light, value, int data):
    cdef int* data1 = &data
    gl.glGetFragmentLightivSGIX(light, value, data1)

def glGetFragmentMaterialfvSGIX(face, pname, float data):
    cdef float* data1 = &data
    gl.glGetFragmentMaterialfvSGIX(face, pname,  data1)

def glGetFragmentMaterialivSGIX(face, pname, int data):
    cdef int* data1 = &data
    gl.glGetFragmentMaterialivSGIX(face, pname,  data1)

#GL_SGIX_framezoom

GL_SGIX_framezoom = gl.GL_SGIX_framezoom

def glFrameZoomSGIX(factor):
    gl.glFrameZoomSGIX(factor)

#GL_SGIX_interlace

GL_SGIX_interlace = gl.GL_SGIX_interlace

GL_INTERLACE_SGIX = gl.GL_INTERLACE_SGIX

#GL_SGIX_ir_instrument1

GL_SGIX_ir_instrument1 = gl.GL_SGIX_ir_instrument1

#GL_SGIX_list_priority

GL_SGIX_list_priority = gl.GL_SGIX_list_priority

#GL_SGIX_pixel_texture

GL_SGIX_pixel_texture = gl.GL_SGIX_pixel_texture

def glPixelTexGenSGIX(mode):
    gl.glPixelTexGenSGIX(mode)

#GL_SGIX_pixel_texture_bits

GL_SGIX_pixel_texture_bits = gl.GL_SGIX_pixel_texture_bits

#GL_SGIX_reference_plane

GL_SGIX_reference_plane = gl.GL_SGIX_reference_plane

def glReferencePlaneSGIX(double equation):
    cdef double* equation1 = &equation
    gl.glReferencePlaneSGIX( equation1)

#GL_SGIX_resample

GL_SGIX_resample = gl.GL_SGIX_resample

GL_PACK_RESAMPLE_SGIX = gl.GL_PACK_RESAMPLE_SGIX
GL_UNPACK_RESAMPLE_SGIX = gl.GL_UNPACK_RESAMPLE_SGIX
GL_RESAMPLE_DECIMATE_SGIX = gl.GL_RESAMPLE_DECIMATE_SGIX
GL_RESAMPLE_REPLICATE_SGIX = gl.GL_RESAMPLE_REPLICATE_SGIX
GL_RESAMPLE_ZERO_FILL_SGIX = gl.GL_RESAMPLE_ZERO_FILL_SGIX

#GL_SGIX_shadow

GL_SGIX_shadow = gl.GL_SGIX_shadow

GL_TEXTURE_COMPARE_SGIX = gl.GL_TEXTURE_COMPARE_SGIX
GL_TEXTURE_COMPARE_OPERATOR_SGIX = gl.GL_TEXTURE_COMPARE_OPERATOR_SGIX
GL_TEXTURE_LEQUAL_R_SGIX = gl.GL_TEXTURE_LEQUAL_R_SGIX
GL_TEXTURE_GEQUAL_R_SGIX = gl.GL_TEXTURE_GEQUAL_R_SGIX

#GL_SGIX_shadow_ambient

GL_SGIX_shadow_ambient = gl.GL_SGIX_shadow_ambient

GL_SHADOW_AMBIENT_SGIX = gl.GL_SHADOW_AMBIENT_SGIX

#GL_SGIX_sprite

GL_SGIX_sprite = gl.GL_SGIX_sprite

def glSpriteParameterfSGIX(pname, param):
    gl.glSpriteParameterfSGIX(pname, param)

def glSpriteParameterfvSGIX(pname, float params):
    cdef float* params1 = &params
    gl.glSpriteParameterfvSGIX(pname, params1)

def glSpriteParameteriSGIX(pname, param):
    gl.glSpriteParameteriSGIX(pname, param)

def glSpriteParameterivSGIX(pname, int params):
    cdef int* params1 = &params
    gl.glSpriteParameterivSGIX(pname, params1)

#GL_SGIX_tag_sample_buffer

GL_SGIX_tag_sample_buffer = gl.GL_SGIX_tag_sample_buffer

def glTagSampleBufferSGIX():
    gl.glTagSampleBufferSGIX()

#GL_SGIX_texture_add_env

GL_SGIX_texture_add_env = gl.GL_SGIX_texture_add_env

#GL_SGIX_texture_coordinate_clamp

GL_SGIX_texture_coordinate_clamp = gl.GL_SGIX_texture_coordinate_clamp

GL_TEXTURE_MAX_CLAMP_S_SGIX = gl.GL_TEXTURE_MAX_CLAMP_S_SGIX
GL_TEXTURE_MAX_CLAMP_T_SGIX = gl.GL_TEXTURE_MAX_CLAMP_T_SGIX
GL_TEXTURE_MAX_CLAMP_R_SGIX = gl.GL_TEXTURE_MAX_CLAMP_R_SGIX

#GL_SGIX_texture_lod_bias

GL_SGIX_texture_lod_bias = gl.GL_SGIX_texture_lod_bias

#GL_SGIX_texture_multi_buffer

GL_SGIX_texture_multi_buffer = gl.GL_SGIX_texture_multi_buffer

GL_TEXTURE_MULTI_BUFFER_HINT_SGIX = gl.GL_TEXTURE_MULTI_BUFFER_HINT_SGIX

#GL_SGIX_texture_range

GL_SGIX_texture_range = gl.GL_SGIX_texture_range

GL_RGB_SIGNED_SGIX = gl.GL_RGB_SIGNED_SGIX
GL_RGBA_SIGNED_SGIX = gl.GL_RGBA_SIGNED_SGIX
GL_ALPHA_SIGNED_SGIX = gl.GL_ALPHA_SIGNED_SGIX
GL_LUMINANCE_SIGNED_SGIX = gl.GL_LUMINANCE_SIGNED_SGIX
GL_INTENSITY_SIGNED_SGIX = gl.GL_INTENSITY_SIGNED_SGIX
GL_LUMINANCE_ALPHA_SIGNED_SGIX = gl.GL_LUMINANCE_ALPHA_SIGNED_SGIX
GL_RGB16_SIGNED_SGIX = gl.GL_RGB16_SIGNED_SGIX
GL_RGBA16_SIGNED_SGIX = gl.GL_RGBA16_SIGNED_SGIX
GL_ALPHA16_SIGNED_SGIX = gl.GL_ALPHA16_SIGNED_SGIX
GL_LUMINANCE16_SIGNED_SGIX = gl.GL_LUMINANCE16_SIGNED_SGIX
GL_INTENSITY16_SIGNED_SGIX = gl.GL_INTENSITY16_SIGNED_SGIX
GL_LUMINANCE16_ALPHA16_SIGNED_SGIX = gl.GL_LUMINANCE16_ALPHA16_SIGNED_SGIX
GL_RGB_EXTENDED_RANGE_SGIX = gl.GL_RGB_EXTENDED_RANGE_SGIX
GL_RGBA_EXTENDED_RANGE_SGIX = gl.GL_RGBA_EXTENDED_RANGE_SGIX
GL_ALPHA_EXTENDED_RANGE_SGIX = gl.GL_ALPHA_EXTENDED_RANGE_SGIX
GL_LUMINANCE_EXTENDED_RANGE_SGIX = gl.GL_LUMINANCE_EXTENDED_RANGE_SGIX
GL_INTENSITY_EXTENDED_RANGE_SGIX = gl.GL_INTENSITY_EXTENDED_RANGE_SGIX
GL_LUMINANCE_ALPHA_EXTENDED_RANGE_SGIX = gl.GL_LUMINANCE_ALPHA_EXTENDED_RANGE_SGIX
GL_RGB16_EXTENDED_RANGE_SGIX = gl.GL_RGB16_EXTENDED_RANGE_SGIX
GL_RGBA16_EXTENDED_RANGE_SGIX = gl.GL_RGBA16_EXTENDED_RANGE_SGIX
GL_ALPHA16_EXTENDED_RANGE_SGIX = gl.GL_ALPHA16_EXTENDED_RANGE_SGIX
GL_LUMINANCE16_EXTENDED_RANGE_SGIX = gl.GL_LUMINANCE16_EXTENDED_RANGE_SGIX
GL_INTENSITY16_EXTENDED_RANGE_SGIX = gl.GL_INTENSITY16_EXTENDED_RANGE_SGIX
GL_LUMINANCE16_ALPHA16_EXTENDED_RANGE_SGIX = gl.GL_LUMINANCE16_ALPHA16_EXTENDED_RANGE_SGIX
GL_MIN_LUMINANCE_SGIS = gl.GL_MIN_LUMINANCE_SGIS
GL_MAX_LUMINANCE_SGIS = gl.GL_MAX_LUMINANCE_SGIS
GL_MIN_INTENSITY_SGIS = gl.GL_MIN_INTENSITY_SGIS
GL_MAX_INTENSITY_SGIS = gl.GL_MAX_INTENSITY_SGIS

#GL_SGIX_texture_scale_bias

GL_SGIX_texture_scale_bias = gl.GL_SGIX_texture_scale_bias

GL_POST_TEXTURE_FILTER_BIAS_SGIX = gl.GL_POST_TEXTURE_FILTER_BIAS_SGIX
GL_POST_TEXTURE_FILTER_SCALE_SGIX = gl.GL_POST_TEXTURE_FILTER_SCALE_SGIX
GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = gl.GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX
GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = gl.GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX

#GL_SGIX_vertex_preclip

GL_SGIX_vertex_preclip = gl.GL_SGIX_vertex_preclip

GL_VERTEX_PRECLIP_SGIX = gl.GL_VERTEX_PRECLIP_SGIX
GL_VERTEX_PRECLIP_HINT_SGIX = gl.GL_VERTEX_PRECLIP_HINT_SGIX

#GL_SGIX_vertex_preclip_hint

GL_SGIX_vertex_preclip_hint = gl.GL_SGIX_vertex_preclip_hint

GL_VERTEX_PRECLIP_SGIX = gl.GL_VERTEX_PRECLIP_SGIX
GL_VERTEX_PRECLIP_HINT_SGIX = gl.GL_VERTEX_PRECLIP_HINT_SGIX

#GL_SGIX_ycrcb

GL_SGIX_ycrcb = gl.GL_SGIX_ycrcb

#GL_SGI_color_matrix

GL_SGI_color_matrix = gl.GL_SGI_color_matrix

GL_COLOR_MATRIX_SGI = gl.GL_COLOR_MATRIX_SGI
GL_COLOR_MATRIX_STACK_DEPTH_SGI = gl.GL_COLOR_MATRIX_STACK_DEPTH_SGI
GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = gl.GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI
GL_POST_COLOR_MATRIX_RED_SCALE_SGI = gl.GL_POST_COLOR_MATRIX_RED_SCALE_SGI
GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = gl.GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI
GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = gl.GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI
GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = gl.GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI
GL_POST_COLOR_MATRIX_RED_BIAS_SGI = gl.GL_POST_COLOR_MATRIX_RED_BIAS_SGI
GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = gl.GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI
GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = gl.GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI
GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = gl.GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI

#GL_SGI_color_table

GL_SGI_color_table = gl.GL_SGI_color_table

GL_COLOR_TABLE_SGI = gl.GL_COLOR_TABLE_SGI
GL_POST_CONVOLUTION_COLOR_TABLE_SGI = gl.GL_POST_CONVOLUTION_COLOR_TABLE_SGI
GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = gl.GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI
GL_PROXY_COLOR_TABLE_SGI = gl.GL_PROXY_COLOR_TABLE_SGI
GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = gl.GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI
GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = gl.GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI
GL_COLOR_TABLE_SCALE_SGI = gl.GL_COLOR_TABLE_SCALE_SGI
GL_COLOR_TABLE_BIAS_SGI = gl.GL_COLOR_TABLE_BIAS_SGI
GL_COLOR_TABLE_FORMAT_SGI = gl.GL_COLOR_TABLE_FORMAT_SGI
GL_COLOR_TABLE_WIDTH_SGI = gl.GL_COLOR_TABLE_WIDTH_SGI
GL_COLOR_TABLE_RED_SIZE_SGI = gl.GL_COLOR_TABLE_RED_SIZE_SGI
GL_COLOR_TABLE_GREEN_SIZE_SGI = gl.GL_COLOR_TABLE_GREEN_SIZE_SGI
GL_COLOR_TABLE_BLUE_SIZE_SGI = gl.GL_COLOR_TABLE_BLUE_SIZE_SGI
GL_COLOR_TABLE_ALPHA_SIZE_SGI = gl.GL_COLOR_TABLE_ALPHA_SIZE_SGI
GL_COLOR_TABLE_LUMINANCE_SIZE_SGI = gl.GL_COLOR_TABLE_LUMINANCE_SIZE_SGI
GL_COLOR_TABLE_INTENSITY_SIZE_SGI = gl.GL_COLOR_TABLE_INTENSITY_SIZE_SGI

def glColorTableParameterfvSGI(target, pname, float  params):
    cdef float* params1 = &params
    gl.glColorTableParameterfvSGI(target, pname,  params1)

def glColorTableParameterivSGI(target, pname, int params):
    cdef int* params1 = &params
    gl.glColorTableParameterivSGI(target, pname,  params1)

def glColorTableSGI(target, internalformat, width, format, type,  table):
    gl.glColorTableSGI(target, internalformat, width, format, type,  <void*>table)

def glCopyColorTableSGI(target, internalformat, x, y, width):
    gl.glCopyColorTableSGI(target, internalformat, x, y, width)

def glGetColorTableParameterfvSGI(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetColorTableParameterfvSGI(target, pname, params1)

def glGetColorTableParameterivSGI(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetColorTableParameterivSGI(target, pname, params1)

def glGetColorTableSGI(target, format, type, table):
    gl.glGetColorTableSGI(target, format, type, <void*>table)

#GL_SGI_texture_color_table

GL_SGI_texture_color_table = gl.GL_SGI_texture_color_table

GL_TEXTURE_COLOR_TABLE_SGI = gl.GL_TEXTURE_COLOR_TABLE_SGI
GL_PROXY_TEXTURE_COLOR_TABLE_SGI = gl.GL_PROXY_TEXTURE_COLOR_TABLE_SGI