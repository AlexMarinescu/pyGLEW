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

#GL_SUNX_constant_data

GL_SUNX_constant_data = gl.GL_SUNX_constant_data

GL_UNPACK_CONSTANT_DATA_SUNX = gl.GL_UNPACK_CONSTANT_DATA_SUNX
GL_TEXTURE_CONSTANT_DATA_SUNX = gl.GL_TEXTURE_CONSTANT_DATA_SUNX

def glFinishTextureSUNX():
    gl.glFinishTextureSUNX()

#GL_SUN_convolution_border_modes

GL_SUN_convolution_border_modes = gl.GL_SUN_convolution_border_modes

GL_WRAP_BORDER_SUN = gl.GL_WRAP_BORDER_SUN

#GL_SUN_global_alpha

GL_SUN_global_alpha = gl.GL_SUN_global_alpha

GL_GLOBAL_ALPHA_SUN = gl.GL_GLOBAL_ALPHA_SUN
GL_GLOBAL_ALPHA_FACTOR_SUN = gl.GL_GLOBAL_ALPHA_FACTOR_SUN

def glGlobalAlphaFactorbSUN(factor):
    gl.glGlobalAlphaFactorbSUN(factor)

def glGlobalAlphaFactordSUN(factor):
    gl.glGlobalAlphaFactordSUN(factor)

def glGlobalAlphaFactorfSUN(factor):
    gl.glGlobalAlphaFactorfSUN(factor)

def glGlobalAlphaFactoriSUN(factor):
    gl.glGlobalAlphaFactoriSUN(factor)

def glGlobalAlphaFactorsSUN(factor):
    gl.glGlobalAlphaFactorsSUN(factor)

def glGlobalAlphaFactorubSUN(factor):
    gl.glGlobalAlphaFactorubSUN(factor)

def glGlobalAlphaFactoruiSUN(factor):
    gl.glGlobalAlphaFactoruiSUN(factor)

def glGlobalAlphaFactorusSUN(factor):
    gl.glGlobalAlphaFactorusSUN(factor)

#GL_SUN_mesh_array

GL_SUN_mesh_array = gl.GL_SUN_mesh_array

GL_QUAD_MESH_SUN = gl.GL_QUAD_MESH_SUN
GL_TRIANGLE_MESH_SUN = gl.GL_TRIANGLE_MESH_SUN

#GL_SUN_read_video_pixels

GL_SUN_read_video_pixels = gl.GL_SUN_read_video_pixels

def glReadVideoPixelsSUN(x, y, width, height, format, type, pixels):
    gl.glReadVideoPixelsSUN(x, y, width, height, format, type, <void*>pixels)

#GL_SUN_slice_accum

GL_SUN_slice_accum = gl.GL_SUN_slice_accum

GL_SLICE_ACCUM_SUN = gl.GL_SLICE_ACCUM_SUN

#GL_SUN_triangle_list

GL_SUN_triangle_list = gl.GL_SUN_triangle_list

GL_RESTART_SUN = gl.GL_RESTART_SUN
GL_REPLACE_MIDDLE_SUN = gl.GL_REPLACE_MIDDLE_SUN
GL_REPLACE_OLDEST_SUN = gl.GL_REPLACE_OLDEST_SUN
GL_TRIANGLE_LIST_SUN = gl.GL_TRIANGLE_LIST_SUN
GL_REPLACEMENT_CODE_SUN = gl.GL_REPLACEMENT_CODE_SUN
GL_REPLACEMENT_CODE_ARRAY_SUN = gl.GL_REPLACEMENT_CODE_ARRAY_SUN
GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN = gl.GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN
GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN = gl.GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN
GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN = gl.GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN
GL_R1UI_V3F_SUN = gl.GL_R1UI_V3F_SUN
GL_R1UI_C4UB_V3F_SUN = gl.GL_R1UI_C4UB_V3F_SUN
GL_R1UI_C3F_V3F_SUN = gl.GL_R1UI_C3F_V3F_SUN
GL_R1UI_N3F_V3F_SUN = gl.GL_R1UI_N3F_V3F_SUN
GL_R1UI_C4F_N3F_V3F_SUN = gl.GL_R1UI_C4F_N3F_V3F_SUN
GL_R1UI_T2F_V3F_SUN = gl.GL_R1UI_T2F_V3F_SUN
GL_R1UI_T2F_N3F_V3F_SUN = gl.GL_R1UI_T2F_N3F_V3F_SUN
GL_R1UI_T2F_C4F_N3F_V3F_SUN = gl.GL_R1UI_T2F_C4F_N3F_V3F_SUN

def glReplacementCodePointerSUN(type, stride,  pointer):
    gl.glReplacementCodePointerSUN(type, stride,  <void*>pointer)

def glReplacementCodeubSUN(code):
    gl.glReplacementCodeubSUN(code)

def glReplacementCodeubvSUN(unsigned char code):
    cdef unsigned char* code1 = &code
    gl.glReplacementCodeubvSUN( code1)

def glReplacementCodeuiSUN(code):
    gl.glReplacementCodeuiSUN(code)

def glReplacementCodeuivSUN(unsigned int code):
    cdef unsigned int* code1 = &code
    gl.glReplacementCodeuivSUN(code1)

def glReplacementCodeusSUN(code):
    gl.glReplacementCodeusSUN(code)

def glReplacementCodeusvSUN(unsigned short code):
    cdef unsigned short* code1 = &code
    gl.glReplacementCodeusvSUN(code1)

#GL_SUN_vertex

GL_SUN_vertex = gl.GL_SUN_vertex

def glColor3fVertex3fSUN(r, g, b, x, y, z):
    gl.glColor3fVertex3fSUN(r, g, b, x, y, z)

def glColor3fVertex3fvSUN(float c, float v):
    cdef float* c1 = &c
    cdef float* v1 = &v
    gl.glColor3fVertex3fvSUN( c1, v1)

def glColor4fNormal3fVertex3fSUN(r, g, b, a, nx, ny, nz, x, y, z):
    gl.glColor4fNormal3fVertex3fSUN(r, g, b, a, nx, ny, nz, x, y, z)

def glColor4fNormal3fVertex3fvSUN(float c, float n, float v):
    cdef float* c1 = &c
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glColor4fNormal3fVertex3fvSUN( c1, n1, v1)

def glColor4ubVertex2fSUN(r, g, b, a, x, y):
    gl.glColor4ubVertex2fSUN(<unsigned char>r, <unsigned char>g, <unsigned char>b, <unsigned char>a, x, y)

def glColor4ubVertex2fvSUN(unsigned char c, float v):
    cdef unsigned char* c1 = &c
    cdef float* v1 = &v
    gl.glColor4ubVertex2fvSUN(c1, v1)

def glColor4ubVertex3fSUN(r, g, b, a, x, y, z):
    gl.glColor4ubVertex3fSUN(<unsigned char>r, <unsigned char>g, <unsigned char>b, <unsigned char>a, x, y, z)

def glColor4ubVertex3fvSUN(unsigned char c, float v):
    cdef unsigned char* c1 = &c
    cdef float* v1 = &v
    gl.glColor4ubVertex3fvSUN(c1, v1)

def glNormal3fVertex3fSUN(nx, ny, nz, x, y, z):
    gl.glNormal3fVertex3fSUN(nx, ny, nz, x, y, z)

def glNormal3fVertex3fvSUN(float n, float v):
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glNormal3fVertex3fvSUN(n1, v1)

def glReplacementCodeuiColor3fVertex3fSUN(rc, r, g, b, x, y, z):
    gl.glReplacementCodeuiColor3fVertex3fSUN(rc, r, g, b, x, y, z)

def glReplacementCodeuiColor3fVertex3fvSUN(unsigned int rc,float c,float v):
    cdef unsigned int* rc1 = &rc
    cdef float* c1 = &c
    cdef float* v1 = &v
    gl.glReplacementCodeuiColor3fVertex3fvSUN( rc1, c1, v1)

def glReplacementCodeuiColor4fNormal3fVertex3fSUN(rc, r, g, b, a, nx, ny, nz, x, y, z):
    gl.glReplacementCodeuiColor4fNormal3fVertex3fSUN(rc, r, g, b, a, nx, ny, nz, x, y, z)

def glReplacementCodeuiColor4fNormal3fVertex3fvSUN(unsigned int rc, float c, float n, float v):
    cdef unsigned int* rc1 = &rc
    cdef float* c1 = &c
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glReplacementCodeuiColor4fNormal3fVertex3fvSUN( rc1, c1, n1, v1)

def glReplacementCodeuiColor4ubVertex3fSUN(rc, r, g, b, a, x, y, z):
    gl.glReplacementCodeuiColor4ubVertex3fSUN(rc, <unsigned char>r, <unsigned char>g, <unsigned char>b, <unsigned char>a, x, y, z)

def glReplacementCodeuiColor4ubVertex3fvSUN(unsigned int rc, unsigned char c, float v):
    cdef unsigned int* rc1 = &rc
    cdef unsigned char* c1 = &c
    cdef float* v1 = &v
    gl.glReplacementCodeuiColor4ubVertex3fvSUN( rc1, c1, v1)

def glReplacementCodeuiNormal3fVertex3fSUN(rc, nx, ny, nz, x, y, z):
    gl.glReplacementCodeuiNormal3fVertex3fSUN(rc, nx, ny, nz, x, y, z)

def glReplacementCodeuiNormal3fVertex3fvSUN(unsigned int rc, float n, float v):
    cdef unsigned int* rc1 = &rc
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glReplacementCodeuiNormal3fVertex3fvSUN( rc1, n1, v1)

def glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(rc, s, t, r, g, b, a, nx, ny, nz, x, y, z):
    gl.glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(rc, s, t, r, g, b, a, nx, ny, nz, x, y, z)

def glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(unsigned int rc, float tc, float c, float n, float v):
    cdef unsigned int* rc1 = &rc
    cdef float* tc1 = &tc
    cdef float* c1 = &c
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN( rc1, tc1, c1, n1, v1)

def glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(rc, s, t, nx, ny, nz, x, y, z):
    gl.glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(rc, s, t, nx, ny, nz, x, y, z)

def glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(unsigned int rc, float tc, float n, float v):
    cdef unsigned int* rc1 = &rc
    cdef float* tc1 = &tc
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN( rc1, tc1, n1, v1)

def glReplacementCodeuiTexCoord2fVertex3fSUN(rc, s, t, x, y, z):
    gl.glReplacementCodeuiTexCoord2fVertex3fSUN(rc, s, t, x, y, z)

def glReplacementCodeuiTexCoord2fVertex3fvSUN(unsigned int rc, float tc, float v):
    cdef unsigned int* rc1 = &rc
    cdef float* tc1 = &tc
    cdef float* v1 = &v
    gl.glReplacementCodeuiTexCoord2fVertex3fvSUN( rc1, tc1, v1)

def glReplacementCodeuiVertex3fSUN(rc, x, y, z):
    gl.glReplacementCodeuiVertex3fSUN(rc, x, y, z)

def glReplacementCodeuiVertex3fvSUN( unsigned int rc, float v):
    cdef unsigned int* rc1 = &rc
    cdef float* v1 = &v
    gl.glReplacementCodeuiVertex3fvSUN(rc1, v1)

def glTexCoord2fColor3fVertex3fSUN(s, t, r, g, b, x, y, z):
    gl.glTexCoord2fColor3fVertex3fSUN(s, t, r, g, b, x, y, z)

def glTexCoord2fColor3fVertex3fvSUN( float tc, float c, float v):
    cdef float* tc1 = &tc
    cdef float* c1 = &c
    cdef float* v1 = &v
    gl.glTexCoord2fColor3fVertex3fvSUN( tc1, c1, v1)

def glTexCoord2fColor4fNormal3fVertex3fSUN(s, t, r, g, b, a, nx, ny, nz, x, y, z):
    gl.glTexCoord2fColor4fNormal3fVertex3fSUN(s, t, r, g, b, a, nx, ny, nz, x, y, z)

def glTexCoord2fColor4fNormal3fVertex3fvSUN( float tc, float c, float n, float v):
    cdef float* tc1 = &tc
    cdef float* c1 = &c
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glTexCoord2fColor4fNormal3fVertex3fvSUN( tc1, c1, n1, v1)

def glTexCoord2fColor4ubVertex3fSUN(s, t, r, g, b, a, x, y, z):
    gl.glTexCoord2fColor4ubVertex3fSUN(s, t, r, g, b, a, x, y, z)

def glTexCoord2fColor4ubVertex3fvSUN(float tc, unsigned char c, float v):
    cdef float* tc1 = &tc
    cdef unsigned char* c1 = &c
    cdef float* v1 = &v
    gl.glTexCoord2fColor4ubVertex3fvSUN(tc1, c1, v1)

def glTexCoord2fNormal3fVertex3fSUN(s, t, nx, ny, nz, x, y, z):
    gl.glTexCoord2fNormal3fVertex3fSUN(s, t, nx, ny, nz, x, y, z)

def glTexCoord2fNormal3fVertex3fvSUN(float tc,float n,float v):
    cdef float* tc1 = &tc
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glTexCoord2fNormal3fVertex3fvSUN( tc1, n1, v1)

def glTexCoord2fVertex3fSUN(s, t, x, y, z):
    gl.glTexCoord2fVertex3fSUN(s, t, x, y, z)

def glTexCoord2fVertex3fvSUN(float tc, float v):
    cdef float* tc1 = &tc
    cdef float* v1 = &v
    gl.glTexCoord2fVertex3fvSUN(tc1, v1)

def glTexCoord4fColor4fNormal3fVertex4fSUN(s, t, p, q, r, g, b, a, nx, ny, nz, x, y, z, w):
    gl.glTexCoord4fColor4fNormal3fVertex4fSUN(s, t, p, q, r, g, b, a, nx, ny, nz, x, y, z, w)

def glTexCoord4fColor4fNormal3fVertex4fvSUN(float tc,float c, float n, float v):
    cdef float* tc1 = &tc
    cdef float* c1 = &c
    cdef float* n1 = &n
    cdef float* v1 = &v
    gl.glTexCoord4fColor4fNormal3fVertex4fvSUN( tc1, c1, n1, v1)

def glTexCoord4fVertex4fSUN(s, t, p, q, x, y, z, w):
    gl.glTexCoord4fVertex4fSUN(s, t, p, q, x, y, z, w)

def glTexCoord4fVertex4fvSUN(float tc, float v):
    cdef float* tc1 = &tc
    cdef float* v1 = &v
    gl.glTexCoord4fVertex4fvSUN(tc1, v1)