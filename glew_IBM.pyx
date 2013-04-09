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

#GL_IBM_cull_vertex

GL_IBM_cull_vertex = gl.GL_IBM_cull_vertex

GL_CULL_VERTEX_IBM = gl.GL_CULL_VERTEX_IBM

#GL_IBM_multimode_draw_arrays

GL_IBM_multimode_draw_arrays = gl.GL_IBM_multimode_draw_arrays

def glMultiModeDrawArraysIBM(mode, first, count, primcount, modestride):
    gl.glMultiModeDrawArraysIBM(mode, first, count, primcount, modestride)

def glMultiModeDrawElementsIBM(mode, count, type, indices, primcount, modestride):
    gl.glMultiModeDrawElementsIBM(mode, count, type, <void*>indices, primcount, modestride)

#GL_IBM_rasterpos_clip

GL_IBM_rasterpos_clip = gl.GL_IBM_rasterpos_clip

GL_RASTER_POSITION_UNCLIPPED_IBM = gl.GL_RASTER_POSITION_UNCLIPPED_IBM

#GL_IBM_static_data

GL_IBM_static_data = gl.GL_IBM_static_data

GL_ALL_STATIC_DATA_IBM = gl.GL_ALL_STATIC_DATA_IBM
GL_STATIC_VERTEX_ARRAY_IBM = gl.GL_STATIC_VERTEX_ARRAY_IBM

#GL_IBM_texture_mirrored_repeat

GL_IBM_texture_mirrored_repeat = gl.GL_IBM_texture_mirrored_repeat

GL_MIRRORED_REPEAT_IBM = gl.GL_MIRRORED_REPEAT_IBM

#GL_IBM_vertex_array_lists

GL_IBM_vertex_array_lists = gl.GL_IBM_vertex_array_lists

GL_VERTEX_ARRAY_LIST_IBM = gl.GL_VERTEX_ARRAY_LIST_IBM
GL_NORMAL_ARRAY_LIST_IBM = gl.GL_NORMAL_ARRAY_LIST_IBM
GL_COLOR_ARRAY_LIST_IBM = gl.GL_COLOR_ARRAY_LIST_IBM
GL_INDEX_ARRAY_LIST_IBM = gl.GL_INDEX_ARRAY_LIST_IBM
GL_TEXTURE_COORD_ARRAY_LIST_IBM = gl.GL_TEXTURE_COORD_ARRAY_LIST_IBM
GL_EDGE_FLAG_ARRAY_LIST_IBM = gl.GL_EDGE_FLAG_ARRAY_LIST_IBM
GL_FOG_COORDINATE_ARRAY_LIST_IBM = gl.GL_FOG_COORDINATE_ARRAY_LIST_IBM
GL_SECONDARY_COLOR_ARRAY_LIST_IBM = gl.GL_SECONDARY_COLOR_ARRAY_LIST_IBM
GL_VERTEX_ARRAY_LIST_STRIDE_IBM = gl.GL_VERTEX_ARRAY_LIST_STRIDE_IBM
GL_NORMAL_ARRAY_LIST_STRIDE_IBM = gl.GL_NORMAL_ARRAY_LIST_STRIDE_IBM
GL_COLOR_ARRAY_LIST_STRIDE_IBM = gl.GL_COLOR_ARRAY_LIST_STRIDE_IBM
GL_INDEX_ARRAY_LIST_STRIDE_IBM = gl.GL_INDEX_ARRAY_LIST_STRIDE_IBM
GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM = gl.GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM
GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM = gl.GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM
GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM = gl.GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM
GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM = gl.GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM

def glColorPointerListIBM(size, type, stride,  pointer, ptrstride):
    gl.glColorPointerListIBM(size, type, stride,  <void*>pointer, ptrstride)

def glEdgeFlagPointerListIBM(stride, bint pointer, ptrstride):
    gl.glEdgeFlagPointerListIBM(stride, <bint*>pointer, ptrstride)

def glFogCoordPointerListIBM(type, stride,  pointer, ptrstride):
    gl.glFogCoordPointerListIBM(type, stride,  <void*>pointer, ptrstride)

def glIndexPointerListIBM(type, stride,  pointer, ptrstride):
    gl.glIndexPointerListIBM(type, stride,  <void*>pointer, ptrstride)

def glNormalPointerListIBM(type, stride,  pointer, ptrstride):
    gl.glNormalPointerListIBM(type, stride,  <void*>pointer, ptrstride)

def glSecondaryColorPointerListIBM(size, type, stride,  pointer, ptrstride):
    gl.glSecondaryColorPointerListIBM(size, type, stride,  <void*>pointer, ptrstride)

def glTexCoordPointerListIBM(size, type, stride,  pointer, ptrstride):
    gl.glTexCoordPointerListIBM(size, type, stride,  <void*>pointer, ptrstride)

def glVertexPointerListIBM(size, type, stride,  pointer, ptrstride):
    gl.glVertexPointerListIBM(size, type, stride,  <void*>pointer, ptrstride)