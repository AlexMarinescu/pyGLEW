# pyGLEW - Cython GLEW Wrapper for Python
#
# Copyright (C) 2012, Matthew Sitton
#               2012, Alex Marinescu
#
# LICENSED UNDER THE BSD LICENSE
#
# YOU SHOULD HAVE RECIEVED A COPY ALONG WITH THIS PROGRAM,
# SEE "LICENSE" FOR MORE INFORMATION.

cdef extern from "GL\glew.h":
    #GL_VERSION_1_1

    cdef int GL_VERSION_1_1

    ctypedef unsigned int GLenum
    ctypedef unsigned int GLbitfield
    ctypedef unsigned int GLuint
    ctypedef int GLint
    ctypedef int GLsizei
    ctypedef bint GLboolean
    ctypedef signed char GLbyte
    ctypedef short GLshort
    ctypedef unsigned char GLubyte
    ctypedef unsigned short GLushort
    ctypedef unsigned long GLulong
    ctypedef float GLfloat
    ctypedef float GLclampf
    ctypedef double GLdouble
    ctypedef double GLclampd
    ctypedef void GLvoid

    ctypedef signed long long GLint64EXT
    ctypedef unsigned long long GLuint64EXT
    ctypedef GLint64EXT  GLint64
    ctypedef GLuint64EXT GLuint64
    ctypedef __GLsync *GLsync
    ctypedef struct __GLsync:
        pass
    ctypedef char GLchar
    ctypedef void* GLDEBUGPROCARB
    ctypedef void* GLDEBUGPROCAMD

    #const hacks
    ctypedef char *const_char_ptr "const char*"
    ctypedef void *const_void_ptr "const void*"

    cdef int GL_ZERO
    cdef int GL_FALSE
    cdef int GL_LOGIC_OP
    cdef int GL_NONE
    cdef int GL_TEXTURE_COMPONENTS
    cdef int GL_NO_ERROR
    cdef int GL_POINTS
    cdef int GL_CURRENT_BIT
    cdef int GL_TRUE
    cdef int GL_ONE
    cdef int GL_CLIENT_PIXEL_STORE_BIT
    cdef int GL_LINES
    cdef int GL_LINE_LOOP
    cdef int GL_POINT_BIT
    cdef int GL_CLIENT_VERTEX_ARRAY_BIT
    cdef int GL_LINE_STRIP
    cdef int GL_LINE_BIT
    cdef int GL_TRIANGLES
    cdef int GL_TRIANGLE_STRIP
    cdef int GL_TRIANGLE_FAN
    cdef int GL_QUADS
    cdef int GL_QUAD_STRIP
    cdef int GL_POLYGON_BIT
    cdef int GL_POLYGON
    cdef int GL_POLYGON_STIPPLE_BIT
    cdef int GL_PIXEL_MODE_BIT
    cdef int GL_LIGHTING_BIT
    cdef int GL_FOG_BIT
    cdef int GL_DEPTH_BUFFER_BIT
    cdef int GL_ACCUM
    cdef int GL_LOAD
    cdef int GL_RETURN
    cdef int GL_MULT
    cdef int GL_ADD
    cdef int GL_NEVER
    cdef int GL_ACCUM_BUFFER_BIT
    cdef int GL_LESS
    cdef int GL_EQUAL
    cdef int GL_LEQUAL
    cdef int GL_GREATER
    cdef int GL_NOTEQUAL
    cdef int GL_GEQUAL
    cdef int GL_ALWAYS
    cdef int GL_SRC_COLOR
    cdef int GL_ONE_MINUS_SRC_COLOR
    cdef int GL_SRC_ALPHA
    cdef int GL_ONE_MINUS_SRC_ALPHA
    cdef int GL_DST_ALPHA
    cdef int GL_ONE_MINUS_DST_ALPHA
    cdef int GL_DST_COLOR
    cdef int GL_ONE_MINUS_DST_COLOR
    cdef int GL_SRC_ALPHA_SATURATE
    cdef int GL_STENCIL_BUFFER_BIT
    cdef int GL_FRONT_LEFT
    cdef int GL_FRONT_RIGHT
    cdef int GL_BACK_LEFT
    cdef int GL_BACK_RIGHT
    cdef int GL_FRONT
    cdef int GL_BACK
    cdef int GL_LEFT
    cdef int GL_RIGHT
    cdef int GL_FRONT_AND_BACK
    cdef int GL_AUX0
    cdef int GL_AUX1
    cdef int GL_AUX2
    cdef int GL_AUX3
    cdef int GL_INVALID_ENUM
    cdef int GL_INVALID_VALUE
    cdef int GL_INVALID_OPERATION
    cdef int GL_STACK_OVERFLOW
    cdef int GL_STACK_UNDERFLOW
    cdef int GL_OUT_OF_MEMORY
    cdef int GL_2D
    cdef int GL_3D
    cdef int GL_3D_COLOR
    cdef int GL_3D_COLOR_TEXTURE
    cdef int GL_4D_COLOR_TEXTURE
    cdef int GL_PASS_THROUGH_TOKEN
    cdef int GL_POINT_TOKEN
    cdef int GL_LINE_TOKEN
    cdef int GL_POLYGON_TOKEN
    cdef int GL_BITMAP_TOKEN
    cdef int GL_DRAW_PIXEL_TOKEN
    cdef int GL_COPY_PIXEL_TOKEN
    cdef int GL_LINE_RESET_TOKEN
    cdef int GL_EXP
    cdef int GL_VIEWPORT_BIT
    cdef int GL_EXP2
    cdef int GL_CW
    cdef int GL_CCW
    cdef int GL_COEFF
    cdef int GL_ORDER
    cdef int GL_DOMAIN
    cdef int GL_CURRENT_COLOR
    cdef int GL_CURRENT_INDEX
    cdef int GL_CURRENT_NORMAL
    cdef int GL_CURRENT_TEXTURE_COORDS
    cdef int GL_CURRENT_RASTER_COLOR
    cdef int GL_CURRENT_RASTER_INDEX
    cdef int GL_CURRENT_RASTER_TEXTURE_COORDS
    cdef int GL_CURRENT_RASTER_POSITION
    cdef int GL_CURRENT_RASTER_POSITION_VALID
    cdef int GL_CURRENT_RASTER_DISTANCE
    cdef int GL_POINT_SMOOTH
    cdef int GL_POINT_SIZE
    cdef int GL_POINT_SIZE_RANGE
    cdef int GL_POINT_SIZE_GRANULARITY
    cdef int GL_LINE_SMOOTH
    cdef int GL_LINE_WIDTH
    cdef int GL_LINE_WIDTH_RANGE
    cdef int GL_LINE_WIDTH_GRANULARITY
    cdef int GL_LINE_STIPPLE
    cdef int GL_LINE_STIPPLE_PATTERN
    cdef int GL_LINE_STIPPLE_REPEAT
    cdef int GL_LIST_MODE
    cdef int GL_MAX_LIST_NESTING
    cdef int GL_LIST_BASE
    cdef int GL_LIST_INDEX
    cdef int GL_POLYGON_MODE
    cdef int GL_POLYGON_SMOOTH
    cdef int GL_POLYGON_STIPPLE
    cdef int GL_EDGE_FLAG
    cdef int GL_CULL_FACE
    cdef int GL_CULL_FACE_MODE
    cdef int GL_FRONT_FACE
    cdef int GL_LIGHTING
    cdef int GL_LIGHT_MODEL_LOCAL_VIEWER
    cdef int GL_LIGHT_MODEL_TWO_SIDE
    cdef int GL_LIGHT_MODEL_AMBIENT
    cdef int GL_SHADE_MODEL
    cdef int GL_COLOR_MATERIAL_FACE
    cdef int GL_COLOR_MATERIAL_PARAMETER
    cdef int GL_COLOR_MATERIAL
    cdef int GL_FOG
    cdef int GL_FOG_INDEX
    cdef int GL_FOG_DENSITY
    cdef int GL_FOG_START
    cdef int GL_FOG_END
    cdef int GL_FOG_MODE
    cdef int GL_FOG_COLOR
    cdef int GL_DEPTH_RANGE
    cdef int GL_DEPTH_TEST
    cdef int GL_DEPTH_WRITEMASK
    cdef int GL_DEPTH_CLEAR_VALUE
    cdef int GL_DEPTH_FUNC
    cdef int GL_ACCUM_CLEAR_VALUE
    cdef int GL_STENCIL_TEST
    cdef int GL_STENCIL_CLEAR_VALUE
    cdef int GL_STENCIL_FUNC
    cdef int GL_STENCIL_VALUE_MASK
    cdef int GL_STENCIL_FAIL
    cdef int GL_STENCIL_PASS_DEPTH_FAIL
    cdef int GL_STENCIL_PASS_DEPTH_PASS
    cdef int GL_STENCIL_REF
    cdef int GL_STENCIL_WRITEMASK
    cdef int GL_MATRIX_MODE
    cdef int GL_NORMALIZE
    cdef int GL_VIEWPORT
    cdef int GL_MODELVIEW_STACK_DEPTH
    cdef int GL_PROJECTION_STACK_DEPTH
    cdef int GL_TEXTURE_STACK_DEPTH
    cdef int GL_MODELVIEW_MATRIX
    cdef int GL_PROJECTION_MATRIX
    cdef int GL_TEXTURE_MATRIX
    cdef int GL_ATTRIB_STACK_DEPTH
    cdef int GL_CLIENT_ATTRIB_STACK_DEPTH
    cdef int GL_ALPHA_TEST
    cdef int GL_ALPHA_TEST_FUNC
    cdef int GL_ALPHA_TEST_REF
    cdef int GL_DITHER
    cdef int GL_BLEND_DST
    cdef int GL_BLEND_SRC
    cdef int GL_BLEND
    cdef int GL_LOGIC_OP_MODE
    cdef int GL_INDEX_LOGIC_OP
    cdef int GL_COLOR_LOGIC_OP
    cdef int GL_AUX_BUFFERS
    cdef int GL_DRAW_BUFFER
    cdef int GL_READ_BUFFER
    cdef int GL_SCISSOR_BOX
    cdef int GL_SCISSOR_TEST
    cdef int GL_INDEX_CLEAR_VALUE
    cdef int GL_INDEX_WRITEMASK
    cdef int GL_COLOR_CLEAR_VALUE
    cdef int GL_COLOR_WRITEMASK
    cdef int GL_INDEX_MODE
    cdef int GL_RGBA_MODE
    cdef int GL_DOUBLEBUFFER
    cdef int GL_STEREO
    cdef int GL_RENDER_MODE
    cdef int GL_PERSPECTIVE_CORRECTION_HINT
    cdef int GL_POINT_SMOOTH_HINT
    cdef int GL_LINE_SMOOTH_HINT
    cdef int GL_POLYGON_SMOOTH_HINT
    cdef int GL_FOG_HINT
    cdef int GL_TEXTURE_GEN_S
    cdef int GL_TEXTURE_GEN_T
    cdef int GL_TEXTURE_GEN_R
    cdef int GL_TEXTURE_GEN_Q
    cdef int GL_PIXEL_MAP_I_TO_I
    cdef int GL_PIXEL_MAP_S_TO_S
    cdef int GL_PIXEL_MAP_I_TO_R
    cdef int GL_PIXEL_MAP_I_TO_G
    cdef int GL_PIXEL_MAP_I_TO_B
    cdef int GL_PIXEL_MAP_I_TO_A
    cdef int GL_PIXEL_MAP_R_TO_R
    cdef int GL_PIXEL_MAP_G_TO_G
    cdef int GL_PIXEL_MAP_B_TO_B
    cdef int GL_PIXEL_MAP_A_TO_A
    cdef int GL_PIXEL_MAP_I_TO_I_SIZE
    cdef int GL_PIXEL_MAP_S_TO_S_SIZE
    cdef int GL_PIXEL_MAP_I_TO_R_SIZE
    cdef int GL_PIXEL_MAP_I_TO_G_SIZE
    cdef int GL_PIXEL_MAP_I_TO_B_SIZE
    cdef int GL_PIXEL_MAP_I_TO_A_SIZE
    cdef int GL_PIXEL_MAP_R_TO_R_SIZE
    cdef int GL_PIXEL_MAP_G_TO_G_SIZE
    cdef int GL_PIXEL_MAP_B_TO_B_SIZE
    cdef int GL_PIXEL_MAP_A_TO_A_SIZE
    cdef int GL_UNPACK_SWAP_BYTES
    cdef int GL_UNPACK_LSB_FIRST
    cdef int GL_UNPACK_ROW_LENGTH
    cdef int GL_UNPACK_SKIP_ROWS
    cdef int GL_UNPACK_SKIP_PIXELS
    cdef int GL_UNPACK_ALIGNMENT
    cdef int GL_PACK_SWAP_BYTES
    cdef int GL_PACK_LSB_FIRST
    cdef int GL_PACK_ROW_LENGTH
    cdef int GL_PACK_SKIP_ROWS
    cdef int GL_PACK_SKIP_PIXELS
    cdef int GL_PACK_ALIGNMENT
    cdef int GL_MAP_COLOR
    cdef int GL_MAP_STENCIL
    cdef int GL_INDEX_SHIFT
    cdef int GL_INDEX_OFFSET
    cdef int GL_RED_SCALE
    cdef int GL_RED_BIAS
    cdef int GL_ZOOM_X
    cdef int GL_ZOOM_Y
    cdef int GL_GREEN_SCALE
    cdef int GL_GREEN_BIAS
    cdef int GL_BLUE_SCALE
    cdef int GL_BLUE_BIAS
    cdef int GL_ALPHA_SCALE
    cdef int GL_ALPHA_BIAS
    cdef int GL_DEPTH_SCALE
    cdef int GL_DEPTH_BIAS
    cdef int GL_MAX_EVAL_ORDER
    cdef int GL_MAX_LIGHTS
    cdef int GL_MAX_CLIP_PLANES
    cdef int GL_MAX_TEXTURE_SIZE
    cdef int GL_MAX_PIXEL_MAP_TABLE
    cdef int GL_MAX_ATTRIB_STACK_DEPTH
    cdef int GL_MAX_MODELVIEW_STACK_DEPTH
    cdef int GL_MAX_NAME_STACK_DEPTH
    cdef int GL_MAX_PROJECTION_STACK_DEPTH
    cdef int GL_MAX_TEXTURE_STACK_DEPTH
    cdef int GL_MAX_VIEWPORT_DIMS
    cdef int GL_MAX_CLIENT_ATTRIB_STACK_DEPTH
    cdef int GL_SUBPIXEL_BITS
    cdef int GL_INDEX_BITS
    cdef int GL_RED_BITS
    cdef int GL_GREEN_BITS
    cdef int GL_BLUE_BITS
    cdef int GL_ALPHA_BITS
    cdef int GL_DEPTH_BITS
    cdef int GL_STENCIL_BITS
    cdef int GL_ACCUM_RED_BITS
    cdef int GL_ACCUM_GREEN_BITS
    cdef int GL_ACCUM_BLUE_BITS
    cdef int GL_ACCUM_ALPHA_BITS
    cdef int GL_NAME_STACK_DEPTH
    cdef int GL_AUTO_NORMAL
    cdef int GL_MAP1_COLOR_4
    cdef int GL_MAP1_INDEX
    cdef int GL_MAP1_NORMAL
    cdef int GL_MAP1_TEXTURE_COORD_1
    cdef int GL_MAP1_TEXTURE_COORD_2
    cdef int GL_MAP1_TEXTURE_COORD_3
    cdef int GL_MAP1_TEXTURE_COORD_4
    cdef int GL_MAP1_VERTEX_3
    cdef int GL_MAP1_VERTEX_4
    cdef int GL_MAP2_COLOR_4
    cdef int GL_MAP2_INDEX
    cdef int GL_MAP2_NORMAL
    cdef int GL_MAP2_TEXTURE_COORD_1
    cdef int GL_MAP2_TEXTURE_COORD_2
    cdef int GL_MAP2_TEXTURE_COORD_3
    cdef int GL_MAP2_TEXTURE_COORD_4
    cdef int GL_MAP2_VERTEX_3
    cdef int GL_MAP2_VERTEX_4
    cdef int GL_MAP1_GRID_DOMAIN
    cdef int GL_MAP1_GRID_SEGMENTS
    cdef int GL_MAP2_GRID_DOMAIN
    cdef int GL_MAP2_GRID_SEGMENTS
    cdef int GL_TEXTURE_1D
    cdef int GL_TEXTURE_2D
    cdef int GL_FEEDBACK_BUFFER_POINTER
    cdef int GL_FEEDBACK_BUFFER_SIZE
    cdef int GL_FEEDBACK_BUFFER_TYPE
    cdef int GL_SELECTION_BUFFER_POINTER
    cdef int GL_SELECTION_BUFFER_SIZE
    cdef int GL_TEXTURE_WIDTH
    cdef int GL_TRANSFORM_BIT
    cdef int GL_TEXTURE_HEIGHT
    cdef int GL_TEXTURE_INTERNAL_FORMAT
    cdef int GL_TEXTURE_BORDER_COLOR
    cdef int GL_TEXTURE_BORDER
    cdef int GL_DONT_CARE
    cdef int GL_FASTEST
    cdef int GL_NICEST
    cdef int GL_AMBIENT
    cdef int GL_DIFFUSE
    cdef int GL_SPECULAR
    cdef int GL_POSITION
    cdef int GL_SPOT_DIRECTION
    cdef int GL_SPOT_EXPONENT
    cdef int GL_SPOT_CUTOFF
    cdef int GL_CONSTANT_ATTENUATION
    cdef int GL_LINEAR_ATTENUATION
    cdef int GL_QUADRATIC_ATTENUATION
    cdef int GL_COMPILE
    cdef int GL_COMPILE_AND_EXECUTE
    cdef int GL_BYTE
    cdef int GL_UNSIGNED_BYTE
    cdef int GL_SHORT
    cdef int GL_UNSIGNED_SHORT
    cdef int GL_INT
    cdef int GL_UNSIGNED_INT
    cdef int GL_FLOAT
    cdef int GL_2_BYTES
    cdef int GL_3_BYTES
    cdef int GL_4_BYTES
    cdef int GL_DOUBLE
    cdef int GL_CLEAR
    cdef int GL_AND
    cdef int GL_AND_REVERSE
    cdef int GL_COPY
    cdef int GL_AND_INVERTED
    cdef int GL_NOOP
    cdef int GL_XOR
    cdef int GL_OR
    cdef int GL_NOR
    cdef int GL_EQUIV
    cdef int GL_INVERT
    cdef int GL_OR_REVERSE
    cdef int GL_COPY_INVERTED
    cdef int GL_OR_INVERTED
    cdef int GL_NAND
    cdef int GL_SET
    cdef int GL_EMISSION
    cdef int GL_SHININESS
    cdef int GL_AMBIENT_AND_DIFFUSE
    cdef int GL_COLOR_INDEXES
    cdef int GL_MODELVIEW
    cdef int GL_PROJECTION
    cdef int GL_TEXTURE
    cdef int GL_COLOR
    cdef int GL_DEPTH
    cdef int GL_STENCIL
    cdef int GL_COLOR_INDEX
    cdef int GL_STENCIL_INDEX
    cdef int GL_DEPTH_COMPONENT
    cdef int GL_RED
    cdef int GL_GREEN
    cdef int GL_BLUE
    cdef int GL_ALPHA
    cdef int GL_RGB
    cdef int GL_RGBA
    cdef int GL_LUMINANCE
    cdef int GL_LUMINANCE_ALPHA
    cdef int GL_BITMAP
    cdef int GL_POINT
    cdef int GL_LINE
    cdef int GL_FILL
    cdef int GL_RENDER
    cdef int GL_FEEDBACK
    cdef int GL_SELECT
    cdef int GL_FLAT
    cdef int GL_SMOOTH
    cdef int GL_KEEP
    cdef int GL_REPLACE
    cdef int GL_INCR
    cdef int GL_DECR
    cdef int GL_VENDOR
    cdef int GL_RENDERER
    cdef int GL_VERSION
    cdef int GL_EXTENSIONS
    cdef int GL_S
    cdef int GL_ENABLE_BIT
    cdef int GL_T
    cdef int GL_R
    cdef int GL_Q
    cdef int GL_MODULATE
    cdef int GL_DECAL
    cdef int GL_TEXTURE_ENV_MODE
    cdef int GL_TEXTURE_ENV_COLOR
    cdef int GL_TEXTURE_ENV
    cdef int GL_EYE_LINEAR
    cdef int GL_OBJECT_LINEAR
    cdef int GL_SPHERE_MAP
    cdef int GL_TEXTURE_GEN_MODE
    cdef int GL_OBJECT_PLANE
    cdef int GL_EYE_PLANE
    cdef int GL_NEAREST
    cdef int GL_LINEAR
    cdef int GL_NEAREST_MIPMAP_NEAREST
    cdef int GL_LINEAR_MIPMAP_NEAREST
    cdef int GL_NEAREST_MIPMAP_LINEAR
    cdef int GL_LINEAR_MIPMAP_LINEAR
    cdef int GL_TEXTURE_MAG_FILTER
    cdef int GL_TEXTURE_MIN_FILTER
    cdef int GL_TEXTURE_WRAP_S
    cdef int GL_TEXTURE_WRAP_T
    cdef int GL_CLAMP
    cdef int GL_REPEAT
    cdef int GL_POLYGON_OFFSET_UNITS
    cdef int GL_POLYGON_OFFSET_POINT
    cdef int GL_POLYGON_OFFSET_LINE
    cdef int GL_R3_G3_B2
    cdef int GL_V2F
    cdef int GL_V3F
    cdef int GL_C4UB_V2F
    cdef int GL_C4UB_V3F
    cdef int GL_C3F_V3F
    cdef int GL_N3F_V3F
    cdef int GL_C4F_N3F_V3F
    cdef int GL_T2F_V3F
    cdef int GL_T4F_V4F
    cdef int GL_T2F_C4UB_V3F
    cdef int GL_T2F_C3F_V3F
    cdef int GL_T2F_N3F_V3F
    cdef int GL_T2F_C4F_N3F_V3F
    cdef int GL_T4F_C4F_N3F_V4F
    cdef int GL_CLIP_PLANE0
    cdef int GL_CLIP_PLANE1
    cdef int GL_CLIP_PLANE2
    cdef int GL_CLIP_PLANE3
    cdef int GL_CLIP_PLANE4
    cdef int GL_CLIP_PLANE5
    cdef int GL_LIGHT0
    cdef int GL_COLOR_BUFFER_BIT
    cdef int GL_LIGHT1
    cdef int GL_LIGHT2
    cdef int GL_LIGHT3
    cdef int GL_LIGHT4
    cdef int GL_LIGHT5
    cdef int GL_LIGHT6
    cdef int GL_LIGHT7
    cdef int GL_HINT_BIT
    cdef int GL_POLYGON_OFFSET_FILL
    cdef int GL_POLYGON_OFFSET_FACTOR
    cdef int GL_ALPHA4
    cdef int GL_ALPHA8
    cdef int GL_ALPHA12
    cdef int GL_ALPHA16
    cdef int GL_LUMINANCE4
    cdef int GL_LUMINANCE8
    cdef int GL_LUMINANCE12
    cdef int GL_LUMINANCE16
    cdef int GL_LUMINANCE4_ALPHA4
    cdef int GL_LUMINANCE6_ALPHA2
    cdef int GL_LUMINANCE8_ALPHA8
    cdef int GL_LUMINANCE12_ALPHA4
    cdef int GL_LUMINANCE12_ALPHA12
    cdef int GL_LUMINANCE16_ALPHA16
    cdef int GL_INTENSITY
    cdef int GL_INTENSITY4
    cdef int GL_INTENSITY8
    cdef int GL_INTENSITY12
    cdef int GL_INTENSITY16
    cdef int GL_RGB4
    cdef int GL_RGB5
    cdef int GL_RGB8
    cdef int GL_RGB10
    cdef int GL_RGB12
    cdef int GL_RGB16
    cdef int GL_RGBA2
    cdef int GL_RGBA4
    cdef int GL_RGB5_A1
    cdef int GL_RGBA8
    cdef int GL_RGB10_A2
    cdef int GL_RGBA12
    cdef int GL_RGBA16
    cdef int GL_TEXTURE_RED_SIZE
    cdef int GL_TEXTURE_GREEN_SIZE
    cdef int GL_TEXTURE_BLUE_SIZE
    cdef int GL_TEXTURE_ALPHA_SIZE
    cdef int GL_TEXTURE_LUMINANCE_SIZE
    cdef int GL_TEXTURE_INTENSITY_SIZE
    cdef int GL_PROXY_TEXTURE_1D
    cdef int GL_PROXY_TEXTURE_2D
    cdef int GL_TEXTURE_PRIORITY
    cdef int GL_TEXTURE_RESIDENT
    cdef int GL_TEXTURE_BINDING_1D
    cdef int GL_TEXTURE_BINDING_2D
    cdef int GL_VERTEX_ARRAY
    cdef int GL_NORMAL_ARRAY
    cdef int GL_COLOR_ARRAY
    cdef int GL_INDEX_ARRAY
    cdef int GL_TEXTURE_COORD_ARRAY
    cdef int GL_EDGE_FLAG_ARRAY
    cdef int GL_VERTEX_ARRAY_SIZE
    cdef int GL_VERTEX_ARRAY_TYPE
    cdef int GL_VERTEX_ARRAY_STRIDE
    cdef int GL_NORMAL_ARRAY_TYPE
    cdef int GL_NORMAL_ARRAY_STRIDE
    cdef int GL_COLOR_ARRAY_SIZE
    cdef int GL_COLOR_ARRAY_TYPE
    cdef int GL_COLOR_ARRAY_STRIDE
    cdef int GL_INDEX_ARRAY_TYPE
    cdef int GL_INDEX_ARRAY_STRIDE
    cdef int GL_TEXTURE_COORD_ARRAY_SIZE
    cdef int GL_TEXTURE_COORD_ARRAY_TYPE
    cdef int GL_TEXTURE_COORD_ARRAY_STRIDE
    cdef int GL_EDGE_FLAG_ARRAY_STRIDE
    cdef int GL_VERTEX_ARRAY_POINTER
    cdef int GL_NORMAL_ARRAY_POINTER
    cdef int GL_COLOR_ARRAY_POINTER
    cdef int GL_INDEX_ARRAY_POINTER
    cdef int GL_TEXTURE_COORD_ARRAY_POINTER
    cdef int GL_EDGE_FLAG_ARRAY_POINTER
    cdef int GL_COLOR_INDEX1_EXT
    cdef int GL_COLOR_INDEX2_EXT
    cdef int GL_COLOR_INDEX4_EXT
    cdef int GL_COLOR_INDEX8_EXT
    cdef int GL_COLOR_INDEX12_EXT
    cdef int GL_COLOR_INDEX16_EXT
    cdef int GL_EVAL_BIT
    cdef int GL_LIST_BIT
    cdef int GL_TEXTURE_BIT
    cdef int GL_SCISSOR_BIT
    cdef int GL_ALL_ATTRIB_BITS
    cdef int GL_CLIENT_ALL_ATTRIB_BITS

    void glAccum (GLenum op, GLfloat value)
    void glAlphaFunc (GLenum func, GLclampf ref)
    GLboolean glAreTexturesResident (GLsizei n, GLuint* textures, GLboolean *residences)
    void glArrayElement (GLint i)
    void glBegin (GLenum mode)
    void glBindTexture (GLenum target, GLuint texture)
    void glBitmap (GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte* bitmap)
    void glBlendFunc (GLenum sfactor, GLenum dfactor)
    void glCallList (GLuint list)
    void glCallLists (GLsizei n, GLenum type, GLvoid *lists)
    void glClear (GLbitfield mask)
    void glClearAccum (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)
    void glClearColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
    void glClearDepth (GLclampd depth)
    void glClearIndex (GLfloat c)
    void glClearStencil (GLint s)
    void glClipPlane (GLenum plane, GLdouble* equation)
    void glColor3b (GLbyte red, GLbyte green, GLbyte blue)
    void glColor3bv (GLbyte* v)
    void glColor3d (GLdouble red, GLdouble green, GLdouble blue)
    void glColor3dv (GLdouble* v)
    void glColor3f (GLfloat red, GLfloat green, GLfloat blue)
    void glColor3fv (GLfloat* v)
    void glColor3i (GLint red, GLint green, GLint blue)
    void glColor3iv (GLint* v)
    void glColor3s (GLshort red, GLshort green, GLshort blue)
    void glColor3sv (GLshort* v)
    void glColor3ub (GLubyte red, GLubyte green, GLubyte blue)
    void glColor3ubv (GLubyte* v)
    void glColor3ui (GLuint red, GLuint green, GLuint blue)
    void glColor3uiv (GLuint* v)
    void glColor3us (GLushort red, GLushort green, GLushort blue)
    void glColor3usv (GLushort* v)
    void glColor4b (GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha)
    void glColor4bv (GLbyte* v)
    void glColor4d (GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)
    void glColor4dv (GLdouble* v)
    void glColor4f (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)
    void glColor4fv (GLfloat* v)
    void glColor4i (GLint red, GLint green, GLint blue, GLint alpha)
    void glColor4iv (GLint* v)
    void glColor4s (GLshort red, GLshort green, GLshort blue, GLshort alpha)
    void glColor4sv (GLshort* v)
    void glColor4ub (GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha)
    void glColor4ubv (GLubyte* v)
    void glColor4ui (GLuint red, GLuint green, GLuint blue, GLuint alpha)
    void glColor4uiv (GLuint* v)
    void glColor4us (GLushort red, GLushort green, GLushort blue, GLushort alpha)
    void glColor4usv (GLushort* v)
    void glColorMask (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)
    void glColorMaterial (GLenum face, GLenum mode)
    void glColorPointer (GLint size, GLenum type, GLsizei stride, GLvoid *pointer)
    void glCopyPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum type)
    void glCopyTexImage1D (GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLint border)
    void glCopyTexImage2D (GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
    void glCopyTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
    void glCopyTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
    void glCullFace (GLenum mode)
    void glDeleteLists (GLuint list, GLsizei range)
    void glDeleteTextures (GLsizei n, GLuint* textures)
    void glDepthFunc (GLenum func)
    void glDepthMask (GLboolean flag)
    void glDepthRange (GLclampd zNear, GLclampd zFar)
    void glDisable (GLenum cap)
    void glDisableClientState (GLenum array)
    void glDrawArrays (GLenum mode, GLint first, GLsizei count)
    void glDrawBuffer (GLenum mode)
    void glDrawElements (GLenum mode, GLsizei count, GLenum type, GLvoid *indices)
    void glDrawPixels (GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)
    void glEdgeFlag (GLboolean flag)
    void glEdgeFlagPointer (GLsizei stride, GLvoid *pointer)
    void glEdgeFlagv (GLboolean* flag)
    void glEnable (GLenum cap)
    void glEnableClientState (GLenum array)
    void glEnd ()
    void glEndList ()
    void glEvalCoord1d (GLdouble u)
    void glEvalCoord1dv (GLdouble* u)
    void glEvalCoord1f (GLfloat u)
    void glEvalCoord1fv (GLfloat* u)
    void glEvalCoord2d (GLdouble u, GLdouble v)
    void glEvalCoord2dv (GLdouble* u)
    void glEvalCoord2f (GLfloat u, GLfloat v)
    void glEvalCoord2fv (GLfloat* u)
    void glEvalMesh1 (GLenum mode, GLint i1, GLint i2)
    void glEvalMesh2 (GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2)
    void glEvalPoint1 (GLint i)
    void glEvalPoint2 (GLint i, GLint j)
    void glFeedbackBuffer (GLsizei size, GLenum type, GLfloat *buffer)
    void glFinish ()
    void glFlush ()
    void glFogf (GLenum pname, GLfloat param)
    void glFogfv (GLenum pname, GLfloat *params)
    void glFogiv (GLenum pname, GLint* params)
    void glFogi (GLenum pname, GLint param)
    void glFrontFace (GLenum mode)
    void glFrustum (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)
    GLuint glGenLists (GLsizei range)
    void glGenTextures (GLsizei n, GLuint *textures)
    void glGetBooleanv (GLenum pname, GLboolean *params)
    void glGetClipPlane (GLenum plane, GLdouble *equation)
    void glGetDoublev (GLenum pname, GLdouble *params)
    GLenum glGetError ()
    void glGetFloatv (GLenum pname, GLfloat *params)
    void glGetIntegerv (GLenum pname, GLint *params)
    void glGetLightfv (GLenum light, GLenum pname, GLfloat *params)
    void glGetLightiv (GLenum light, GLenum pname, GLint *params)
    void glGetMapdv (GLenum target, GLenum query, GLdouble *v)
    void glGetMapfv (GLenum target, GLenum query, GLfloat *v)
    void glGetMapiv (GLenum target, GLenum query, GLint *v)
    void glGetMaterialfv (GLenum face, GLenum pname, GLfloat *params)
    void glGetMaterialiv (GLenum face, GLenum pname, GLint *params)
    void glGetPixelMapfv (GLenum map, GLfloat *values)
    void glGetPixelMapuiv (GLenum map, GLuint *values)
    void glGetPixelMapusv (GLenum map, GLushort *values)
    void glGetPointerv (GLenum pname, GLvoid* *params)
    void glGetPolygonStipple (GLubyte *mask)
    GLubyte glGetString (GLenum name)
    void glGetTexEnvfv (GLenum target, GLenum pname, GLfloat *params)
    void glGetTexEnviv (GLenum target, GLenum pname, GLint *params)
    void glGetTexGendv (GLenum coord, GLenum pname, GLdouble *params)
    void glGetTexGenfv (GLenum coord, GLenum pname, GLfloat *params)
    void glGetTexGeniv (GLenum coord, GLenum pname, GLint *params)
    void glGetTexImage (GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels)
    void glGetTexLevelParameterfv (GLenum target, GLint level, GLenum pname, GLfloat *params)
    void glGetTexLevelParameteriv (GLenum target, GLint level, GLenum pname, GLint *params)
    void glGetTexParameterfv (GLenum target, GLenum pname, GLfloat *params)
    void glGetTexParameteriv (GLenum target, GLenum pname, GLint *params)
    void glHint (GLenum target, GLenum mode)
    void glIndexMask (GLuint mask)
    void glIndexPointer (GLenum type, GLsizei stride, GLvoid *pointer)
    void glIndexd (GLdouble c)
    void glIndexdv (GLdouble* c)
    void glIndexf (GLfloat c)
    void glIndexfv (GLfloat* c)
    void glIndexi (GLint c)
    void glIndexiv (GLint* c)
    void glIndexs (GLshort c)
    void glIndexsv (GLshort* c)
    void glIndexub (GLubyte c)
    void glIndexubv (GLubyte* c)
    void glInitNames ()
    void glInterleavedArrays (GLenum format, GLsizei stride, GLvoid *pointer)
    GLboolean glIsEnabled (GLenum cap)
    GLboolean glIsList (GLuint list)
    GLboolean glIsTexture (GLuint texture)
    void glLightModelf (GLenum pname, GLfloat param)
    void glLightModelfv (GLenum pname, GLfloat* params)
    void glLightModeli (GLenum pname, GLint param)
    void glLightModeliv (GLenum pname, GLint* params)
    void glLightf (GLenum light, GLenum pname, GLfloat param)
    void glLightfv (GLenum light, GLenum pname, GLfloat* params)
    void glLighti (GLenum light, GLenum pname, GLint param)
    void glLightiv (GLenum light, GLenum pname, GLint* params)
    void glLineStipple (GLint factor, GLushort pattern)
    void glLineWidth (GLfloat width)
    void glListBase (GLuint base)
    void glLoadIdentity ()
    void glLoadMatrixd (GLdouble* m)
    void glLoadMatrixf (GLfloat* m)
    void glLoadName (GLuint name)
    void glLogicOp (GLenum opcode)
    void glMap1d (GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble* points)
    void glMap1f (GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat* points)
    void glMap2d (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble* points)
    void glMap2f (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat* points)
    void glMapGrid1d (GLint un, GLdouble u1, GLdouble u2)
    void glMapGrid1f (GLint un, GLfloat u1, GLfloat u2)
    void glMapGrid2d (GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2)
    void glMapGrid2f (GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2)
    void glMaterialf (GLenum face, GLenum pname, GLfloat param)
    void glMaterialfv (GLenum face, GLenum pname, GLfloat* params)
    void glMateriali (GLenum face, GLenum pname, GLint param)
    void glMaterialiv (GLenum face, GLenum pname, GLint* params)
    void glMatrixMode (GLenum mode)
    void glMultMatrixd (GLdouble* m)
    void glMultMatrixf (GLfloat* m)
    void glNewList (GLuint list, GLenum mode)
    void glNormal3b (GLbyte nx, GLbyte ny, GLbyte nz)
    void glNormal3bv (GLbyte* v)
    void glNormal3d (GLdouble nx, GLdouble ny, GLdouble nz)
    void glNormal3dv (GLdouble* v)
    void glNormal3f (GLfloat nx, GLfloat ny, GLfloat nz)
    void glNormal3fv (GLfloat* v)
    void glNormal3i (GLint nx, GLint ny, GLint nz)
    void glNormal3iv (GLint* v)
    void glNormal3s (GLshort nx, GLshort ny, GLshort nz)
    void glNormal3sv (GLshort* v)
    void glNormalPointer (GLenum type, GLsizei stride, GLvoid *pointer)
    void glOrtho (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)
    void glPassThrough (GLfloat token)
    void glPixelMapfv (GLenum map, GLsizei mapsize, GLfloat* values)
    void glPixelMapuiv (GLenum map, GLsizei mapsize, GLuint* values)
    void glPixelMapusv (GLenum map, GLsizei mapsize, GLushort* values)
    void glPixelStoref (GLenum pname, GLfloat param)
    void glPixelStorei (GLenum pname, GLint param)
    void glPixelTransferf (GLenum pname, GLfloat param)
    void glPixelTransferi (GLenum pname, GLint param)
    void glPixelZoom (GLfloat xfactor, GLfloat yfactor)
    void glPointSize (GLfloat size)
    void glPolygonMode (GLenum face, GLenum mode)
    void glPolygonOffset (GLfloat factor, GLfloat units)
    void glPolygonStipple (GLubyte* mask)
    void glPopAttrib ()
    void glPopClientAttrib ()
    void glPopMatrix ()
    void glPopName ()
    void glPrioritizeTextures (GLsizei n, GLuint* textures, GLclampf* priorities)
    void glPushAttrib (GLbitfield mask)
    void glPushClientAttrib (GLbitfield mask)
    void glPushMatrix ()
    void glPushName (GLuint name)
    void glRasterPos2d (GLdouble x, GLdouble y)
    void glRasterPos2dv (GLdouble* v)
    void glRasterPos2f (GLfloat x, GLfloat y)
    void glRasterPos2fv (GLfloat* v)
    void glRasterPos2i (GLint x, GLint y)
    void glRasterPos2iv (GLint* v)
    void glRasterPos2s (GLshort x, GLshort y)
    void glRasterPos2sv (GLshort* v)
    void glRasterPos3d (GLdouble x, GLdouble y, GLdouble z)
    void glRasterPos3dv (GLdouble* v)
    void glRasterPos3f (GLfloat x, GLfloat y, GLfloat z)
    void glRasterPos3fv (GLfloat* v)
    void glRasterPos3i (GLint x, GLint y, GLint z)
    void glRasterPos3iv (GLint* v)
    void glRasterPos3s (GLshort x, GLshort y, GLshort z)
    void glRasterPos3sv (GLshort* v)
    void glRasterPos4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glRasterPos4dv (GLdouble* v)
    void glRasterPos4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glRasterPos4fv (GLfloat* v)
    void glRasterPos4i (GLint x, GLint y, GLint z, GLint w)
    void glRasterPos4iv (GLint* v)
    void glRasterPos4s (GLshort x, GLshort y, GLshort z, GLshort w)
    void glRasterPos4sv (GLshort* v)
    void glReadBuffer (GLenum mode)
    void glReadPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)
    void glRectd (GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2)
    void glRectdv (GLdouble* v1, GLdouble* v2)
    void glRectf (GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2)
    void glRectfv (GLfloat* v1, GLfloat* v2)
    void glRecti (GLint x1, GLint y1, GLint x2, GLint y2)
    void glRectiv (GLint* v1, GLint* v2)
    void glRects (GLshort x1, GLshort y1, GLshort x2, GLshort y2)
    void glRectsv (GLshort* v1, GLshort* v2)
    GLint glRenderMode (GLenum mode)
    void glRotated (GLdouble angle, GLdouble x, GLdouble y, GLdouble z)
    void glRotatef (GLfloat angle, GLfloat x, GLfloat y, GLfloat z)
    void glScaled (GLdouble x, GLdouble y, GLdouble z)
    void glScalef (GLfloat x, GLfloat y, GLfloat z)
    void glScissor (GLint x, GLint y, GLsizei width, GLsizei height)
    void glSelectBuffer (GLsizei size, GLuint *buffer)
    void glShadeModel (GLenum mode)
    void glStencilFunc (GLenum func, GLint ref, GLuint mask)
    void glStencilMask (GLuint mask)
    void glStencilOp (GLenum fail, GLenum zfail, GLenum zpass)
    void glTexCoord1d (GLdouble s)
    void glTexCoord1dv (GLdouble* v)
    void glTexCoord1f (GLfloat s)
    void glTexCoord1fv (GLfloat* v)
    void glTexCoord1i (GLint s)
    void glTexCoord1iv (GLint* v)
    void glTexCoord1s (GLshort s)
    void glTexCoord1sv (GLshort* v)
    void glTexCoord2d (GLdouble s, GLdouble t)
    void glTexCoord2dv (GLdouble* v)
    void glTexCoord2f (GLfloat s, GLfloat t)
    void glTexCoord2fv (GLfloat* v)
    void glTexCoord2i (GLint s, GLint t)
    void glTexCoord2iv (GLint* v)
    void glTexCoord2s (GLshort s, GLshort t)
    void glTexCoord2sv (GLshort* v)
    void glTexCoord3d (GLdouble s, GLdouble t, GLdouble r)
    void glTexCoord3dv (GLdouble* v)
    void glTexCoord3f (GLfloat s, GLfloat t, GLfloat r)
    void glTexCoord3fv (GLfloat* v)
    void glTexCoord3i (GLint s, GLint t, GLint r)
    void glTexCoord3iv (GLint* v)
    void glTexCoord3s (GLshort s, GLshort t, GLshort r)
    void glTexCoord3sv (GLshort* v)
    void glTexCoord4d (GLdouble s, GLdouble t, GLdouble r, GLdouble q)
    void glTexCoord4dv (GLdouble* v)
    void glTexCoord4f (GLfloat s, GLfloat t, GLfloat r, GLfloat q)
    void glTexCoord4fv (GLfloat* v)
    void glTexCoord4i (GLint s, GLint t, GLint r, GLint q)
    void glTexCoord4iv (GLint* v)
    void glTexCoord4s (GLshort s, GLshort t, GLshort r, GLshort q)
    void glTexCoord4sv (GLshort* v)
    void glTexCoordPointer (GLint size, GLenum type, GLsizei stride, GLvoid *pointer)
    void glTexEnvf (GLenum target, GLenum pname, GLfloat param)
    void glTexEnvfv (GLenum target, GLenum pname, GLfloat* params)
    void glTexEnvi (GLenum target, GLenum pname, GLint param)
    void glTexEnviv (GLenum target, GLenum pname, GLint* params)
    void glTexGend (GLenum coord, GLenum pname, GLdouble param)
    void glTexGendv (GLenum coord, GLenum pname, GLdouble* params)
    void glTexGenf (GLenum coord, GLenum pname, GLfloat param)
    void glTexGenfv (GLenum coord, GLenum pname, GLfloat* params)
    void glTexGeni (GLenum coord, GLenum pname, GLint param)
    void glTexGeniv (GLenum coord, GLenum pname, GLint* params)
    void glTexImage1D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, GLvoid *pixels)
    void glTexImage2D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, GLvoid *pixels)
    void glTexParameterf (GLenum target, GLenum pname, GLfloat param)
    void glTexParameterfv (GLenum target, GLenum pname, GLfloat* params)
    void glTexParameteri (GLenum target, GLenum pname, GLint param)
    void glTexParameteriv (GLenum target, GLenum pname, GLint* params)
    void glTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid *pixels)
    void glTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)
    void glTranslated (GLdouble x, GLdouble y, GLdouble z)
    void glTranslatef (GLfloat x, GLfloat y, GLfloat z)
    void glVertex2d (GLdouble x, GLdouble y)
    void glVertex2dv (GLdouble* v)
    void glVertex2f (GLfloat x, GLfloat y)
    void glVertex2fv (GLfloat* v)
    void glVertex2i (GLint x, GLint y)
    void glVertex2iv (GLint* v)
    void glVertex2s (GLshort x, GLshort y)
    void glVertex2sv (GLshort* v)
    void glVertex3d (GLdouble x, GLdouble y, GLdouble z)
    void glVertex3dv (GLdouble* v)
    void glVertex3f (GLfloat x, GLfloat y, GLfloat z)
    void glVertex3fv (GLfloat* v)
    void glVertex3i (GLint x, GLint y, GLint z)
    void glVertex3iv (GLint* v)
    void glVertex3s (GLshort x, GLshort y, GLshort z)
    void glVertex3sv (GLshort* v)
    void glVertex4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glVertex4dv (GLdouble* v)
    void glVertex4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glVertex4fv (GLfloat* v)
    void glVertex4i (GLint x, GLint y, GLint z, GLint w)
    void glVertex4iv (GLint* v)
    void glVertex4s (GLshort x, GLshort y, GLshort z, GLshort w)
    void glVertex4sv (GLshort* v)
    void glVertexPointer (GLint size, GLenum type, GLsizei stride, GLvoid *pointer)
    void glViewport (GLint x, GLint y, GLsizei width, GLsizei height)

    #GLU

    #*************************************************************#

    # Boolean
    cdef int GLU_FALSE
    cdef int GLU_TRUE

    # Version
    cdef int GLU_VERSION_1_1
    cdef int GLU_VERSION_1_2

    # StringName
    cdef int GLU_VERSION
    cdef int GLU_EXTENSIONS

    # ErrorCode
    cdef int GLU_INVALID_ENUM
    cdef int GLU_INVALID_VALUE
    cdef int GLU_OUT_OF_MEMORY
    cdef int GLU_INVALID_OPERATION

    # NurbsDisplay
    #      GLU_FILL
    cdef int GLU_OUTLINE_POLYGON
    cdef int GLU_OUTLINE_PATCH

    # NurbsError
    cdef int GLU_NURBS_ERROR1
    cdef int GLU_NURBS_ERROR2
    cdef int GLU_NURBS_ERROR3
    cdef int GLU_NURBS_ERROR4
    cdef int GLU_NURBS_ERROR5
    cdef int GLU_NURBS_ERROR6
    cdef int GLU_NURBS_ERROR7
    cdef int GLU_NURBS_ERROR8
    cdef int GLU_NURBS_ERROR9
    cdef int GLU_NURBS_ERROR10
    cdef int GLU_NURBS_ERROR11
    cdef int GLU_NURBS_ERROR12
    cdef int GLU_NURBS_ERROR13
    cdef int GLU_NURBS_ERROR14
    cdef int GLU_NURBS_ERROR15
    cdef int GLU_NURBS_ERROR16
    cdef int GLU_NURBS_ERROR17
    cdef int GLU_NURBS_ERROR18
    cdef int GLU_NURBS_ERROR19
    cdef int GLU_NURBS_ERROR20
    cdef int GLU_NURBS_ERROR21
    cdef int GLU_NURBS_ERROR22
    cdef int GLU_NURBS_ERROR23
    cdef int GLU_NURBS_ERROR24
    cdef int GLU_NURBS_ERROR25
    cdef int GLU_NURBS_ERROR26
    cdef int GLU_NURBS_ERROR27
    cdef int GLU_NURBS_ERROR28
    cdef int GLU_NURBS_ERROR29
    cdef int GLU_NURBS_ERROR30
    cdef int GLU_NURBS_ERROR31
    cdef int GLU_NURBS_ERROR32
    cdef int GLU_NURBS_ERROR33
    cdef int GLU_NURBS_ERROR34
    cdef int GLU_NURBS_ERROR35
    cdef int GLU_NURBS_ERROR36
    cdef int GLU_NURBS_ERROR37

    # NurbsProperty
    cdef int GLU_AUTO_LOAD_MATRIX
    cdef int GLU_CULLING
    cdef int GLU_SAMPLING_TOLERANCE
    cdef int GLU_DISPLAY_MODE
    cdef int GLU_PARAMETRIC_TOLERANCE
    cdef int GLU_SAMPLING_METHOD
    cdef int GLU_U_STEP
    cdef int GLU_V_STEP

    # NurbsSampling
    cdef int GLU_PATH_LENGTH
    cdef int GLU_PARAMETRIC_ERROR
    cdef int GLU_DOMAIN_DISTANCE

    # NurbsTrim
    cdef int GLU_MAP1_TRIM_2
    cdef int GLU_MAP1_TRIM_3

    # QuadricDrawStyle
    cdef int GLU_POINT
    cdef int GLU_LINE
    cdef int GLU_FILL
    cdef int GLU_SILHOUETTE                     

    # QuadricCallback
    cdef int GLU_ERROR

    # QuadricNormal
    cdef int GLU_SMOOTH
    cdef int GLU_FLAT
    cdef int GLU_NONE

    # QuadricOrientation
    cdef int GLU_OUTSIDE
    cdef int GLU_INSIDE

    # TessCallback
    cdef int GLU_TESS_BEGIN
    cdef int GLU_BEGIN
    cdef int GLU_TESS_VERTEX
    cdef int GLU_VERTEX
    cdef int GLU_TESS_END
    cdef int GLU_END
    cdef int GLU_TESS_ERROR
    cdef int GLU_TESS_EDGE_FLAG
    cdef int GLU_EDGE_FLAG
    cdef int GLU_TESS_COMBINE
    cdef int GLU_TESS_BEGIN_DATA
    cdef int GLU_TESS_VERTEX_DATA
    cdef int GLU_TESS_END_DATA
    cdef int GLU_TESS_ERROR_DATA
    cdef int GLU_TESS_EDGE_FLAG_DATA
    cdef int GLU_TESS_COMBINE_DATA

    # TessContour
    cdef int GLU_CW
    cdef int GLU_CCW
    cdef int GLU_INTERIOR
    cdef int GLU_EXTERIOR
    cdef int GLU_UNKNOWN

    # TessProperty
    cdef int GLU_TESS_WINDING_RULE
    cdef int GLU_TESS_BOUNDARY_ONLY
    cdef int GLU_TESS_TOLERANCE

    # TessError
    cdef int GLU_TESS_ERROR1
    cdef int GLU_TESS_ERROR2
    cdef int GLU_TESS_ERROR3
    cdef int GLU_TESS_ERROR4
    cdef int GLU_TESS_ERROR5
    cdef int GLU_TESS_ERROR6
    cdef int GLU_TESS_ERROR7
    cdef int GLU_TESS_ERROR8
    cdef int GLU_TESS_MISSING_BEGIN_POLYGON
    cdef int GLU_TESS_MISSING_BEGIN_CONTOUR
    cdef int GLU_TESS_MISSING_END_POLYGON
    cdef int GLU_TESS_MISSING_END_CONTOUR
    cdef int GLU_TESS_COORD_TOO_LARGE
    cdef int GLU_TESS_NEED_COMBINE_CALLBACK

    # TessWinding
    cdef int GLU_TESS_WINDING_ODD
    cdef int GLU_TESS_WINDING_NONZERO
    cdef int GLU_TESS_WINDING_POSITIVE
    cdef int GLU_TESS_WINDING_NEGATIVE
    cdef int GLU_TESS_WINDING_ABS_GEQ_TWO

    # Obsolete. For compatibility with previous Sun OpenGL versions
    cdef int GLU_INCOMPATIBLE_GL_VERSION

    ctypedef GLUnurbs GLUnurbs
    ctypedef GLUquadric GLUquadric
    ctypedef GLUtesselator GLUtesselator
    
    ctypedef struct GLUnurbs:
        pass
    ctypedef struct GLUquadric:
        pass
    ctypedef struct GLUtesselator:
        pass

    ctypedef GLUnurbs GLUnurbsObj
    ctypedef GLUquadric GLUquadricObj
    ctypedef GLUtesselator GLUtesselatorObj
    ctypedef GLUtesselator GLUtriangulatorObj

    cdef int GLU_TESS_MAX_COORD

    #Internal convenience typedefs
    ctypedef void (*_GLUfuncptr)()
    ctypedef unsigned int wchar_t

    void gluBeginCurve (GLUnurbs* nurb)
    void gluBeginPolygon (GLUtesselator* tess)
    void gluBeginSurface (GLUnurbs* nurb)
    void gluBeginTrim (GLUnurbs* nurb)
    GLint gluBuild1DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, const_void_ptr data)
    GLint gluBuild2DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, const_void_ptr data)
    void gluCylinder (GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks)
    void gluDeleteNurbsRenderer (GLUnurbs* nurb)
    void gluDeleteQuadric (GLUquadric* quad)
    void gluDeleteTess (GLUtesselator* tess)
    void gluDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops)
    void gluEndCurve (GLUnurbs* nurb)
    void gluEndPolygon (GLUtesselator* tess)
    void gluEndSurface (GLUnurbs* nurb)
    void gluEndTrim (GLUnurbs* nurb)
    GLubyte gluErrorString (GLenum error)
    wchar_t gluErrorUnicodeStringEXT (GLenum error)
    void gluGetNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat* data)
    GLubyte gluGetString (GLenum name)
    void gluGetTessProperty (GLUtesselator* tess, GLenum which, GLdouble* data)
    void gluLoadSamplingMatrices (GLUnurbs* nurb, GLfloat model, GLfloat perspective, GLint view)
    void gluLookAt (GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ)
    GLUnurbs* gluNewNurbsRenderer ()
    GLUquadric* gluNewQuadric ()
    GLUtesselator* gluNewTess ()
    void gluNextContour (GLUtesselator* tess, GLenum type)
    void gluNurbsCallback (GLUnurbs* nurb, GLenum which, _GLUfuncptr CallBackFunc)
    void gluNurbsCurve (GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type)
    void gluNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat value)
    void gluNurbsSurface (GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type)
    void gluOrtho2D (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top)
    void gluPartialDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep)
    void gluPerspective (GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar)
    void gluPickMatrix (GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport)
    GLint gluProject (GLdouble objX, GLdouble objY, GLdouble objZ, GLdouble* model, GLdouble* proj, GLint* view, GLdouble* winX, GLdouble* winY, GLdouble* winZ)
    void gluPwlCurve (GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type)
    void gluQuadricCallback (GLUquadric* quad, GLenum which, _GLUfuncptr CallBackFunc)
    void gluQuadricDrawStyle (GLUquadric* quad, GLenum draw)
    void gluQuadricNormals (GLUquadric* quad, GLenum normal)
    void gluQuadricOrientation (GLUquadric* quad, GLenum orientation)
    void gluQuadricTexture (GLUquadric* quad, GLboolean texture)
    GLint gluScaleImage (GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, const_void_ptr dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut)
    void gluSphere (GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks)
    void gluTessBeginContour (GLUtesselator* tess)
    void gluTessBeginPolygon (GLUtesselator* tess, GLvoid* data)
    void gluTessCallback (GLUtesselator* tess, GLenum which, _GLUfuncptr CallBackFunc)
    void gluTessEndContour (GLUtesselator* tess)
    void gluTessEndPolygon (GLUtesselator* tess)
    void gluTessNormal (GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ)
    void gluTessProperty (GLUtesselator* tess, GLenum which, GLdouble data)
    void gluTessVertex (GLUtesselator* tess, GLdouble *location, GLvoid* data)
    GLint gluUnProject (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble* model, GLdouble* proj, GLint* view, GLdouble* objX, GLdouble* objY, GLdouble* objZ)
    GLint gluUnProject4 (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, GLdouble model, GLdouble proj, GLint view, GLdouble nearVal, GLdouble farVal, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW)

    wchar_t gluErrorStringWIN (GLenum errCode)
    
    #*************************************************************#

    #GL_VERSION_1_2

    cdef int GL_VERSION_1_2

    cdef int GL_SMOOTH_POINT_SIZE_RANGE
    cdef int GL_SMOOTH_POINT_SIZE_GRANULARITY
    cdef int GL_SMOOTH_LINE_WIDTH_RANGE
    cdef int GL_SMOOTH_LINE_WIDTH_GRANULARITY
    cdef int GL_UNSIGNED_BYTE_3_3_2
    cdef int GL_UNSIGNED_SHORT_4_4_4_4
    cdef int GL_UNSIGNED_SHORT_5_5_5_1
    cdef int GL_UNSIGNED_INT_8_8_8_8
    cdef int GL_UNSIGNED_INT_10_10_10_2
    cdef int GL_RESCALE_NORMAL
    cdef int GL_TEXTURE_BINDING_3D
    cdef int GL_PACK_SKIP_IMAGES
    cdef int GL_PACK_IMAGE_HEIGHT
    cdef int GL_UNPACK_SKIP_IMAGES
    cdef int GL_UNPACK_IMAGE_HEIGHT
    cdef int GL_TEXTURE_3D
    cdef int GL_PROXY_TEXTURE_3D
    cdef int GL_TEXTURE_DEPTH
    cdef int GL_TEXTURE_WRAP_R
    cdef int GL_MAX_3D_TEXTURE_SIZE
    cdef int GL_BGR
    cdef int GL_BGRA
    cdef int GL_MAX_ELEMENTS_VERTICES
    cdef int GL_MAX_ELEMENTS_INDICES
    cdef int GL_CLAMP_TO_EDGE
    cdef int GL_TEXTURE_MIN_LOD
    cdef int GL_TEXTURE_MAX_LOD
    cdef int GL_TEXTURE_BASE_LEVEL
    cdef int GL_TEXTURE_MAX_LEVEL
    cdef int GL_LIGHT_MODEL_COLOR_CONTROL
    cdef int GL_SINGLE_COLOR
    cdef int GL_SEPARATE_SPECULAR_COLOR
    cdef int GL_UNSIGNED_BYTE_2_3_3_REV
    cdef int GL_UNSIGNED_SHORT_5_6_5
    cdef int GL_UNSIGNED_SHORT_5_6_5_REV
    cdef int GL_UNSIGNED_SHORT_4_4_4_4_REV
    cdef int GL_UNSIGNED_SHORT_1_5_5_5_REV
    cdef int GL_UNSIGNED_INT_8_8_8_8_REV
    cdef int GL_UNSIGNED_INT_2_10_10_10_REV
    cdef int GL_ALIASED_POINT_SIZE_RANGE
    cdef int GL_ALIASED_LINE_WIDTH_RANGE

    void glCopyTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
    void glDrawRangeElements (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices)
    void glTexImage3D (GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels)
    void glTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels)

    #GL_VERSION_1_2_1

    cdef int GL_VERSION_1_2_1

    #GL_VERSION_1_3

    cdef int GL_VERSION_1_3

    cdef int GL_MULTISAMPLE
    cdef int GL_SAMPLE_ALPHA_TO_COVERAGE
    cdef int GL_SAMPLE_ALPHA_TO_ONE
    cdef int GL_SAMPLE_COVERAGE
    cdef int GL_SAMPLE_BUFFERS
    cdef int GL_SAMPLES
    cdef int GL_SAMPLE_COVERAGE_VALUE
    cdef int GL_SAMPLE_COVERAGE_INVERT
    cdef int GL_CLAMP_TO_BORDER
    cdef int GL_TEXTURE0
    cdef int GL_TEXTURE1
    cdef int GL_TEXTURE2
    cdef int GL_TEXTURE3
    cdef int GL_TEXTURE4
    cdef int GL_TEXTURE5
    cdef int GL_TEXTURE6
    cdef int GL_TEXTURE7
    cdef int GL_TEXTURE8
    cdef int GL_TEXTURE9
    cdef int GL_TEXTURE10
    cdef int GL_TEXTURE11
    cdef int GL_TEXTURE12
    cdef int GL_TEXTURE13
    cdef int GL_TEXTURE14
    cdef int GL_TEXTURE15
    cdef int GL_TEXTURE16
    cdef int GL_TEXTURE17
    cdef int GL_TEXTURE18
    cdef int GL_TEXTURE19
    cdef int GL_TEXTURE20
    cdef int GL_TEXTURE21
    cdef int GL_TEXTURE22
    cdef int GL_TEXTURE23
    cdef int GL_TEXTURE24
    cdef int GL_TEXTURE25
    cdef int GL_TEXTURE26
    cdef int GL_TEXTURE27
    cdef int GL_TEXTURE28
    cdef int GL_TEXTURE29
    cdef int GL_TEXTURE30
    cdef int GL_TEXTURE31
    cdef int GL_ACTIVE_TEXTURE
    cdef int GL_CLIENT_ACTIVE_TEXTURE
    cdef int GL_MAX_TEXTURE_UNITS
    cdef int GL_TRANSPOSE_MODELVIEW_MATRIX
    cdef int GL_TRANSPOSE_PROJECTION_MATRIX
    cdef int GL_TRANSPOSE_TEXTURE_MATRIX
    cdef int GL_TRANSPOSE_COLOR_MATRIX
    cdef int GL_SUBTRACT
    cdef int GL_COMPRESSED_ALPHA
    cdef int GL_COMPRESSED_LUMINANCE
    cdef int GL_COMPRESSED_LUMINANCE_ALPHA
    cdef int GL_COMPRESSED_INTENSITY
    cdef int GL_COMPRESSED_RGB
    cdef int GL_COMPRESSED_RGBA
    cdef int GL_TEXTURE_COMPRESSION_HINT
    cdef int GL_NORMAL_MAP
    cdef int GL_REFLECTION_MAP
    cdef int GL_TEXTURE_CUBE_MAP
    cdef int GL_TEXTURE_BINDING_CUBE_MAP
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_X
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_X
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_Y
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_Z
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
    cdef int GL_PROXY_TEXTURE_CUBE_MAP
    cdef int GL_MAX_CUBE_MAP_TEXTURE_SIZE
    cdef int GL_COMBINE
    cdef int GL_COMBINE_RGB
    cdef int GL_COMBINE_ALPHA
    cdef int GL_RGB_SCALE
    cdef int GL_ADD_SIGNED
    cdef int GL_INTERPOLATE
    cdef int GL_CONSTANT
    cdef int GL_PRIMARY_COLOR
    cdef int GL_PREVIOUS
    cdef int GL_SOURCE0_RGB
    cdef int GL_SOURCE1_RGB
    cdef int GL_SOURCE2_RGB
    cdef int GL_SOURCE0_ALPHA
    cdef int GL_SOURCE1_ALPHA
    cdef int GL_SOURCE2_ALPHA
    cdef int GL_OPERAND0_RGB
    cdef int GL_OPERAND1_RGB
    cdef int GL_OPERAND2_RGB
    cdef int GL_OPERAND0_ALPHA
    cdef int GL_OPERAND1_ALPHA
    cdef int GL_OPERAND2_ALPHA
    cdef int GL_TEXTURE_COMPRESSED_IMAGE_SIZE
    cdef int GL_TEXTURE_COMPRESSED
    cdef int GL_NUM_COMPRESSED_TEXTURE_FORMATS
    cdef int GL_COMPRESSED_TEXTURE_FORMATS
    cdef int GL_DOT3_RGB
    cdef int GL_DOT3_RGBA
    cdef int GL_MULTISAMPLE_BIT

    void glActiveTexture (GLenum texture)
    void glClientActiveTexture (GLenum texture)
    void glCompressedTexImage1D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data)
    void glCompressedTexImage2D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data)
    void glCompressedTexImage3D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data)
    void glCompressedTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data)
    void glCompressedTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data)
    void glCompressedTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data)
    void glGetCompressedTexImage (GLenum target, GLint lod, GLvoid *img)
    void glLoadTransposeMatrixd (GLdouble m[16])
    void glLoadTransposeMatrixf (GLfloat m[16])
    void glMultTransposeMatrixd (GLdouble m[16])
    void glMultTransposeMatrixf (GLfloat m[16])
    void glMultiTexCoord1d (GLenum target, GLdouble s)
    void glMultiTexCoord1dv (GLenum target, GLdouble* v)
    void glMultiTexCoord1f (GLenum target, GLfloat s)
    void glMultiTexCoord1fv (GLenum target, GLfloat* v)
    void glMultiTexCoord1i (GLenum target, GLint s)
    void glMultiTexCoord1iv (GLenum target, GLint* v)
    void glMultiTexCoord1s (GLenum target, GLshort s)
    void glMultiTexCoord1sv (GLenum target, GLshort* v)
    void glMultiTexCoord2d (GLenum target, GLdouble s, GLdouble t)
    void glMultiTexCoord2dv (GLenum target, GLdouble* v)
    void glMultiTexCoord2f (GLenum target, GLfloat s, GLfloat t)
    void glMultiTexCoord2fv (GLenum target, GLfloat* v)
    void glMultiTexCoord2i (GLenum target, GLint s, GLint t)
    void glMultiTexCoord2iv (GLenum target, GLint* v)
    void glMultiTexCoord2s (GLenum target, GLshort s, GLshort t)
    void glMultiTexCoord2sv (GLenum target, GLshort* v)
    void glMultiTexCoord3d (GLenum target, GLdouble s, GLdouble t, GLdouble r)
    void glMultiTexCoord3dv (GLenum target, GLdouble* v)
    void glMultiTexCoord3f (GLenum target, GLfloat s, GLfloat t, GLfloat r)
    void glMultiTexCoord3fv (GLenum target, GLfloat* v)
    void glMultiTexCoord3i (GLenum target, GLint s, GLint t, GLint r)
    void glMultiTexCoord3iv (GLenum target, GLint* v)
    void glMultiTexCoord3s (GLenum target, GLshort s, GLshort t, GLshort r)
    void glMultiTexCoord3sv (GLenum target, GLshort* v)
    void glMultiTexCoord4d (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)
    void glMultiTexCoord4dv (GLenum target, GLdouble* v)
    void glMultiTexCoord4f (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)
    void glMultiTexCoord4fv (GLenum target, GLfloat* v)
    void glMultiTexCoord4i (GLenum target, GLint s, GLint t, GLint r, GLint q)
    void glMultiTexCoord4iv (GLenum target, GLint* v)
    void glMultiTexCoord4s (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)
    void glMultiTexCoord4sv (GLenum target, GLshort* v)
    void glSampleCoverage (GLclampf value, GLboolean invert)

    #GL_VERSION_1_4

    cdef int GL_VERSION_1_4

    cdef int GL_BLEND_DST_RGB
    cdef int GL_BLEND_SRC_RGB
    cdef int GL_BLEND_DST_ALPHA
    cdef int GL_BLEND_SRC_ALPHA
    cdef int GL_POINT_SIZE_MIN
    cdef int GL_POINT_SIZE_MAX
    cdef int GL_POINT_FADE_THRESHOLD_SIZE
    cdef int GL_POINT_DISTANCE_ATTENUATION
    cdef int GL_GENERATE_MIPMAP
    cdef int GL_GENERATE_MIPMAP_HINT
    cdef int GL_DEPTH_COMPONENT16
    cdef int GL_DEPTH_COMPONENT24
    cdef int GL_DEPTH_COMPONENT32
    cdef int GL_MIRRORED_REPEAT
    cdef int GL_FOG_COORDINATE_SOURCE
    cdef int GL_FOG_COORDINATE
    cdef int GL_FRAGMENT_DEPTH
    cdef int GL_CURRENT_FOG_COORDINATE
    cdef int GL_FOG_COORDINATE_ARRAY_TYPE
    cdef int GL_FOG_COORDINATE_ARRAY_STRIDE
    cdef int GL_FOG_COORDINATE_ARRAY_POINTER
    cdef int GL_FOG_COORDINATE_ARRAY
    cdef int GL_COLOR_SUM
    cdef int GL_CURRENT_SECONDARY_COLOR
    cdef int GL_SECONDARY_COLOR_ARRAY_SIZE
    cdef int GL_SECONDARY_COLOR_ARRAY_TYPE
    cdef int GL_SECONDARY_COLOR_ARRAY_STRIDE
    cdef int GL_SECONDARY_COLOR_ARRAY_POINTER
    cdef int GL_SECONDARY_COLOR_ARRAY
    cdef int GL_MAX_TEXTURE_LOD_BIAS
    cdef int GL_TEXTURE_FILTER_CONTROL
    cdef int GL_TEXTURE_LOD_BIAS
    cdef int GL_INCR_WRAP
    cdef int GL_DECR_WRAP
    cdef int GL_TEXTURE_DEPTH_SIZE
    cdef int GL_DEPTH_TEXTURE_MODE
    cdef int GL_TEXTURE_COMPARE_MODE
    cdef int GL_TEXTURE_COMPARE_FUNC
    cdef int GL_COMPARE_R_TO_TEXTURE

    void glBlendColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
    void glBlendEquation (GLenum mode)
    void glBlendFuncSeparate (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)
    void glFogCoordPointer (GLenum type, GLsizei stride, GLvoid *pointer)
    void glFogCoordd (GLdouble coord)
    void glFogCoorddv (GLdouble* coord)
    void glFogCoordf (GLfloat coord)
    void glFogCoordfv (GLfloat* coord)
    void glMultiDrawArrays (GLenum mode, GLint* first, GLsizei* count, GLsizei primcount)
    void glMultiDrawElements (GLenum mode, GLsizei *count, GLenum type, GLvoid *indices, GLsizei primcount)
    void glPointParameterf (GLenum pname, GLfloat param)
    void glPointParameterfv (GLenum pname, GLfloat* params)
    void glPointParameteri (GLenum pname, GLint param)
    void glPointParameteriv (GLenum pname, GLint* params)
    void glSecondaryColor3b (GLbyte red, GLbyte green, GLbyte blue)
    void glSecondaryColor3bv (GLbyte* v)
    void glSecondaryColor3d (GLdouble red, GLdouble green, GLdouble blue)
    void glSecondaryColor3dv (GLdouble* v)
    void glSecondaryColor3f (GLfloat red, GLfloat green, GLfloat blue)
    void glSecondaryColor3fv (GLfloat* v)
    void glSecondaryColor3i (GLint red, GLint green, GLint blue)
    void glSecondaryColor3iv (GLint* v)
    void glSecondaryColor3s (GLshort red, GLshort green, GLshort blue)
    void glSecondaryColor3sv (GLshort* v)
    void glSecondaryColor3ub (GLubyte red, GLubyte green, GLubyte blue)
    void glSecondaryColor3ubv (GLubyte* v)
    void glSecondaryColor3ui (GLuint red, GLuint green, GLuint blue)
    void glSecondaryColor3uiv (GLuint* v)
    void glSecondaryColor3us (GLushort red, GLushort green, GLushort blue)
    void glSecondaryColor3usv (GLushort* v)
    void glSecondaryColorPointer (GLint size, GLenum type, GLsizei stride, GLvoid *pointer)
    void glWindowPos2d (GLdouble x, GLdouble y)
    void glWindowPos2dv (GLdouble* p)
    void glWindowPos2f (GLfloat x, GLfloat y)
    void glWindowPos2fv (GLfloat* p)
    void glWindowPos2i (GLint x, GLint y)
    void glWindowPos2iv (GLint* p)
    void glWindowPos2s (GLshort x, GLshort y)
    void glWindowPos2sv (GLshort* p)
    void glWindowPos3d (GLdouble x, GLdouble y, GLdouble z)
    void glWindowPos3dv (GLdouble* p)
    void glWindowPos3f (GLfloat x, GLfloat y, GLfloat z)
    void glWindowPos3fv (GLfloat* p)
    void glWindowPos3i (GLint x, GLint y, GLint z)
    void glWindowPos3iv (GLint* p)
    void glWindowPos3s (GLshort x, GLshort y, GLshort z)
    void glWindowPos3sv (GLshort* p)

    #GL_VERSION_1_5

    cdef int GL_VERSION_1_5

    cdef int GL_FOG_COORD_SRC
    cdef int GL_FOG_COORD
    cdef int GL_FOG_COORD_ARRAY
    cdef int GL_SRC0_RGB
    cdef int GL_FOG_COORD_ARRAY_POINTER
    cdef int GL_FOG_COORD_ARRAY_TYPE
    cdef int GL_SRC1_ALPHA
    cdef int GL_CURRENT_FOG_COORD
    cdef int GL_FOG_COORD_ARRAY_STRIDE
    cdef int GL_SRC0_ALPHA
    cdef int GL_SRC1_RGB
    cdef int GL_FOG_COORD_ARRAY_BUFFER_BINDING
    cdef int GL_SRC2_ALPHA
    cdef int GL_SRC2_RGB
    cdef int GL_BUFFER_SIZE
    cdef int GL_BUFFER_USAGE
    cdef int GL_QUERY_COUNTER_BITS
    cdef int GL_CURRENT_QUERY
    cdef int GL_QUERY_RESULT
    cdef int GL_QUERY_RESULT_AVAILABLE
    cdef int GL_ARRAY_BUFFER
    cdef int GL_ELEMENT_ARRAY_BUFFER
    cdef int GL_ARRAY_BUFFER_BINDING
    cdef int GL_ELEMENT_ARRAY_BUFFER_BINDING
    cdef int GL_VERTEX_ARRAY_BUFFER_BINDING
    cdef int GL_NORMAL_ARRAY_BUFFER_BINDING
    cdef int GL_COLOR_ARRAY_BUFFER_BINDING
    cdef int GL_INDEX_ARRAY_BUFFER_BINDING
    cdef int GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
    cdef int GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
    cdef int GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
    cdef int GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
    cdef int GL_WEIGHT_ARRAY_BUFFER_BINDING
    cdef int GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
    cdef int GL_READ_ONLY
    cdef int GL_WRITE_ONLY
    cdef int GL_READ_WRITE
    cdef int GL_BUFFER_ACCESS
    cdef int GL_BUFFER_MAPPED
    cdef int GL_BUFFER_MAP_POINTER
    cdef int GL_STREAM_DRAW
    cdef int GL_STREAM_READ
    cdef int GL_STREAM_COPY
    cdef int GL_STATIC_DRAW
    cdef int GL_STATIC_READ
    cdef int GL_STATIC_COPY
    cdef int GL_DYNAMIC_DRAW
    cdef int GL_DYNAMIC_READ
    cdef int GL_DYNAMIC_COPY
    cdef int GL_SAMPLES_PASSED

    ctypedef Py_ssize_t GLintptr
    ctypedef Py_ssize_t GLsizeiptr

    void glBeginQuery (GLenum target, GLuint id)
    void glBindBuffer (GLenum target, GLuint buffer)
    void glBufferData (GLenum target, GLsizeiptr size, GLvoid *data, GLenum usage)
    void glBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, GLvoid *data)
    void glDeleteBuffers (GLsizei n, GLuint* buffers)
    void glDeleteQueries (GLsizei n, GLuint* ids)
    void glEndQuery (GLenum target)
    void glGenBuffers (GLsizei n, GLuint* buffers)
    void glGenQueries (GLsizei n, GLuint* ids)
    void glGetBufferParameteriv (GLenum target, GLenum pname, GLint* params)
    void glGetBufferPointerv (GLenum target, GLenum pname, GLvoid** params)
    void glGetBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data)
    void glGetQueryObjectiv (GLuint id, GLenum pname, GLint* params)
    void glGetQueryObjectuiv (GLuint id, GLenum pname, GLuint* params)
    void glGetQueryiv (GLenum target, GLenum pname, GLint* params)
    GLboolean glIsBuffer (GLuint buffer)
    GLboolean glIsQuery (GLuint id)
    GLvoid* glMapBuffer (GLenum target, GLenum access)
    GLboolean glUnmapBuffer (GLenum target)

    #GL_VERSION_2_0

    cdef int GL_VERSION_2_0

    cdef int GL_BLEND_EQUATION_RGB
    cdef int GL_VERTEX_ATTRIB_ARRAY_ENABLED
    cdef int GL_VERTEX_ATTRIB_ARRAY_SIZE
    cdef int GL_VERTEX_ATTRIB_ARRAY_STRIDE
    cdef int GL_VERTEX_ATTRIB_ARRAY_TYPE
    cdef int GL_CURRENT_VERTEX_ATTRIB
    cdef int GL_VERTEX_PROGRAM_POINT_SIZE
    cdef int GL_VERTEX_PROGRAM_TWO_SIDE
    cdef int GL_VERTEX_ATTRIB_ARRAY_POINTER
    cdef int GL_STENCIL_BACK_FUNC
    cdef int GL_STENCIL_BACK_FAIL
    cdef int GL_STENCIL_BACK_PASS_DEPTH_FAIL
    cdef int GL_STENCIL_BACK_PASS_DEPTH_PASS
    cdef int GL_MAX_DRAW_BUFFERS
    cdef int GL_DRAW_BUFFER0
    cdef int GL_DRAW_BUFFER1
    cdef int GL_DRAW_BUFFER2
    cdef int GL_DRAW_BUFFER3
    cdef int GL_DRAW_BUFFER4
    cdef int GL_DRAW_BUFFER5
    cdef int GL_DRAW_BUFFER6
    cdef int GL_DRAW_BUFFER7
    cdef int GL_DRAW_BUFFER8
    cdef int GL_DRAW_BUFFER9
    cdef int GL_DRAW_BUFFER10
    cdef int GL_DRAW_BUFFER11
    cdef int GL_DRAW_BUFFER12
    cdef int GL_DRAW_BUFFER13
    cdef int GL_DRAW_BUFFER14
    cdef int GL_DRAW_BUFFER15
    cdef int GL_BLEND_EQUATION_ALPHA
    cdef int GL_POINT_SPRITE
    cdef int GL_COORD_REPLACE
    cdef int GL_MAX_VERTEX_ATTRIBS
    cdef int GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
    cdef int GL_MAX_TEXTURE_COORDS
    cdef int GL_MAX_TEXTURE_IMAGE_UNITS
    cdef int GL_FRAGMENT_SHADER
    cdef int GL_VERTEX_SHADER
    cdef int GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
    cdef int GL_MAX_VERTEX_UNIFORM_COMPONENTS
    cdef int GL_MAX_VARYING_FLOATS
    cdef int GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
    cdef int GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
    cdef int GL_SHADER_TYPE
    cdef int GL_FLOAT_VEC2
    cdef int GL_FLOAT_VEC3
    cdef int GL_FLOAT_VEC4
    cdef int GL_INT_VEC2
    cdef int GL_INT_VEC3
    cdef int GL_INT_VEC4
    cdef int GL_BOOL
    cdef int GL_BOOL_VEC2
    cdef int GL_BOOL_VEC3
    cdef int GL_BOOL_VEC4
    cdef int GL_FLOAT_MAT2
    cdef int GL_FLOAT_MAT3
    cdef int GL_FLOAT_MAT4
    cdef int GL_SAMPLER_1D
    cdef int GL_SAMPLER_2D
    cdef int GL_SAMPLER_3D
    cdef int GL_SAMPLER_CUBE
    cdef int GL_SAMPLER_1D_SHADOW
    cdef int GL_SAMPLER_2D_SHADOW
    cdef int GL_DELETE_STATUS
    cdef int GL_COMPILE_STATUS
    cdef int GL_LINK_STATUS
    cdef int GL_VALIDATE_STATUS
    cdef int GL_INFO_LOG_LENGTH
    cdef int GL_ATTACHED_SHADERS
    cdef int GL_ACTIVE_UNIFORMS
    cdef int GL_ACTIVE_UNIFORM_MAX_LENGTH
    cdef int GL_SHADER_SOURCE_LENGTH
    cdef int GL_ACTIVE_ATTRIBUTES
    cdef int GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
    cdef int GL_FRAGMENT_SHADER_DERIVATIVE_HINT
    cdef int GL_SHADING_LANGUAGE_VERSION
    cdef int GL_CURRENT_PROGRAM
    cdef int GL_POINT_SPRITE_COORD_ORIGIN
    cdef int GL_LOWER_LEFT
    cdef int GL_UPPER_LEFT
    cdef int GL_STENCIL_BACK_REF
    cdef int GL_STENCIL_BACK_VALUE_MASK
    cdef int GL_STENCIL_BACK_WRITEMASK

    void glAttachShader (GLuint program, GLuint shader)
    void glBindAttribLocation (GLuint program, GLuint index, GLchar* name)
    void glBlendEquationSeparate (GLenum, GLenum)
    void glCompileShader (GLuint shader)
    GLuint glCreateProgram ()
    GLuint glCreateShader (GLenum type)
    void glDeleteProgram (GLuint program)
    void glDeleteShader (GLuint shader)
    void glDetachShader (GLuint program, GLuint shader)
    void glDisableVertexAttribArray (GLuint)
    void glDrawBuffers (GLsizei n, GLenum* bufs)
    void glEnableVertexAttribArray (GLuint)
    void glGetActiveAttrib (GLuint program, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLchar* name)
    void glGetActiveUniform (GLuint program, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLchar* name)
    void glGetAttachedShaders (GLuint program, GLsizei maxCount, GLsizei* count, GLuint* shaders)
    GLint glGetAttribLocation (GLuint program, GLchar *name)
    void glGetProgramInfoLog (GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog)
    void glGetProgramiv (GLuint program, GLenum pname, GLint* param)
    void glGetShaderInfoLog (GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog)
    void glGetShaderSource (GLuint obj, GLsizei maxLength, GLsizei* length, GLchar* source)
    void glGetShaderiv (GLuint shader, GLenum pname, GLint* param)
    GLint glGetUniformLocation (GLuint program, GLchar* name)
    void glGetUniformfv (GLuint program, GLint location, GLfloat* params)
    void glGetUniformiv (GLuint program, GLint location, GLint* params)
    void glGetVertexAttribPointerv (GLuint, GLenum, GLvoid**)
    void glGetVertexAttribdv (GLuint, GLenum, GLdouble*)
    void glGetVertexAttribfv (GLuint, GLenum, GLfloat*)
    void glGetVertexAttribiv (GLuint, GLenum, GLint*)
    GLboolean glIsProgram (GLuint program)
    GLboolean glIsShader (GLuint shader)
    void glLinkProgram (GLuint program)
    void glShaderSource (GLuint shader, GLsizei count, GLchar** strings, GLint* lengths)
    void glStencilFuncSeparate (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask)
    void glStencilMaskSeparate (GLenum, GLuint)
    void glStencilOpSeparate (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)
    void glUniform1f (GLint location, GLfloat v0)
    void glUniform1fv (GLint location, GLsizei count, GLfloat*  value)
    void glUniform1i (GLint location, GLint v0)
    void glUniform1iv (GLint location, GLsizei count, GLint*  value)
    void glUniform2f (GLint location, GLfloat v0, GLfloat v1)
    void glUniform2fv (GLint location, GLsizei count, GLfloat*  value)
    void glUniform2i (GLint location, GLint v0, GLint v1)
    void glUniform2iv (GLint location, GLsizei count, GLint*  value)
    void glUniform3f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
    void glUniform3fv (GLint location, GLsizei count, GLfloat*  value)
    void glUniform3i (GLint location, GLint v0, GLint v1, GLint v2)
    void glUniform3iv (GLint location, GLsizei count, GLint*  value)
    void glUniform4f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
    void glUniform4fv (GLint location, GLsizei count, GLfloat*  value)
    void glUniform4i (GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
    void glUniform4iv (GLint location, GLsizei count, GLint*  value)
    void glUniformMatrix2fv (GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glUniformMatrix3fv (GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glUniformMatrix4fv (GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glUseProgram (GLuint program)
    void glValidateProgram (GLuint program)
    void glVertexAttrib1d (GLuint index, GLdouble x)
    void glVertexAttrib1dv (GLuint index, GLdouble*  v)
    void glVertexAttrib1f (GLuint index, GLfloat x)
    void glVertexAttrib1fv (GLuint index, GLfloat*  v)
    void glVertexAttrib1s (GLuint index, GLshort x)
    void glVertexAttrib1sv (GLuint index, GLshort*  v)
    void glVertexAttrib2d (GLuint index, GLdouble x, GLdouble y)
    void glVertexAttrib2dv (GLuint index, GLdouble*  v)
    void glVertexAttrib2f (GLuint index, GLfloat x, GLfloat y)
    void glVertexAttrib2fv (GLuint index, GLfloat*  v)
    void glVertexAttrib2s (GLuint index, GLshort x, GLshort y)
    void glVertexAttrib2sv (GLuint index, GLshort * v)
    void glVertexAttrib3d (GLuint index, GLdouble x, GLdouble y, GLdouble z)
    void glVertexAttrib3dv (GLuint index, GLdouble* v)
    void glVertexAttrib3f (GLuint index, GLfloat x, GLfloat y, GLfloat z)
    void glVertexAttrib3fv (GLuint index, GLfloat*  v)
    void glVertexAttrib3s (GLuint index, GLshort x, GLshort y, GLshort z)
    void glVertexAttrib3sv (GLuint index, GLshort*  v)
    void glVertexAttrib4Nbv (GLuint index, GLbyte*  v)
    void glVertexAttrib4Niv (GLuint index, GLint*  v)
    void glVertexAttrib4Nsv (GLuint index, GLshort*  v)
    void glVertexAttrib4Nub (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)
    void glVertexAttrib4Nubv (GLuint index, GLubyte*  v)
    void glVertexAttrib4Nuiv (GLuint index, GLuint* v)
    void glVertexAttrib4Nusv (GLuint index, GLushort* v)
    void glVertexAttrib4bv (GLuint index, GLbyte*  v)
    void glVertexAttrib4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glVertexAttrib4dv (GLuint index, GLdouble*  v)
    void glVertexAttrib4f (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glVertexAttrib4fv (GLuint index, GLfloat*  v)
    void glVertexAttrib4iv (GLuint index, GLint*  v)
    void glVertexAttrib4s (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)
    void glVertexAttrib4sv (GLuint index, GLshort*  v)
    void glVertexAttrib4ubv (GLuint index, GLubyte*  v)
    void glVertexAttrib4uiv (GLuint index, GLuint* v)
    void glVertexAttrib4usv (GLuint index, GLushort* v)
    void glVertexAttribPointer (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLvoid *pointer)

    #GL_VERSION_2_1

    cdef int GL_VERSION_2_1

    cdef int GL_CURRENT_RASTER_SECONDARY_COLOR
    cdef int GL_PIXEL_PACK_BUFFER
    cdef int GL_PIXEL_UNPACK_BUFFER
    cdef int GL_PIXEL_PACK_BUFFER_BINDING
    cdef int GL_PIXEL_UNPACK_BUFFER_BINDING
    cdef int GL_FLOAT_MAT2x3
    cdef int GL_FLOAT_MAT2x4
    cdef int GL_FLOAT_MAT3x2
    cdef int GL_FLOAT_MAT3x4
    cdef int GL_FLOAT_MAT4x2
    cdef int GL_FLOAT_MAT4x3
    cdef int GL_SRGB
    cdef int GL_SRGB8
    cdef int GL_SRGB_ALPHA
    cdef int GL_SRGB8_ALPHA8
    cdef int GL_SLUMINANCE_ALPHA
    cdef int GL_SLUMINANCE8_ALPHA8
    cdef int GL_SLUMINANCE
    cdef int GL_SLUMINANCE8
    cdef int GL_COMPRESSED_SRGB
    cdef int GL_COMPRESSED_SRGB_ALPHA
    cdef int GL_COMPRESSED_SLUMINANCE
    cdef int GL_COMPRESSED_SLUMINANCE_ALPHA

    void glUniformMatrix2x3fv (GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
    void glUniformMatrix2x4fv (GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
    void glUniformMatrix3x2fv (GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
    void glUniformMatrix3x4fv (GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
    void glUniformMatrix4x2fv (GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
    void glUniformMatrix4x3fv (GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    #GL_VERSION_3_0

    cdef int GL_VERSION_3_0

    cdef int GL_MAX_CLIP_DISTANCES
    cdef int GL_CLIP_DISTANCE5
    cdef int GL_CLIP_DISTANCE1
    cdef int GL_CLIP_DISTANCE3
    cdef int GL_COMPARE_REF_TO_TEXTURE
    cdef int GL_CLIP_DISTANCE0
    cdef int GL_CLIP_DISTANCE4
    cdef int GL_CLIP_DISTANCE2
    cdef int GL_MAX_VARYING_COMPONENTS
    cdef int GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
    cdef int GL_MAJOR_VERSION
    cdef int GL_MINOR_VERSION
    cdef int GL_NUM_EXTENSIONS
    cdef int GL_CONTEXT_FLAGS
    cdef int GL_DEPTH_BUFFER
    cdef int GL_STENCIL_BUFFER
    cdef int GL_COMPRESSED_RED
    cdef int GL_COMPRESSED_RG
    cdef int GL_RGBA32F
    cdef int GL_RGB32F
    cdef int GL_RGBA16F
    cdef int GL_RGB16F
    cdef int GL_VERTEX_ATTRIB_ARRAY_INTEGER
    cdef int GL_MAX_ARRAY_TEXTURE_LAYERS
    cdef int GL_MIN_PROGRAM_TEXEL_OFFSET
    cdef int GL_MAX_PROGRAM_TEXEL_OFFSET
    cdef int GL_CLAMP_VERTEX_COLOR
    cdef int GL_CLAMP_FRAGMENT_COLOR
    cdef int GL_CLAMP_READ_COLOR
    cdef int GL_FIXED_ONLY
    cdef int GL_TEXTURE_RED_TYPE
    cdef int GL_TEXTURE_GREEN_TYPE
    cdef int GL_TEXTURE_BLUE_TYPE
    cdef int GL_TEXTURE_ALPHA_TYPE
    cdef int GL_TEXTURE_LUMINANCE_TYPE
    cdef int GL_TEXTURE_INTENSITY_TYPE
    cdef int GL_TEXTURE_DEPTH_TYPE
    cdef int GL_UNSIGNED_NORMALIZED
    cdef int GL_TEXTURE_1D_ARRAY
    cdef int GL_PROXY_TEXTURE_1D_ARRAY
    cdef int GL_TEXTURE_2D_ARRAY
    cdef int GL_PROXY_TEXTURE_2D_ARRAY
    cdef int GL_TEXTURE_BINDING_1D_ARRAY
    cdef int GL_TEXTURE_BINDING_2D_ARRAY
    cdef int GL_R11F_G11F_B10F
    cdef int GL_UNSIGNED_INT_10F_11F_11F_REV
    cdef int GL_RGB9_E5
    cdef int GL_UNSIGNED_INT_5_9_9_9_REV
    cdef int GL_TEXTURE_SHARED_SIZE
    cdef int GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_MODE
    cdef int GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
    cdef int GL_TRANSFORM_FEEDBACK_VARYINGS
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_START
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
    cdef int GL_PRIMITIVES_GENERATED
    cdef int GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
    cdef int GL_RASTERIZER_DISCARD
    cdef int GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
    cdef int GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
    cdef int GL_INTERLEAVED_ATTRIBS
    cdef int GL_SEPARATE_ATTRIBS
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
    cdef int GL_RGBA32UI
    cdef int GL_RGB32UI
    cdef int GL_RGBA16UI
    cdef int GL_RGB16UI
    cdef int GL_RGBA8UI
    cdef int GL_RGB8UI
    cdef int GL_RGBA32I
    cdef int GL_RGB32I
    cdef int GL_RGBA16I
    cdef int GL_RGB16I
    cdef int GL_RGBA8I
    cdef int GL_RGB8I
    cdef int GL_RED_INTEGER
    cdef int GL_GREEN_INTEGER
    cdef int GL_BLUE_INTEGER
    cdef int GL_ALPHA_INTEGER
    cdef int GL_RGB_INTEGER
    cdef int GL_RGBA_INTEGER
    cdef int GL_BGR_INTEGER
    cdef int GL_BGRA_INTEGER
    cdef int GL_SAMPLER_1D_ARRAY
    cdef int GL_SAMPLER_2D_ARRAY
    cdef int GL_SAMPLER_1D_ARRAY_SHADOW
    cdef int GL_SAMPLER_2D_ARRAY_SHADOW
    cdef int GL_SAMPLER_CUBE_SHADOW
    cdef int GL_UNSIGNED_INT_VEC2
    cdef int GL_UNSIGNED_INT_VEC3
    cdef int GL_UNSIGNED_INT_VEC4
    cdef int GL_INT_SAMPLER_1D
    cdef int GL_INT_SAMPLER_2D
    cdef int GL_INT_SAMPLER_3D
    cdef int GL_INT_SAMPLER_CUBE
    cdef int GL_INT_SAMPLER_1D_ARRAY
    cdef int GL_INT_SAMPLER_2D_ARRAY
    cdef int GL_UNSIGNED_INT_SAMPLER_1D
    cdef int GL_UNSIGNED_INT_SAMPLER_2D
    cdef int GL_UNSIGNED_INT_SAMPLER_3D
    cdef int GL_UNSIGNED_INT_SAMPLER_CUBE
    cdef int GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
    cdef int GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
    cdef int GL_QUERY_WAIT
    cdef int GL_QUERY_NO_WAIT
    cdef int GL_QUERY_BY_REGION_WAIT
    cdef int GL_QUERY_BY_REGION_NO_WAIT

    void glBeginConditionalRender (GLuint, GLenum)
    void glBeginTransformFeedback (GLenum)
    void glBindFragDataLocation (GLuint, GLuint, GLchar)
    void glClampColor (GLenum, GLenum)
    void glClearBufferfi (GLenum, GLint, GLfloat, GLint)
    void glClearBufferfv (GLenum, GLint, GLfloat* )
    void glClearBufferiv (GLenum, GLint, GLint* )
    void glClearBufferuiv (GLenum, GLint, GLuint*)
    void glColorMaski (GLuint, GLboolean, GLboolean, GLboolean, GLboolean)
    void glDisablei (GLenum, GLuint)
    void glEnablei (GLenum, GLuint)
    void glEndConditionalRender ()
    void glEndTransformFeedback ()
    void glGetBooleani_v (GLenum, GLuint, GLboolean*)
    GLint glGetFragDataLocation (GLuint, GLchar*)
    GLubyte  glGetStringi (GLenum, GLuint)
    void glGetTexParameterIiv (GLenum, GLenum, GLint*)
    void glGetTexParameterIuiv (GLenum, GLenum, GLuint*)
    void glGetTransformFeedbackVarying (GLuint, GLuint, GLsizei, GLsizei *, GLsizei *, GLenum *, GLchar *)
    void glGetUniformuiv (GLuint, GLint, GLuint*)
    void glGetVertexAttribIiv (GLuint, GLenum, GLint*)
    void glGetVertexAttribIuiv (GLuint, GLenum, GLuint*)
    GLboolean glIsEnabledi (GLenum, GLuint)
    void glTexParameterIiv (GLenum, GLenum, GLint* )
    void glTexParameterIuiv (GLenum, GLenum, GLuint*)
    void glTransformFeedbackVaryings (GLuint, GLsizei, GLchar**, GLenum)
    void glUniform1ui (GLint, GLuint)
    void glUniform1uiv (GLint, GLsizei, GLuint*)
    void glUniform2ui (GLint, GLuint, GLuint)
    void glUniform2uiv (GLint, GLsizei, GLuint*)
    void glUniform3ui (GLint, GLuint, GLuint, GLuint)
    void glUniform3uiv (GLint, GLsizei, GLuint*)
    void glUniform4ui (GLint, GLuint, GLuint, GLuint, GLuint)
    void glUniform4uiv (GLint, GLsizei, GLuint*)
    void glVertexAttribI1i (GLuint, GLint)
    void glVertexAttribI1iv (GLuint, GLint* )
    void glVertexAttribI1ui (GLuint, GLuint)
    void glVertexAttribI1uiv (GLuint, GLuint*)
    void glVertexAttribI2i (GLuint, GLint, GLint)
    void glVertexAttribI2iv (GLuint, GLint* )
    void glVertexAttribI2ui (GLuint, GLuint, GLuint)
    void glVertexAttribI2uiv (GLuint, GLuint*)
    void glVertexAttribI3i (GLuint, GLint, GLint, GLint)
    void glVertexAttribI3iv (GLuint, GLint* )
    void glVertexAttribI3ui (GLuint, GLuint, GLuint, GLuint)
    void glVertexAttribI3uiv (GLuint, GLuint*)
    void glVertexAttribI4bv (GLuint, GLbyte* )
    void glVertexAttribI4i (GLuint, GLint, GLint, GLint, GLint)
    void glVertexAttribI4iv (GLuint, GLint* )
    void glVertexAttribI4sv (GLuint, GLshort* )
    void glVertexAttribI4ubv (GLuint, GLubyte* )
    void glVertexAttribI4ui (GLuint, GLuint, GLuint, GLuint, GLuint)
    void glVertexAttribI4uiv (GLuint, GLuint*)
    void glVertexAttribI4usv (GLuint, GLushort*)
    void glVertexAttribIPointer (GLuint, GLint, GLenum, GLsizei, GLvoid*)

    #GL_VERSION_3_1

    cdef int GL_VERSION_3_1

    cdef int GL_TEXTURE_RECTANGLE
    cdef int GL_TEXTURE_BINDING_RECTANGLE
    cdef int GL_PROXY_TEXTURE_RECTANGLE
    cdef int GL_MAX_RECTANGLE_TEXTURE_SIZE
    cdef int GL_SAMPLER_2D_RECT
    cdef int GL_SAMPLER_2D_RECT_SHADOW
    cdef int GL_TEXTURE_BUFFER
    cdef int GL_MAX_TEXTURE_BUFFER_SIZE
    cdef int GL_TEXTURE_BINDING_BUFFER
    cdef int GL_TEXTURE_BUFFER_DATA_STORE_BINDING
    cdef int GL_TEXTURE_BUFFER_FORMAT
    cdef int GL_SAMPLER_BUFFER
    cdef int GL_INT_SAMPLER_2D_RECT
    cdef int GL_INT_SAMPLER_BUFFER
    cdef int GL_UNSIGNED_INT_SAMPLER_2D_RECT
    cdef int GL_UNSIGNED_INT_SAMPLER_BUFFER
    cdef int GL_RED_SNORM
    cdef int GL_RG_SNORM
    cdef int GL_RGB_SNORM
    cdef int GL_RGBA_SNORM
    cdef int GL_R8_SNORM
    cdef int GL_RG8_SNORM
    cdef int GL_RGB8_SNORM
    cdef int GL_RGBA8_SNORM
    cdef int GL_R16_SNORM
    cdef int GL_RG16_SNORM
    cdef int GL_RGB16_SNORM
    cdef int GL_RGBA16_SNORM
    cdef int GL_SIGNED_NORMALIZED
    cdef int GL_PRIMITIVE_RESTART
    cdef int GL_PRIMITIVE_RESTART_INDEX
    cdef int GL_BUFFER_ACCESS_FLAGS
    cdef int GL_BUFFER_MAP_LENGTH
    cdef int GL_BUFFER_MAP_OFFSET

    void glDrawArraysInstanced (GLenum, GLint, GLsizei, GLsizei)
    void glDrawElementsInstanced (GLenum, GLsizei, GLenum, GLvoid*, GLsizei)
    void glPrimitiveRestartIndex (GLuint)
    void glTexBuffer (GLenum, GLenum, GLuint)

    #GL_VERSION_3_2

    cdef int GL_VERSION_3_2

    cdef int GL_CONTEXT_CORE_PROFILE_BIT
    cdef int GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
    cdef int GL_LINES_ADJACENCY
    cdef int GL_LINE_STRIP_ADJACENCY
    cdef int GL_TRIANGLES_ADJACENCY
    cdef int GL_TRIANGLE_STRIP_ADJACENCY
    cdef int GL_PROGRAM_POINT_SIZE
    cdef int GL_GEOMETRY_VERTICES_OUT
    cdef int GL_GEOMETRY_INPUT_TYPE
    cdef int GL_GEOMETRY_OUTPUT_TYPE
    cdef int GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
    cdef int GL_FRAMEBUFFER_ATTACHMENT_LAYERED
    cdef int GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
    cdef int GL_GEOMETRY_SHADER
    cdef int GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
    cdef int GL_MAX_GEOMETRY_OUTPUT_VERTICES
    cdef int GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
    cdef int GL_MAX_VERTEX_OUTPUT_COMPONENTS
    cdef int GL_MAX_GEOMETRY_INPUT_COMPONENTS
    cdef int GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
    cdef int GL_MAX_FRAGMENT_INPUT_COMPONENTS
    cdef int GL_CONTEXT_PROFILE_MASK

    void glFramebufferTexture (GLenum, GLenum, GLuint, GLint)
    void glGetBufferParameteri64v (GLenum, GLenum, GLint64 *)
    void glGetInteger64i_v (GLenum, GLuint, GLint64 *)

    #GL_VERSION_3_3

    cdef int GL_VERSION_3_3

    cdef int GL_VERTEX_ATTRIB_ARRAY_DIVISOR
    cdef int GL_ANY_SAMPLES_PASSED
    cdef int GL_TEXTURE_SWIZZLE_R
    cdef int GL_TEXTURE_SWIZZLE_G
    cdef int GL_TEXTURE_SWIZZLE_B
    cdef int GL_TEXTURE_SWIZZLE_A
    cdef int GL_TEXTURE_SWIZZLE_RGBA
    cdef int GL_RGB10_A2UI

    void glVertexAttribDivisor (GLuint index, GLuint divisor)

    #GL_VERSION_4_0

    cdef int GL_VERSION_4_0

    cdef int GL_GEOMETRY_SHADER_INVOCATIONS
    cdef int GL_SAMPLE_SHADING
    cdef int GL_MIN_SAMPLE_SHADING_VALUE
    cdef int GL_MAX_GEOMETRY_SHADER_INVOCATIONS
    cdef int GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
    cdef int GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
    cdef int GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
    cdef int GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
    cdef int GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
    cdef int GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS
    cdef int GL_TEXTURE_CUBE_MAP_ARRAY
    cdef int GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
    cdef int GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
    cdef int GL_SAMPLER_CUBE_MAP_ARRAY
    cdef int GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
    cdef int GL_INT_SAMPLER_CUBE_MAP_ARRAY
    cdef int GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY

    void glBlendEquationSeparatei (GLuint buf, GLenum modeRGB, GLenum modeAlpha)
    void glBlendEquationi (GLuint buf, GLenum mode)
    void glBlendFuncSeparatei (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)
    void glBlendFunci (GLuint buf, GLenum src, GLenum dst)
    void glMinSampleShading (GLclampf value)

    #GL_VERSION_4_1

    cdef int GL_VERSION_4_1

    #GL_VERSION_4_2

    cdef int GL_VERSION_4_2

    #GL_3DFX_multisample

    cdef int GL_3DFX_multisample

    cdef int GL_MULTISAMPLE_3DFX
    cdef int GL_SAMPLE_BUFFERS_3DFX
    cdef int GL_SAMPLES_3DFX
    cdef int GL_MULTISAMPLE_BIT_3DFX

    #GL_3DFX_tbuffer

    cdef int GL_3DFX_tbuffer

    void glTbufferMask3DFX (GLuint mask)

    #GL_3DFX_texture_compression_FXT1

    cdef int GL_3DFX_texture_compression_FXT1

    cdef int GL_COMPRESSED_RGB_FXT1_3DFX
    cdef int GL_COMPRESSED_RGBA_FXT1_3DFX

    #GL_AMD_blend_minmax_factor

    cdef int GL_AMD_blend_minmax_factor

    cdef int GL_FACTOR_MIN_AMD
    cdef int GL_FACTOR_MAX_AMD

    #GL_AMD_conservative_depth

    cdef int GL_AMD_conservative_depth

    #GL_AMD_debug_output

    cdef int GL_AMD_debug_output

    cdef int GL_MAX_DEBUG_MESSAGE_LENGTH_AMD
    cdef int GL_MAX_DEBUG_LOGGED_MESSAGES_AMD
    cdef int GL_DEBUG_LOGGED_MESSAGES_AMD
    cdef int GL_DEBUG_SEVERITY_HIGH_AMD
    cdef int GL_DEBUG_SEVERITY_MEDIUM_AMD
    cdef int GL_DEBUG_SEVERITY_LOW_AMD
    cdef int GL_DEBUG_CATEGORY_API_ERROR_AMD
    cdef int GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD
    cdef int GL_DEBUG_CATEGORY_DEPRECATION_AMD
    cdef int GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD
    cdef int GL_DEBUG_CATEGORY_PERFORMANCE_AMD
    cdef int GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD
    cdef int GL_DEBUG_CATEGORY_APPLICATION_AMD
    cdef int GL_DEBUG_CATEGORY_OTHER_AMD

    void glDebugMessageCallbackAMD (GLDEBUGPROCAMD callback, void* userParam)
    void glDebugMessageEnableAMD (GLenum category, GLenum severity, GLsizei count, GLuint ids, GLboolean enabled)
    void glDebugMessageInsertAMD (GLenum category, GLenum severity, GLuint id, GLsizei length, const_char_ptr  buf)
    GLuint glGetDebugMessageLogAMD (GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, char* message)

    #GL_AMD_depth_clamp_separate

    cdef int GL_AMD_depth_clamp_separate

    cdef int GL_DEPTH_CLAMP_NEAR_AMD
    cdef int GL_DEPTH_CLAMP_FAR_AMD

    #GL_AMD_draw_buffers_blend

    cdef int GL_AMD_draw_buffers_blend

    void glBlendEquationIndexedAMD (GLuint buf, GLenum mode)
    void glBlendEquationSeparateIndexedAMD (GLuint buf, GLenum modeRGB, GLenum modeAlpha)
    void glBlendFuncIndexedAMD (GLuint buf, GLenum src, GLenum dst)
    void glBlendFuncSeparateIndexedAMD (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

    #GL_AMD_multi_draw_indirect

    cdef int GL_AMD_multi_draw_indirect

    void glMultiDrawArraysIndirectAMD (GLenum mode, const_void_ptr  indirect, GLsizei primcount, GLsizei stride)
    void glMultiDrawElementsIndirectAMD (GLenum mode, GLenum type, const_void_ptr  indirect, GLsizei primcount, GLsizei stride)

    #GL_AMD_name_gen_delete

    cdef int GL_AMD_name_gen_delete

    cdef int GL_DATA_BUFFER_AMD
    cdef int GL_PERFORMANCE_MONITOR_AMD
    cdef int GL_QUERY_OBJECT_AMD
    cdef int GL_VERTEX_ARRAY_OBJECT_AMD
    cdef int GL_SAMPLER_OBJECT_AMD

    void glDeleteNamesAMD (GLenum identifier, GLuint num, GLuint names)
    void glGenNamesAMD (GLenum identifier, GLuint num, GLuint* names)
    GLboolean glIsNameAMD (GLenum identifier, GLuint name)

    #GL_AMD_performance_monitor

    cdef int GL_AMD_performance_monitor

    cdef int GL_UNSIGNED_INT
    cdef int GL_FLOAT
    cdef int GL_COUNTER_TYPE_AMD
    cdef int GL_COUNTER_RANGE_AMD
    cdef int GL_UNSIGNED_INT64_AMD
    cdef int GL_PERCENTAGE_AMD
    cdef int GL_PERFMON_RESULT_AVAILABLE_AMD
    cdef int GL_PERFMON_RESULT_SIZE_AMD
    cdef int GL_PERFMON_RESULT_AMD

    void glBeginPerfMonitorAMD (GLuint monitor)
    void glDeletePerfMonitorsAMD (GLsizei n, GLuint* monitors)
    void glEndPerfMonitorAMD (GLuint monitor)
    void glGenPerfMonitorsAMD (GLsizei n, GLuint* monitors)
    void glGetPerfMonitorCounterDataAMD (GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint *bytesWritten)
    void glGetPerfMonitorCounterInfoAMD (GLuint group, GLuint counter, GLenum pname, void* data)
    void glGetPerfMonitorCounterStringAMD (GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, char *counterString)
    void glGetPerfMonitorCountersAMD (GLuint group, GLint* numCounters, GLint *maxActiveCounters, GLsizei countersSize, GLuint *counters)
    void glGetPerfMonitorGroupStringAMD (GLuint group, GLsizei bufSize, GLsizei* length, char *groupString)
    void glGetPerfMonitorGroupsAMD (GLint* numGroups, GLsizei groupsSize, GLuint *groups)
    void glSelectPerfMonitorCountersAMD (GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList)

    #GL_AMD_sample_positions

    cdef int GL_AMD_sample_positions

    cdef int GL_SUBSAMPLE_DISTANCE_AMD

    void glSetMultisamplefvAMD (GLenum pname, GLuint index, GLfloat*  val)

    #GL_AMD_seamless_cubemap_per_texture

    cdef int GL_AMD_seamless_cubemap_per_texture

    cdef int GL_TEXTURE_CUBE_MAP_SEAMLESS_ARB

    #GL_AMD_shader_stencil_export

    cdef int GL_AMD_shader_stencil_export

    #GL_AMD_texture_texture4

    cdef int GL_AMD_texture_texture4

    #GL_AMD_transform_feedback3_lines_triangles

    cdef int GL_AMD_transform_feedback3_lines_triangles

    #GL_AMD_vertex_shader_tessellator

    cdef int GL_AMD_vertex_shader_tessellator

    cdef int GL_SAMPLER_BUFFER_AMD
    cdef int GL_INT_SAMPLER_BUFFER_AMD
    cdef int GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD
    cdef int GL_TESSELLATION_MODE_AMD
    cdef int GL_TESSELLATION_FACTOR_AMD
    cdef int GL_DISCRETE_AMD
    cdef int GL_CONTINUOUS_AMD

    void glTessellationFactorAMD (GLfloat factor)
    void glTessellationModeAMD (GLenum mode)

    #GL_APPLE_aux_depth_stencil

    cdef int GL_APPLE_aux_depth_stencil

    cdef int GL_AUX_DEPTH_STENCIL_APPLE

    #GL_APPLE_client_storage

    cdef int GL_APPLE_client_storage

    cdef int GL_UNPACK_CLIENT_STORAGE_APPLE

    #GL_APPLE_element_array

    cdef int GL_APPLE_element_array

    cdef int GL_ELEMENT_ARRAY_APPLE
    cdef int GL_ELEMENT_ARRAY_TYPE_APPLE
    cdef int GL_ELEMENT_ARRAY_POINTER_APPLE

    void glDrawElementArrayAPPLE (GLenum mode, GLint first, GLsizei count)
    void glDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count)
    void glElementPointerAPPLE (GLenum type, const_void_ptr  pointer)
    void glMultiDrawElementArrayAPPLE (GLenum mode, GLint  first, GLsizei count, GLsizei primcount)
    void glMultiDrawRangeElementArrayAPPLE (GLenum mode, GLuint start, GLuint end, GLint  first, GLsizei count, GLsizei primcount)

    #GL_APPLE_fence

    cdef int GL_APPLE_fence

    cdef int GL_DRAW_PIXELS_APPLE
    cdef int GL_FENCE_APPLE

    void glDeleteFencesAPPLE (GLsizei n, GLuint fences)
    void glFinishFenceAPPLE (GLuint fence)
    void glFinishObjectAPPLE (GLenum object, GLint name)
    void glGenFencesAPPLE (GLsizei n, GLuint* fences)
    GLboolean glIsFenceAPPLE (GLuint fence)
    void glSetFenceAPPLE (GLuint fence)
    GLboolean glTestFenceAPPLE (GLuint fence)
    GLboolean glTestObjectAPPLE (GLenum object, GLuint name)

    #GL_APPLE_float_pixels

    cdef int GL_APPLE_float_pixels

    cdef int GL_HALF_APPLE
    cdef int GL_RGBA_FLOAT32_APPLE
    cdef int GL_RGB_FLOAT32_APPLE
    cdef int GL_ALPHA_FLOAT32_APPLE
    cdef int GL_INTENSITY_FLOAT32_APPLE
    cdef int GL_LUMINANCE_FLOAT32_APPLE
    cdef int GL_LUMINANCE_ALPHA_FLOAT32_APPLE
    cdef int GL_RGBA_FLOAT16_APPLE
    cdef int GL_RGB_FLOAT16_APPLE
    cdef int GL_ALPHA_FLOAT16_APPLE
    cdef int GL_INTENSITY_FLOAT16_APPLE
    cdef int GL_LUMINANCE_FLOAT16_APPLE
    cdef int GL_LUMINANCE_ALPHA_FLOAT16_APPLE
    cdef int GL_COLOR_FLOAT_APPLE

    #GL_APPLE_flush_buffer_range

    cdef int GL_APPLE_flush_buffer_range

    cdef int GL_BUFFER_SERIALIZED_MODIFY_APPLE
    cdef int GL_BUFFER_FLUSHING_UNMAP_APPLE

    void glBufferParameteriAPPLE (GLenum target, GLenum pname, GLint param)
    void glFlushMappedBufferRangeAPPLE (GLenum target, GLintptr offset, GLsizeiptr size)

    #GL_APPLE_object_purgeable

    cdef int GL_APPLE_object_purgeable

    cdef int GL_BUFFER_OBJECT_APPLE
    cdef int GL_RELEASED_APPLE
    cdef int GL_VOLATILE_APPLE
    cdef int GL_RETAINED_APPLE
    cdef int GL_UNDEFINED_APPLE
    cdef int GL_PURGEABLE_APPLE

    void glGetObjectParameterivAPPLE (GLenum objectType, GLuint name, GLenum pname, GLint* params)
    GLenum glObjectPurgeableAPPLE (GLenum objectType, GLuint name, GLenum option)
    GLenum glObjectUnpurgeableAPPLE (GLenum objectType, GLuint name, GLenum option)

    #GL_APPLE_pixel_buffer

    cdef int GL_APPLE_pixel_buffer

    cdef int GL_MIN_PBUFFER_VIEWPORT_DIMS_APPLE

    #GL_APPLE_rgb_422

    cdef int GL_APPLE_rgb_422

    cdef int GL_UNSIGNED_SHORT_8_8_APPLE
    cdef int GL_UNSIGNED_SHORT_8_8_REV_APPLE
    cdef int GL_RGB_422_APPLE

    #GL_APPLE_row_bytes

    cdef int GL_APPLE_row_bytes

    cdef int GL_PACK_ROW_BYTES_APPLE
    cdef int GL_UNPACK_ROW_BYTES_APPLE

    #GL_APPLE_specular_vector

    cdef int GL_APPLE_specular_vector

    cdef int GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE

    #GL_APPLE_texture_range

    cdef int GL_APPLE_texture_range

    cdef int GL_TEXTURE_RANGE_LENGTH_APPLE
    cdef int GL_TEXTURE_RANGE_POINTER_APPLE
    cdef int GL_TEXTURE_STORAGE_HINT_APPLE
    cdef int GL_STORAGE_PRIVATE_APPLE
    cdef int GL_STORAGE_CACHED_APPLE
    cdef int GL_STORAGE_SHARED_APPLE

    void glGetTexParameterPointervAPPLE (GLenum target, GLenum pname, GLvoid **params)
    void glTextureRangeAPPLE (GLenum target, GLsizei length, GLvoid *pointer)

    #GL_APPLE_transform_hint

    cdef int GL_APPLE_transform_hint

    cdef int GL_TRANSFORM_HINT_APPLE

    #GL_APPLE_vertex_array_object

    cdef int GL_APPLE_vertex_array_object

    cdef int GL_VERTEX_ARRAY_BINDING_APPLE

    void glBindVertexArrayAPPLE (GLuint array)
    void glDeleteVertexArraysAPPLE (GLsizei n, GLuint arrays)
    void glGenVertexArraysAPPLE (GLsizei n, GLuint arrays)
    GLboolean glIsVertexArrayAPPLE (GLuint array)

    #GL_APPLE_vertex_array_range

    cdef int GL_APPLE_vertex_array_range

    cdef int GL_VERTEX_ARRAY_RANGE_APPLE
    cdef int GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE
    cdef int GL_VERTEX_ARRAY_STORAGE_HINT_APPLE
    cdef int GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_APPLE
    cdef int GL_VERTEX_ARRAY_RANGE_POINTER_APPLE
    cdef int GL_STORAGE_CLIENT_APPLE
    cdef int GL_STORAGE_CACHED_APPLE
    cdef int GL_STORAGE_SHARED_APPLE

    void glFlushVertexArrayRangeAPPLE (GLsizei length, void* pointer)
    void glVertexArrayParameteriAPPLE (GLenum pname, GLint param)
    void glVertexArrayRangeAPPLE (GLsizei length, void* pointer)

    #GL_APPLE_vertex_program_evaluators

    cdef int GL_APPLE_vertex_program_evaluators

    cdef int GL_VERTEX_ATTRIB_MAP1_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP2_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE
    cdef int GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE

    void glDisableVertexAttribAPPLE (GLuint index, GLenum pname)
    void glEnableVertexAttribAPPLE (GLuint index, GLenum pname)
    GLboolean glIsVertexAttribEnabledAPPLE (GLuint index, GLenum pname)
    void glMapVertexAttrib1dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble*  points)
    void glMapVertexAttrib1fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat*  points)
    void glMapVertexAttrib2dAPPLE (GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble*  points)
    void glMapVertexAttrib2fAPPLE (GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat*  points)

    #GL_APPLE_ycbcr_422

    cdef int GL_APPLE_ycbcr_422

    cdef int GL_YCBCR_422_APPLE
    cdef int GL_UNSIGNED_SHORT_8_8_APPLE
    cdef int GL_UNSIGNED_SHORT_8_8_REV_APPLE

    #GL_ARB_ES2_compatibility

    cdef int GL_ARB_ES2_compatibility

    cdef int GL_FIXED
    cdef int GL_IMPLEMENTATION_COLOR_READ_TYPE
    cdef int GL_IMPLEMENTATION_COLOR_READ_FORMAT
    cdef int GL_LOW_FLOAT
    cdef int GL_MEDIUM_FLOAT
    cdef int GL_HIGH_FLOAT
    cdef int GL_LOW_INT
    cdef int GL_MEDIUM_INT
    cdef int GL_HIGH_INT
    cdef int GL_SHADER_BINARY_FORMATS
    cdef int GL_NUM_SHADER_BINARY_FORMATS
    cdef int GL_SHADER_COMPILER
    cdef int GL_MAX_VERTEX_UNIFORM_VECTORS
    cdef int GL_MAX_VARYING_VECTORS
    cdef int GL_MAX_FRAGMENT_UNIFORM_VECTORS

    void glClearDepthf (GLclampf d)
    void glDepthRangef (GLclampf n, GLclampf f)
    void glGetShaderPrecisionFormat (GLenum shadertype, GLenum precisiontype, GLint* range, GLint *precision)
    void glReleaseShaderCompiler ()
    void glShaderBinary (GLsizei count, GLuint* shaders, GLenum binaryformat, GLvoid *binary, GLsizei length)

    #GL_ARB_base_instance

    cdef int GL_ARB_base_instance

    void glDrawArraysInstancedBaseInstance (GLenum mode, GLint first, GLsizei count, GLsizei primcount, GLuint baseinstance)
    void glDrawElementsInstancedBaseInstance (GLenum mode, GLsizei count, GLenum type, const_void_ptr  indices, GLsizei primcount, GLuint baseinstance)
    void glDrawElementsInstancedBaseVertexBaseInstance (GLenum mode, GLsizei count, GLenum type, const_void_ptr  indices, GLsizei primcount, GLint basevertex, GLuint baseinstance)

    #GL_ARB_blend_func_extended

    cdef int GL_ARB_blend_func_extended

    cdef int GL_SRC1_COLOR
    cdef int GL_ONE_MINUS_SRC1_COLOR
    cdef int GL_ONE_MINUS_SRC1_ALPHA
    cdef int GL_MAX_DUAL_SOURCE_DRAW_BUFFERS

    void glBindFragDataLocationIndexed (GLuint program, GLuint colorNumber, GLuint index, const_char_ptr  name)
    GLint glGetFragDataIndex (GLuint program, const_char_ptr  name)

    #GL_ARB_cl_event

    cdef int GL_ARB_cl_event

    cdef int GL_SYNC_CL_EVENT_ARB
    cdef int GL_SYNC_CL_EVENT_COMPLETE_ARB

    
    ctypedef _cl_context *cl_context
    struct _cl_context:
        pass
	
    ctypedef _cl_event *cl_event
    struct _cl_event:
        pass

    GLsync glCreateSyncFromCLeventARB (cl_context context, cl_event event, GLbitfield flags)

    #GL_ARB_color_buffer_float

    cdef int GL_ARB_color_buffer_float

    cdef int GL_RGBA_FLOAT_MODE_ARB
    cdef int GL_CLAMP_VERTEX_COLOR_ARB
    cdef int GL_CLAMP_FRAGMENT_COLOR_ARB
    cdef int GL_CLAMP_READ_COLOR_ARB
    cdef int GL_FIXED_ONLY_ARB

    void glClampColorARB (GLenum target, GLenum clamp)

    #GL_ARB_compatibility

    cdef int GL_ARB_compatibility

    #GL_ARB_compressed_texture_pixel_storage

    cdef int GL_ARB_compressed_texture_pixel_storage

    cdef int GL_UNPACK_COMPRESSED_BLOCK_WIDTH
    cdef int GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
    cdef int GL_UNPACK_COMPRESSED_BLOCK_DEPTH
    cdef int GL_UNPACK_COMPRESSED_BLOCK_SIZE
    cdef int GL_PACK_COMPRESSED_BLOCK_WIDTH
    cdef int GL_PACK_COMPRESSED_BLOCK_HEIGHT
    cdef int GL_PACK_COMPRESSED_BLOCK_DEPTH
    cdef int GL_PACK_COMPRESSED_BLOCK_SIZE

    #GL_ARB_conservative_depth

    cdef int GL_ARB_conservative_depth

    #GL_ARB_copy_buffer

    cdef int GL_ARB_copy_buffer

    cdef int GL_COPY_READ_BUFFER
    cdef int GL_COPY_WRITE_BUFFER

    void glCopyBufferSubData (GLenum readtarget, GLenum writetarget, GLintptr readoffset, GLintptr writeoffset, GLsizeiptr size)

    #GL_ARB_debug_output

    cdef int GL_ARB_debug_output

    cdef int GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB
    cdef int GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB
    cdef int GL_DEBUG_CALLBACK_FUNCTION_ARB
    cdef int GL_DEBUG_CALLBACK_USER_PARAM_ARB
    cdef int GL_DEBUG_SOURCE_API_ARB
    cdef int GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB
    cdef int GL_DEBUG_SOURCE_SHADER_COMPILER_ARB
    cdef int GL_DEBUG_SOURCE_THIRD_PARTY_ARB
    cdef int GL_DEBUG_SOURCE_APPLICATION_ARB
    cdef int GL_DEBUG_SOURCE_OTHER_ARB
    cdef int GL_DEBUG_TYPE_ERROR_ARB
    cdef int GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB
    cdef int GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB
    cdef int GL_DEBUG_TYPE_PORTABILITY_ARB
    cdef int GL_DEBUG_TYPE_PERFORMANCE_ARB
    cdef int GL_DEBUG_TYPE_OTHER_ARB
    cdef int GL_MAX_DEBUG_MESSAGE_LENGTH_ARB
    cdef int GL_MAX_DEBUG_LOGGED_MESSAGES_ARB
    cdef int GL_DEBUG_LOGGED_MESSAGES_ARB
    cdef int GL_DEBUG_SEVERITY_HIGH_ARB
    cdef int GL_DEBUG_SEVERITY_MEDIUM_ARB
    cdef int GL_DEBUG_SEVERITY_LOW_ARB

    void glDebugMessageCallbackARB (GLDEBUGPROCARB callback, void* userParam)
    void glDebugMessageControlARB (GLenum source, GLenum type, GLenum severity, GLsizei count, GLuint* ids, GLboolean enabled)
    void glDebugMessageInsertARB (GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const_char_ptr  buf)
    GLuint glGetDebugMessageLogARB (GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, char* messageLog)

    #GL_ARB_depth_buffer_float

    cdef int GL_ARB_depth_buffer_float

    cdef int GL_DEPTH_COMPONENT32F
    cdef int GL_DEPTH32F_STENCIL8
    cdef int GL_FLOAT_32_UNSIGNED_INT_24_8_REV

    #GL_ARB_depth_clamp

    cdef int GL_ARB_depth_clamp

    cdef int GL_DEPTH_CLAMP

    #GL_ARB_depth_texture

    cdef int GL_ARB_depth_texture

    cdef int GL_DEPTH_COMPONENT16_ARB
    cdef int GL_DEPTH_COMPONENT24_ARB
    cdef int GL_DEPTH_COMPONENT32_ARB
    cdef int GL_TEXTURE_DEPTH_SIZE_ARB
    cdef int GL_DEPTH_TEXTURE_MODE_ARB

    #GL_ARB_draw_buffers

    cdef int GL_ARB_draw_buffers

    cdef int GL_MAX_DRAW_BUFFERS_ARB
    cdef int GL_DRAW_BUFFER0_ARB
    cdef int GL_DRAW_BUFFER1_ARB
    cdef int GL_DRAW_BUFFER2_ARB
    cdef int GL_DRAW_BUFFER3_ARB
    cdef int GL_DRAW_BUFFER4_ARB
    cdef int GL_DRAW_BUFFER5_ARB
    cdef int GL_DRAW_BUFFER6_ARB
    cdef int GL_DRAW_BUFFER7_ARB
    cdef int GL_DRAW_BUFFER8_ARB
    cdef int GL_DRAW_BUFFER9_ARB
    cdef int GL_DRAW_BUFFER10_ARB
    cdef int GL_DRAW_BUFFER11_ARB
    cdef int GL_DRAW_BUFFER12_ARB
    cdef int GL_DRAW_BUFFER13_ARB
    cdef int GL_DRAW_BUFFER14_ARB
    cdef int GL_DRAW_BUFFER15_ARB

    void glDrawBuffersARB (GLsizei n, GLenum* bufs)

    #GL_ARB_draw_buffers_blend

    cdef int GL_ARB_draw_buffers_blend

    void glBlendEquationSeparateiARB (GLuint buf, GLenum modeRGB, GLenum modeAlpha)
    void glBlendEquationiARB (GLuint buf, GLenum mode)
    void glBlendFuncSeparateiARB (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)
    void glBlendFunciARB (GLuint buf, GLenum src, GLenum dst)

    #GL_ARB_draw_elements_base_vertex

    cdef int GL_ARB_draw_elements_base_vertex

    void glDrawElementsBaseVertex (GLenum mode, GLsizei count, GLenum type, void* indices, GLint basevertex)
    void glDrawElementsInstancedBaseVertex (GLenum mode, GLsizei count, GLenum type, const_void_ptr  indices, GLsizei primcount, GLint basevertex)
    void glDrawRangeElementsBaseVertex (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, void* indices, GLint basevertex)
    void glMultiDrawElementsBaseVertex (GLenum mode, GLsizei* count, GLenum type, GLvoid**indices, GLsizei primcount, GLint *basevertex)

    #GL_ARB_draw_indirect

    cdef int GL_ARB_draw_indirect

    cdef int GL_DRAW_INDIRECT_BUFFER
    cdef int GL_DRAW_INDIRECT_BUFFER_BINDING

    void glDrawArraysIndirect (GLenum mode, const_void_ptr  indirect)
    void glDrawElementsIndirect (GLenum mode, GLenum type, const_void_ptr  indirect)

    #GL_ARB_draw_instanced

    cdef int GL_ARB_draw_instanced

    #GL_ARB_explicit_attrib_location

    cdef int GL_ARB_explicit_attrib_location

    #GL_ARB_fragment_coord_conventions

    cdef int GL_ARB_fragment_coord_conventions

    #GL_ARB_fragment_program

    cdef int GL_ARB_fragment_program

    cdef int GL_FRAGMENT_PROGRAM_ARB
    cdef int GL_PROGRAM_ALU_INSTRUCTIONS_ARB
    cdef int GL_PROGRAM_TEX_INSTRUCTIONS_ARB
    cdef int GL_PROGRAM_TEX_INDIRECTIONS_ARB
    cdef int GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
    cdef int GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
    cdef int GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
    cdef int GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB
    cdef int GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB
    cdef int GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB
    cdef int GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
    cdef int GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
    cdef int GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
    cdef int GL_MAX_TEXTURE_COORDS_ARB
    cdef int GL_MAX_TEXTURE_IMAGE_UNITS_ARB

    #GL_ARB_fragment_program_shadow

    cdef int GL_ARB_fragment_program_shadow

    #GL_ARB_fragment_shader

    cdef int GL_ARB_fragment_shader

    cdef int GL_FRAGMENT_SHADER_ARB
    cdef int GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB
    cdef int GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB

    #GL_ARB_framebuffer_object

    cdef int GL_ARB_framebuffer_object

    cdef int GL_INVALID_FRAMEBUFFER_OPERATION
    cdef int GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
    cdef int GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
    cdef int GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
    cdef int GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
    cdef int GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
    cdef int GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
    cdef int GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
    cdef int GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
    cdef int GL_FRAMEBUFFER_DEFAULT
    cdef int GL_FRAMEBUFFER_UNDEFINED
    cdef int GL_DEPTH_STENCIL_ATTACHMENT
    cdef int GL_INDEX
    cdef int GL_MAX_RENDERBUFFER_SIZE
    cdef int GL_DEPTH_STENCIL
    cdef int GL_UNSIGNED_INT_24_8
    cdef int GL_DEPTH24_STENCIL8
    cdef int GL_TEXTURE_STENCIL_SIZE
    cdef int GL_UNSIGNED_NORMALIZED
    cdef int GL_SRGB
    cdef int GL_DRAW_FRAMEBUFFER_BINDING
    cdef int GL_FRAMEBUFFER_BINDING
    cdef int GL_RENDERBUFFER_BINDING
    cdef int GL_READ_FRAMEBUFFER
    cdef int GL_DRAW_FRAMEBUFFER
    cdef int GL_READ_FRAMEBUFFER_BINDING
    cdef int GL_RENDERBUFFER_SAMPLES
    cdef int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
    cdef int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
    cdef int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
    cdef int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
    cdef int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
    cdef int GL_FRAMEBUFFER_COMPLETE
    cdef int GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
    cdef int GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
    cdef int GL_FRAMEBUFFER_UNSUPPORTED
    cdef int GL_MAX_COLOR_ATTACHMENTS
    cdef int GL_COLOR_ATTACHMENT0
    cdef int GL_COLOR_ATTACHMENT1
    cdef int GL_COLOR_ATTACHMENT2
    cdef int GL_COLOR_ATTACHMENT3
    cdef int GL_COLOR_ATTACHMENT4
    cdef int GL_COLOR_ATTACHMENT5
    cdef int GL_COLOR_ATTACHMENT6
    cdef int GL_COLOR_ATTACHMENT7
    cdef int GL_COLOR_ATTACHMENT8
    cdef int GL_COLOR_ATTACHMENT9
    cdef int GL_COLOR_ATTACHMENT10
    cdef int GL_COLOR_ATTACHMENT11
    cdef int GL_COLOR_ATTACHMENT12
    cdef int GL_COLOR_ATTACHMENT13
    cdef int GL_COLOR_ATTACHMENT14
    cdef int GL_COLOR_ATTACHMENT15
    cdef int GL_DEPTH_ATTACHMENT
    cdef int GL_STENCIL_ATTACHMENT
    cdef int GL_FRAMEBUFFER
    cdef int GL_RENDERBUFFER
    cdef int GL_RENDERBUFFER_WIDTH
    cdef int GL_RENDERBUFFER_HEIGHT
    cdef int GL_RENDERBUFFER_INTERNAL_FORMAT
    cdef int GL_STENCIL_INDEX1
    cdef int GL_STENCIL_INDEX4
    cdef int GL_STENCIL_INDEX8
    cdef int GL_STENCIL_INDEX16
    cdef int GL_RENDERBUFFER_RED_SIZE
    cdef int GL_RENDERBUFFER_GREEN_SIZE
    cdef int GL_RENDERBUFFER_BLUE_SIZE
    cdef int GL_RENDERBUFFER_ALPHA_SIZE
    cdef int GL_RENDERBUFFER_DEPTH_SIZE
    cdef int GL_RENDERBUFFER_STENCIL_SIZE
    cdef int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
    cdef int GL_MAX_SAMPLES

    void glBindFramebuffer (GLenum target, GLuint framebuffer)
    void glBindRenderbuffer (GLenum target, GLuint renderbuffer)
    void glBlitFramebuffer (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)
    GLenum glCheckFramebufferStatus (GLenum target)
    void glDeleteFramebuffers (GLsizei n, GLuint* framebuffers)
    void glDeleteRenderbuffers (GLsizei n, GLuint* renderbuffers)
    void glFramebufferRenderbuffer (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
    void glFramebufferTexture1D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
    void glFramebufferTexture2D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
    void glFramebufferTexture3D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint layer)
    void glFramebufferTextureLayer (GLenum target,GLenum attachment, GLuint texture,GLint level,GLint layer)
    void glGenFramebuffers (GLsizei n, GLuint* framebuffers)
    void glGenRenderbuffers (GLsizei n, GLuint* renderbuffers)
    void glGenerateMipmap (GLenum target)
    void glGetFramebufferAttachmentParameteriv (GLenum target, GLenum attachment, GLenum pname, GLint* params)
    void glGetRenderbufferParameteriv (GLenum target, GLenum pname, GLint* params)
    GLboolean glIsFramebuffer (GLuint framebuffer)
    GLboolean glIsRenderbuffer (GLuint renderbuffer)
    void glRenderbufferStorage (GLenum target, GLenum internalformat, GLsizei width, GLsizei height)
    void glRenderbufferStorageMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    #GL_ARB_framebuffer_sRGB

    cdef int GL_ARB_framebuffer_sRGB

    cdef int GL_FRAMEBUFFER_SRGB

    #GL_ARB_geometry_shader4

    cdef int GL_ARB_geometry_shader4

    cdef int GL_LINES_ADJACENCY_ARB
    cdef int GL_LINE_STRIP_ADJACENCY_ARB
    cdef int GL_TRIANGLES_ADJACENCY_ARB
    cdef int GL_TRIANGLE_STRIP_ADJACENCY_ARB
    cdef int GL_PROGRAM_POINT_SIZE_ARB
    cdef int GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB
    cdef int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
    cdef int GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB
    cdef int GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB
    cdef int GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB
    cdef int GL_GEOMETRY_SHADER_ARB
    cdef int GL_GEOMETRY_VERTICES_OUT_ARB
    cdef int GL_GEOMETRY_INPUT_TYPE_ARB
    cdef int GL_GEOMETRY_OUTPUT_TYPE_ARB
    cdef int GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB
    cdef int GL_MAX_VERTEX_VARYING_COMPONENTS_ARB
    cdef int GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB
    cdef int GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB
    cdef int GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB

    void glFramebufferTextureARB (GLenum target, GLenum attachment, GLuint texture, GLint level)
    void glFramebufferTextureFaceARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)
    void glFramebufferTextureLayerARB (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)
    void glProgramParameteriARB (GLuint program, GLenum pname, GLint value)

    #GL_ARB_get_program_binary

    cdef int GL_ARB_get_program_binary

    cdef int GL_PROGRAM_BINARY_RETRIEVABLE_HINT
    cdef int GL_PROGRAM_BINARY_LENGTH
    cdef int GL_NUM_PROGRAM_BINARY_FORMATS
    cdef int GL_PROGRAM_BINARY_FORMATS

    void glGetProgramBinary (GLuint program, GLsizei bufSize, GLsizei* length, GLenum *binaryFormat, GLvoid*binary)
    void glProgramBinary (GLuint program, GLenum binaryFormat, const_void_ptr  binary, GLsizei length)
    void glProgramParameteri (GLuint program, GLenum pname, GLint value)

    #GL_ARB_gpu_shader5

    cdef int GL_ARB_gpu_shader5

    cdef int GL_GEOMETRY_SHADER_INVOCATIONS
    cdef int GL_MAX_GEOMETRY_SHADER_INVOCATIONS
    cdef int GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
    cdef int GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
    cdef int GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
    cdef int GL_MAX_VERTEX_STREAMS

    #GL_ARB_gpu_shader_fp64

    cdef int GL_ARB_gpu_shader_fp64

    cdef int GL_DOUBLE_MAT2
    cdef int GL_DOUBLE_MAT3
    cdef int GL_DOUBLE_MAT4
    cdef int GL_DOUBLE_MAT2x3
    cdef int GL_DOUBLE_MAT2x4
    cdef int GL_DOUBLE_MAT3x2
    cdef int GL_DOUBLE_MAT3x4
    cdef int GL_DOUBLE_MAT4x2
    cdef int GL_DOUBLE_MAT4x3
    cdef int GL_DOUBLE_VEC2
    cdef int GL_DOUBLE_VEC3
    cdef int GL_DOUBLE_VEC4

    void glGetUniformdv (GLuint program, GLint location, GLdouble* params)
    void glProgramUniform1dEXT (GLuint program, GLint location, GLdouble x)
    void glProgramUniform1dvEXT (GLuint program, GLint location, GLsizei count, GLdouble*  value)
    void glProgramUniform2dEXT (GLuint program, GLint location, GLdouble x, GLdouble y)
    void glProgramUniform2dvEXT (GLuint program, GLint location, GLsizei count, GLdouble*  value)
    void glProgramUniform3dEXT (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z)
    void glProgramUniform3dvEXT (GLuint program, GLint location, GLsizei count, GLdouble*  value)
    void glProgramUniform4dEXT (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glProgramUniform4dvEXT (GLuint program, GLint location, GLsizei count, GLdouble*  value)
    void glProgramUniformMatrix2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix2x3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix2x4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix3x2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix3x4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix4dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble * value)
    void glProgramUniformMatrix4x2dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix4x3dvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glUniform1d (GLint location, GLdouble x)
    void glUniform1dv (GLint location, GLsizei count, GLdouble* value)
    void glUniform2d (GLint location, GLdouble x, GLdouble y)
    void glUniform2dv (GLint location, GLsizei count, GLdouble*  value)
    void glUniform3d (GLint location, GLdouble x, GLdouble y, GLdouble z)
    void glUniform3dv (GLint location, GLsizei count, GLdouble * value)
    void glUniform4d (GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glUniform4dv (GLint location, GLsizei count, GLdouble*  value)
    void glUniformMatrix2dv (GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glUniformMatrix2x3dv (GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glUniformMatrix2x4dv (GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glUniformMatrix3dv (GLint location, GLsizei count, GLboolean transpose, GLdouble* value)
    void glUniformMatrix3x2dv (GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glUniformMatrix3x4dv (GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glUniformMatrix4dv (GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glUniformMatrix4x2dv (GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glUniformMatrix4x3dv (GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)

    #GL_ARB_half_float_pixel

    cdef int GL_ARB_half_float_pixel

    cdef int GL_HALF_FLOAT_ARB

    #GL_ARB_half_float_vertex

    cdef int GL_ARB_half_float_vertex

    cdef int GL_HALF_FLOAT

    #GL_ARB_imaging

    cdef int GL_ARB_imaging

    cdef int GL_CONSTANT_COLOR
    cdef int GL_ONE_MINUS_CONSTANT_COLOR
    cdef int GL_CONSTANT_ALPHA
    cdef int GL_ONE_MINUS_CONSTANT_ALPHA
    cdef int GL_BLEND_COLOR
    cdef int GL_FUNC_ADD
    cdef int GL_MIN
    cdef int GL_MAX
    cdef int GL_BLEND_EQUATION
    cdef int GL_FUNC_SUBTRACT
    cdef int GL_FUNC_REVERSE_SUBTRACT
    cdef int GL_CONVOLUTION_1D
    cdef int GL_CONVOLUTION_2D
    cdef int GL_SEPARABLE_2D
    cdef int GL_CONVOLUTION_BORDER_MODE
    cdef int GL_CONVOLUTION_FILTER_SCALE
    cdef int GL_CONVOLUTION_FILTER_BIAS
    cdef int GL_REDUCE
    cdef int GL_CONVOLUTION_FORMAT
    cdef int GL_CONVOLUTION_WIDTH
    cdef int GL_CONVOLUTION_HEIGHT
    cdef int GL_MAX_CONVOLUTION_WIDTH
    cdef int GL_MAX_CONVOLUTION_HEIGHT
    cdef int GL_POST_CONVOLUTION_RED_SCALE
    cdef int GL_POST_CONVOLUTION_GREEN_SCALE
    cdef int GL_POST_CONVOLUTION_BLUE_SCALE
    cdef int GL_POST_CONVOLUTION_ALPHA_SCALE
    cdef int GL_POST_CONVOLUTION_RED_BIAS
    cdef int GL_POST_CONVOLUTION_GREEN_BIAS
    cdef int GL_POST_CONVOLUTION_BLUE_BIAS
    cdef int GL_POST_CONVOLUTION_ALPHA_BIAS
    cdef int GL_HISTOGRAM
    cdef int GL_PROXY_HISTOGRAM
    cdef int GL_HISTOGRAM_WIDTH
    cdef int GL_HISTOGRAM_FORMAT
    cdef int GL_HISTOGRAM_RED_SIZE
    cdef int GL_HISTOGRAM_GREEN_SIZE
    cdef int GL_HISTOGRAM_BLUE_SIZE
    cdef int GL_HISTOGRAM_ALPHA_SIZE
    cdef int GL_HISTOGRAM_LUMINANCE_SIZE
    cdef int GL_HISTOGRAM_SINK
    cdef int GL_MINMAX
    cdef int GL_MINMAX_FORMAT
    cdef int GL_MINMAX_SINK
    cdef int GL_TABLE_TOO_LARGE
    cdef int GL_COLOR_MATRIX
    cdef int GL_COLOR_MATRIX_STACK_DEPTH
    cdef int GL_MAX_COLOR_MATRIX_STACK_DEPTH
    cdef int GL_POST_COLOR_MATRIX_RED_SCALE
    cdef int GL_POST_COLOR_MATRIX_GREEN_SCALE
    cdef int GL_POST_COLOR_MATRIX_BLUE_SCALE
    cdef int GL_POST_COLOR_MATRIX_ALPHA_SCALE
    cdef int GL_POST_COLOR_MATRIX_RED_BIAS
    cdef int GL_POST_COLOR_MATRIX_GREEN_BIAS
    cdef int GL_POST_COLOR_MATRIX_BLUE_BIAS
    cdef int GL_POST_COLOR_MATRIX_ALPHA_BIAS
    cdef int GL_COLOR_TABLE
    cdef int GL_POST_CONVOLUTION_COLOR_TABLE
    cdef int GL_POST_COLOR_MATRIX_COLOR_TABLE
    cdef int GL_PROXY_COLOR_TABLE
    cdef int GL_PROXY_POST_CONVOLUTION_COLOR_TABLE
    cdef int GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
    cdef int GL_COLOR_TABLE_SCALE
    cdef int GL_COLOR_TABLE_BIAS
    cdef int GL_COLOR_TABLE_FORMAT
    cdef int GL_COLOR_TABLE_WIDTH
    cdef int GL_COLOR_TABLE_RED_SIZE
    cdef int GL_COLOR_TABLE_GREEN_SIZE
    cdef int GL_COLOR_TABLE_BLUE_SIZE
    cdef int GL_COLOR_TABLE_ALPHA_SIZE
    cdef int GL_COLOR_TABLE_LUMINANCE_SIZE
    cdef int GL_COLOR_TABLE_INTENSITY_SIZE
    cdef int GL_IGNORE_BORDER
    cdef int GL_CONSTANT_BORDER
    cdef int GL_WRAP_BORDER
    cdef int GL_REPLICATE_BORDER
    cdef int GL_CONVOLUTION_BORDER_COLOR

    void glColorSubTable (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data)
    void glColorTable (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table)
    void glColorTableParameterfv (GLenum target, GLenum pname, GLfloat* params)
    void glColorTableParameteriv (GLenum target, GLenum pname, GLint* params)
    void glConvolutionFilter1D (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image)
    void glConvolutionFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image)
    void glConvolutionParameterf (GLenum target, GLenum pname, GLfloat params)
    void glConvolutionParameterfv (GLenum target, GLenum pname, GLfloat* params)
    void glConvolutionParameteri (GLenum target, GLenum pname, GLint params)
    void glConvolutionParameteriv (GLenum target, GLenum pname, GLint* params)
    void glCopyColorSubTable (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)
    void glCopyColorTable (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
    void glCopyConvolutionFilter1D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
    void glCopyConvolutionFilter2D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)
    void glGetColorTable (GLenum target, GLenum format, GLenum type, GLvoid *table)
    void glGetColorTableParameterfv (GLenum target, GLenum pname, GLfloat *params)
    void glGetColorTableParameteriv (GLenum target, GLenum pname, GLint *params)
    void glGetConvolutionFilter (GLenum target, GLenum format, GLenum type, GLvoid *image)
    void glGetConvolutionParameterfv (GLenum target, GLenum pname, GLfloat *params)
    void glGetConvolutionParameteriv (GLenum target, GLenum pname, GLint *params)
    void glGetHistogram (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)
    void glGetHistogramParameterfv (GLenum target, GLenum pname, GLfloat *params)
    void glGetHistogramParameteriv (GLenum target, GLenum pname, GLint *params)
    void glGetMinmax (GLenum target, GLboolean reset, GLenum format, GLenum types, GLvoid *values)
    void glGetMinmaxParameterfv (GLenum target, GLenum pname, GLfloat *params)
    void glGetMinmaxParameteriv (GLenum target, GLenum pname, GLint *params)
    void glGetSeparableFilter (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span)
    void glHistogram (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)
    void glMinmax (GLenum target, GLenum internalformat, GLboolean sink)
    void glResetHistogram (GLenum target)
    void glResetMinmax (GLenum target)
    void glSeparableFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column)

    #GL_ARB_instanced_arrays

    cdef int GL_ARB_instanced_arrays

    cdef int GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB

    void glDrawArraysInstancedARB (GLenum mode, GLint first, GLsizei count, GLsizei primcount)
    void glDrawElementsInstancedARB (GLenum mode, GLsizei count, GLenum type, const_void_ptr  indices, GLsizei primcount)
    void glVertexAttribDivisorARB (GLuint index, GLuint divisor)

    #GL_ARB_internalformat_query

    cdef int GL_ARB_internalformat_query

    cdef int GL_NUM_SAMPLE_COUNTS

    void glGetInternalformativ (GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params)

    #GL_ARB_map_buffer_alignment

    cdef int GL_ARB_map_buffer_alignment

    cdef int GL_MIN_MAP_BUFFER_ALIGNMENT

    #GL_ARB_map_buffer_range

    cdef int GL_ARB_map_buffer_range

    cdef int GL_MAP_READ_BIT
    cdef int GL_MAP_WRITE_BIT
    cdef int GL_MAP_INVALIDATE_RANGE_BIT
    cdef int GL_MAP_INVALIDATE_BUFFER_BIT
    cdef int GL_MAP_FLUSH_EXPLICIT_BIT
    cdef int GL_MAP_UNSYNCHRONIZED_BIT

    void glFlushMappedBufferRange (GLenum target, GLintptr offset, GLsizeiptr length)
    GLvoid * glMapBufferRange (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access)

    #GL_ARB_matrix_palette

    cdef int GL_ARB_matrix_palette

    cdef int GL_MATRIX_PALETTE_ARB
    cdef int GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB
    cdef int GL_MAX_PALETTE_MATRICES_ARB
    cdef int GL_CURRENT_PALETTE_MATRIX_ARB
    cdef int GL_MATRIX_INDEX_ARRAY_ARB
    cdef int GL_CURRENT_MATRIX_INDEX_ARB
    cdef int GL_MATRIX_INDEX_ARRAY_SIZE_ARB
    cdef int GL_MATRIX_INDEX_ARRAY_TYPE_ARB
    cdef int GL_MATRIX_INDEX_ARRAY_STRIDE_ARB
    cdef int GL_MATRIX_INDEX_ARRAY_POINTER_ARB

    void glCurrentPaletteMatrixARB (GLint index)
    void glMatrixIndexPointerARB (GLint size, GLenum type, GLsizei stride, GLvoid *pointer)
    void glMatrixIndexubvARB (GLint size, GLubyte *indices)
    void glMatrixIndexuivARB (GLint size, GLuint *indices)
    void glMatrixIndexusvARB (GLint size, GLushort *indices)

    #GL_ARB_multisample

    cdef int GL_ARB_multisample

    cdef int GL_MULTISAMPLE_ARB
    cdef int GL_SAMPLE_ALPHA_TO_COVERAGE_ARB
    cdef int GL_SAMPLE_ALPHA_TO_ONE_ARB
    cdef int GL_SAMPLE_COVERAGE_ARB
    cdef int GL_SAMPLE_BUFFERS_ARB
    cdef int GL_SAMPLES_ARB
    cdef int GL_SAMPLE_COVERAGE_VALUE_ARB
    cdef int GL_SAMPLE_COVERAGE_INVERT_ARB
    cdef int GL_MULTISAMPLE_BIT_ARB

    void glSampleCoverageARB (GLclampf value, GLboolean invert)

    #GL_ARB_multitexture

    cdef int GL_ARB_multitexture

    cdef int GL_TEXTURE0_ARB
    cdef int GL_TEXTURE1_ARB
    cdef int GL_TEXTURE2_ARB
    cdef int GL_TEXTURE3_ARB
    cdef int GL_TEXTURE4_ARB
    cdef int GL_TEXTURE5_ARB
    cdef int GL_TEXTURE6_ARB
    cdef int GL_TEXTURE7_ARB
    cdef int GL_TEXTURE8_ARB
    cdef int GL_TEXTURE9_ARB
    cdef int GL_TEXTURE10_ARB
    cdef int GL_TEXTURE11_ARB
    cdef int GL_TEXTURE12_ARB
    cdef int GL_TEXTURE13_ARB
    cdef int GL_TEXTURE14_ARB
    cdef int GL_TEXTURE15_ARB
    cdef int GL_TEXTURE16_ARB
    cdef int GL_TEXTURE17_ARB
    cdef int GL_TEXTURE18_ARB
    cdef int GL_TEXTURE19_ARB
    cdef int GL_TEXTURE20_ARB
    cdef int GL_TEXTURE21_ARB
    cdef int GL_TEXTURE22_ARB
    cdef int GL_TEXTURE23_ARB
    cdef int GL_TEXTURE24_ARB
    cdef int GL_TEXTURE25_ARB
    cdef int GL_TEXTURE26_ARB
    cdef int GL_TEXTURE27_ARB
    cdef int GL_TEXTURE28_ARB
    cdef int GL_TEXTURE29_ARB
    cdef int GL_TEXTURE30_ARB
    cdef int GL_TEXTURE31_ARB
    cdef int GL_ACTIVE_TEXTURE_ARB
    cdef int GL_CLIENT_ACTIVE_TEXTURE_ARB
    cdef int GL_MAX_TEXTURE_UNITS_ARB

    void glActiveTextureARB (GLenum texture)
    void glClientActiveTextureARB (GLenum texture)
    void glMultiTexCoord1dARB (GLenum target, GLdouble s)
    void glMultiTexCoord1dvARB (GLenum target, GLdouble* v)
    void glMultiTexCoord1fARB (GLenum target, GLfloat s)
    void glMultiTexCoord1fvARB (GLenum target, GLfloat* v)
    void glMultiTexCoord1iARB (GLenum target, GLint s)
    void glMultiTexCoord1ivARB (GLenum target, GLint* v)
    void glMultiTexCoord1sARB (GLenum target, GLshort s)
    void glMultiTexCoord1svARB (GLenum target, GLshort* v)
    void glMultiTexCoord2dARB (GLenum target, GLdouble s, GLdouble t)
    void glMultiTexCoord2dvARB (GLenum target, GLdouble* v)
    void glMultiTexCoord2fARB (GLenum target, GLfloat s, GLfloat t)
    void glMultiTexCoord2fvARB (GLenum target, GLfloat* v)
    void glMultiTexCoord2iARB (GLenum target, GLint s, GLint t)
    void glMultiTexCoord2ivARB (GLenum target, GLint* v)
    void glMultiTexCoord2sARB (GLenum target, GLshort s, GLshort t)
    void glMultiTexCoord2svARB (GLenum target, GLshort* v)
    void glMultiTexCoord3dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r)
    void glMultiTexCoord3dvARB (GLenum target, GLdouble* v)
    void glMultiTexCoord3fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r)
    void glMultiTexCoord3fvARB (GLenum target, GLfloat* v)
    void glMultiTexCoord3iARB (GLenum target, GLint s, GLint t, GLint r)
    void glMultiTexCoord3ivARB (GLenum target, GLint* v)
    void glMultiTexCoord3sARB (GLenum target, GLshort s, GLshort t, GLshort r)
    void glMultiTexCoord3svARB (GLenum target, GLshort* v)
    void glMultiTexCoord4dARB (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)
    void glMultiTexCoord4dvARB (GLenum target, GLdouble* v)
    void glMultiTexCoord4fARB (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)
    void glMultiTexCoord4fvARB (GLenum target, GLfloat* v)
    void glMultiTexCoord4iARB (GLenum target, GLint s, GLint t, GLint r, GLint q)
    void glMultiTexCoord4ivARB (GLenum target, GLint* v)
    void glMultiTexCoord4sARB (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)
    void glMultiTexCoord4svARB (GLenum target, GLshort* v)

    #GL_ARB_occlusion_query

    cdef int GL_ARB_occlusion_query

    cdef int GL_QUERY_COUNTER_BITS_ARB
    cdef int GL_CURRENT_QUERY_ARB
    cdef int GL_QUERY_RESULT_ARB
    cdef int GL_QUERY_RESULT_AVAILABLE_ARB
    cdef int GL_SAMPLES_PASSED_ARB

    void glBeginQueryARB (GLenum target, GLuint id)
    void glDeleteQueriesARB (GLsizei n, GLuint* ids)
    void glEndQueryARB (GLenum target)
    void glGenQueriesARB (GLsizei n, GLuint* ids)
    void glGetQueryObjectivARB (GLuint id, GLenum pname, GLint* params)
    void glGetQueryObjectuivARB (GLuint id, GLenum pname, GLuint* params)
    void glGetQueryivARB (GLenum target, GLenum pname, GLint* params)
    GLboolean glIsQueryARB (GLuint id)

    #GL_ARB_occlusion_query2

    cdef int GL_ARB_occlusion_query2

    cdef int GL_ANY_SAMPLES_PASSED

    #GL_ARB_pixel_buffer_object

    cdef int GL_ARB_pixel_buffer_object

    cdef int GL_PIXEL_PACK_BUFFER_ARB
    cdef int GL_PIXEL_UNPACK_BUFFER_ARB
    cdef int GL_PIXEL_PACK_BUFFER_BINDING_ARB
    cdef int GL_PIXEL_UNPACK_BUFFER_BINDING_ARB

    #GL_ARB_point_parameters

    cdef int GL_ARB_point_parameters

    cdef int GL_POINT_SIZE_MIN_ARB
    cdef int GL_POINT_SIZE_MAX_ARB
    cdef int GL_POINT_FADE_THRESHOLD_SIZE_ARB
    cdef int GL_POINT_DISTANCE_ATTENUATION_ARB

    void glPointParameterfARB (GLenum pname, GLfloat param)
    void glPointParameterfvARB (GLenum pname, GLfloat*  params)

    #GL_ARB_point_sprite

    cdef int GL_ARB_point_sprite

    cdef int GL_POINT_SPRITE_ARB
    cdef int GL_COORD_REPLACE_ARB

    #GL_ARB_provoking_vertex

    cdef int GL_ARB_provoking_vertex

    cdef int GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
    cdef int GL_FIRST_VERTEX_CONVENTION
    cdef int GL_LAST_VERTEX_CONVENTION
    cdef int GL_PROVOKING_VERTEX

    void glProvokingVertex (GLenum mode)

    #GL_ARB_robustness

    cdef int GL_ARB_robustness

    cdef int GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB
    cdef int GL_LOSE_CONTEXT_ON_RESET_ARB
    cdef int GL_GUILTY_CONTEXT_RESET_ARB
    cdef int GL_INNOCENT_CONTEXT_RESET_ARB
    cdef int GL_UNKNOWN_CONTEXT_RESET_ARB
    cdef int GL_RESET_NOTIFICATION_STRATEGY_ARB
    cdef int GL_NO_RESET_NOTIFICATION_ARB

    GLenum glGetGraphicsResetStatusARB ()
    void glGetnColorTableARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* table)
    void glGetnCompressedTexImageARB (GLenum target, GLint lod, GLsizei bufSize, void* img)
    void glGetnConvolutionFilterARB (GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* image)
    void glGetnHistogramARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values)
    void glGetnMapdvARB (GLenum target, GLenum query, GLsizei bufSize, GLdouble* v)
    void glGetnMapfvARB (GLenum target, GLenum query, GLsizei bufSize, GLfloat* v)
    void glGetnMapivARB (GLenum target, GLenum query, GLsizei bufSize, GLint* v)
    void glGetnMinmaxARB (GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values)
    void glGetnPixelMapfvARB (GLenum map, GLsizei bufSize, GLfloat* values)
    void glGetnPixelMapuivARB (GLenum map, GLsizei bufSize, GLuint* values)
    void glGetnPixelMapusvARB (GLenum map, GLsizei bufSize, GLushort* values)
    void glGetnPolygonStippleARB (GLsizei bufSize, GLubyte* pattern)
    void glGetnSeparableFilterARB (GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void* row, GLsizei columnBufSize, GLvoid*column, GLvoid*span)
    void glGetnTexImageARB (GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* img)
    void glGetnUniformdvARB (GLuint program, GLint location, GLsizei bufSize, GLdouble* params)
    void glGetnUniformfvARB (GLuint program, GLint location, GLsizei bufSize, GLfloat* params)
    void glGetnUniformivARB (GLuint program, GLint location, GLsizei bufSize, GLint* params)
    void glGetnUniformuivARB (GLuint program, GLint location, GLsizei bufSize, GLuint* params)
    void glReadnPixelsARB (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void* data)

    #GL_ARB_sample_shading

    cdef int GL_ARB_sample_shading

    cdef int GL_SAMPLE_SHADING_ARB
    cdef int GL_MIN_SAMPLE_SHADING_VALUE_ARB

    void glMinSampleShadingARB (GLclampf value)

    #GL_ARB_sampler_objects

    cdef int GL_ARB_sampler_objects

    cdef int GL_SAMPLER_BINDING

    void glBindSampler (GLuint unit, GLuint sampler)
    void glDeleteSamplers (GLsizei count, GLuint*  samplers)
    void glGenSamplers (GLsizei count, GLuint* samplers)
    void glGetSamplerParameterIiv (GLuint sampler, GLenum pname, GLint* params)
    void glGetSamplerParameterIuiv (GLuint sampler, GLenum pname, GLuint* params)
    void glGetSamplerParameterfv (GLuint sampler, GLenum pname, GLfloat* params)
    void glGetSamplerParameteriv (GLuint sampler, GLenum pname, GLint* params)
    GLboolean glIsSampler (GLuint sampler)
    void glSamplerParameterIiv (GLuint sampler, GLenum pname, GLint*  params)
    void glSamplerParameterIuiv (GLuint sampler, GLenum pname, GLuint* params)
    void glSamplerParameterf (GLuint sampler, GLenum pname, GLfloat param)
    void glSamplerParameterfv (GLuint sampler, GLenum pname, GLfloat*  params)
    void glSamplerParameteri (GLuint sampler, GLenum pname, GLint param)
    void glSamplerParameteriv (GLuint sampler, GLenum pname, GLint*  params)

    #GL_ARB_seamless_cube_map

    cdef int GL_ARB_seamless_cube_map

    cdef int GL_TEXTURE_CUBE_MAP_SEAMLESS

    #GL_ARB_separate_shader_objects

    cdef int GL_ARB_separate_shader_objects

    cdef int GL_VERTEX_SHADER_BIT
    cdef int GL_FRAGMENT_SHADER_BIT
    cdef int GL_GEOMETRY_SHADER_BIT
    cdef int GL_TESS_CONTROL_SHADER_BIT
    cdef int GL_TESS_EVALUATION_SHADER_BIT
    cdef int GL_PROGRAM_SEPARABLE
    cdef int GL_ACTIVE_PROGRAM
    cdef int GL_PROGRAM_PIPELINE_BINDING
    cdef int GL_ALL_SHADER_BITS

    void glActiveShaderProgram (GLuint pipeline, GLuint program)
    void glBindProgramPipeline (GLuint pipeline)
    GLuint glCreateShaderProgramv (GLenum type, GLsizei count, const_char_ptr * strings)
    void glDeleteProgramPipelines (GLsizei n, GLuint* pipelines)
    void glGenProgramPipelines (GLsizei n, GLuint* pipelines)
    void glGetProgramPipelineInfoLog (GLuint pipeline, GLsizei bufSize, GLsizei* length, char *infoLog)
    void glGetProgramPipelineiv (GLuint pipeline, GLenum pname, GLint* params)
    GLboolean glIsProgramPipeline (GLuint pipeline)
    void glProgramUniform1d (GLuint program, GLint location, GLdouble x)
    void glProgramUniform1dv (GLuint program, GLint location, GLsizei count, GLdouble*  value)
    void glProgramUniform1f (GLuint program, GLint location, GLfloat x)
    void glProgramUniform1fv (GLuint program, GLint location, GLsizei count, GLfloat*  value)
    void glProgramUniform1i (GLuint program, GLint location, GLint x)
    void glProgramUniform1iv (GLuint program, GLint location, GLsizei count, GLint*  value)
    void glProgramUniform1ui (GLuint program, GLint location, GLuint x)
    void glProgramUniform1uiv (GLuint program, GLint location, GLsizei count, GLuint* value)
    void glProgramUniform2d (GLuint program, GLint location, GLdouble x, GLdouble y)
    void glProgramUniform2dv (GLuint program, GLint location, GLsizei count, GLdouble*  value)
    void glProgramUniform2f (GLuint program, GLint location, GLfloat x, GLfloat y)
    void glProgramUniform2fv (GLuint program, GLint location, GLsizei count, GLfloat*  value)
    void glProgramUniform2i (GLuint program, GLint location, GLint x, GLint y)
    void glProgramUniform2iv (GLuint program, GLint location, GLsizei count, GLint*  value)
    void glProgramUniform2ui (GLuint program, GLint location, GLuint x, GLuint y)
    void glProgramUniform2uiv (GLuint program, GLint location, GLsizei count, GLuint* value)
    void glProgramUniform3d (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z)
    void glProgramUniform3dv (GLuint program, GLint location, GLsizei count, GLdouble*  value)
    void glProgramUniform3f (GLuint program, GLint location, GLfloat x, GLfloat y, GLfloat z)
    void glProgramUniform3fv (GLuint program, GLint location, GLsizei count, GLfloat*  value)
    void glProgramUniform3i (GLuint program, GLint location, GLint x, GLint y, GLint z)
    void glProgramUniform3iv (GLuint program, GLint location, GLsizei count, GLint*  value)
    void glProgramUniform3ui (GLuint program, GLint location, GLuint x, GLuint y, GLuint z)
    void glProgramUniform3uiv (GLuint program, GLint location, GLsizei count, GLuint* value)
    void glProgramUniform4d (GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glProgramUniform4dv (GLuint program, GLint location, GLsizei count, GLdouble*  value)
    void glProgramUniform4f (GLuint program, GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glProgramUniform4fv (GLuint program, GLint location, GLsizei count, GLfloat*  value)
    void glProgramUniform4i (GLuint program, GLint location, GLint x, GLint y, GLint z, GLint w)
    void glProgramUniform4iv (GLuint program, GLint location, GLsizei count, GLint*  value)
    void glProgramUniform4ui (GLuint program, GLint location, GLuint x, GLuint y, GLuint z, GLuint w)
    void glProgramUniform4uiv (GLuint program, GLint location, GLsizei count, GLuint* value)
    void glProgramUniformMatrix2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix2x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix2x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)
    void glProgramUniformMatrix2x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix2x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix3x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix3x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix3x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix3x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix4x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix4x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix4x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble*  value)
    void glProgramUniformMatrix4x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glUseProgramStages (GLuint pipeline, GLbitfield stages, GLuint program)
    void glValidateProgramPipeline (GLuint pipeline)

    #GL_ARB_shader_atomic_counters

    cdef int GL_ARB_shader_atomic_counters

    cdef int GL_ATOMIC_COUNTER_BUFFER
    cdef int GL_ATOMIC_COUNTER_BUFFER_BINDING
    cdef int GL_ATOMIC_COUNTER_BUFFER_START
    cdef int GL_ATOMIC_COUNTER_BUFFER_SIZE
    cdef int GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
    cdef int GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
    cdef int GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
    cdef int GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
    cdef int GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
    cdef int GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
    cdef int GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
    cdef int GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
    cdef int GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
    cdef int GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
    cdef int GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
    cdef int GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
    cdef int GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
    cdef int GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
    cdef int GL_MAX_VERTEX_ATOMIC_COUNTERS
    cdef int GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
    cdef int GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
    cdef int GL_MAX_GEOMETRY_ATOMIC_COUNTERS
    cdef int GL_MAX_FRAGMENT_ATOMIC_COUNTERS
    cdef int GL_MAX_COMBINED_ATOMIC_COUNTERS
    cdef int GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
    cdef int GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
    cdef int GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
    cdef int GL_UNSIGNED_INT_ATOMIC_COUNTER
    cdef int GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS

    void glGetActiveAtomicCounterBufferiv (GLuint program, GLuint bufferIndex, GLenum pname, GLint* params)

    #GL_ARB_shader_bit_encoding

    cdef int GL_ARB_shader_bit_encoding

    #GL_ARB_shader_image_load_store

    cdef int GL_ARB_shader_image_load_store

    cdef int GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
    cdef int GL_ELEMENT_ARRAY_BARRIER_BIT
    cdef int GL_UNIFORM_BARRIER_BIT
    cdef int GL_TEXTURE_FETCH_BARRIER_BIT
    cdef int GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
    cdef int GL_COMMAND_BARRIER_BIT
    cdef int GL_PIXEL_BUFFER_BARRIER_BIT
    cdef int GL_TEXTURE_UPDATE_BARRIER_BIT
    cdef int GL_BUFFER_UPDATE_BARRIER_BIT
    cdef int GL_FRAMEBUFFER_BARRIER_BIT
    cdef int GL_TRANSFORM_FEEDBACK_BARRIER_BIT
    cdef int GL_ATOMIC_COUNTER_BARRIER_BIT
    cdef int GL_MAX_IMAGE_UNITS
    cdef int GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
    cdef int GL_IMAGE_BINDING_NAME
    cdef int GL_IMAGE_BINDING_LEVEL
    cdef int GL_IMAGE_BINDING_LAYERED
    cdef int GL_IMAGE_BINDING_LAYER
    cdef int GL_IMAGE_BINDING_ACCESS
    cdef int GL_IMAGE_1D
    cdef int GL_IMAGE_2D
    cdef int GL_IMAGE_3D
    cdef int GL_IMAGE_2D_RECT
    cdef int GL_IMAGE_CUBE
    cdef int GL_IMAGE_BUFFER
    cdef int GL_IMAGE_1D_ARRAY
    cdef int GL_IMAGE_2D_ARRAY
    cdef int GL_IMAGE_CUBE_MAP_ARRAY
    cdef int GL_IMAGE_2D_MULTISAMPLE
    cdef int GL_IMAGE_2D_MULTISAMPLE_ARRAY
    cdef int GL_INT_IMAGE_1D
    cdef int GL_INT_IMAGE_2D
    cdef int GL_INT_IMAGE_3D
    cdef int GL_INT_IMAGE_2D_RECT
    cdef int GL_INT_IMAGE_CUBE
    cdef int GL_INT_IMAGE_BUFFER
    cdef int GL_INT_IMAGE_1D_ARRAY
    cdef int GL_INT_IMAGE_2D_ARRAY
    cdef int GL_INT_IMAGE_CUBE_MAP_ARRAY
    cdef int GL_INT_IMAGE_2D_MULTISAMPLE
    cdef int GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
    cdef int GL_UNSIGNED_INT_IMAGE_1D
    cdef int GL_UNSIGNED_INT_IMAGE_2D
    cdef int GL_UNSIGNED_INT_IMAGE_3D
    cdef int GL_UNSIGNED_INT_IMAGE_2D_RECT
    cdef int GL_UNSIGNED_INT_IMAGE_CUBE
    cdef int GL_UNSIGNED_INT_IMAGE_BUFFER
    cdef int GL_UNSIGNED_INT_IMAGE_1D_ARRAY
    cdef int GL_UNSIGNED_INT_IMAGE_2D_ARRAY
    cdef int GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
    cdef int GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
    cdef int GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
    cdef int GL_MAX_IMAGE_SAMPLES
    cdef int GL_IMAGE_BINDING_FORMAT
    cdef int GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
    cdef int GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
    cdef int GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
    cdef int GL_MAX_VERTEX_IMAGE_UNIFORMS
    cdef int GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
    cdef int GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
    cdef int GL_MAX_GEOMETRY_IMAGE_UNIFORMS
    cdef int GL_MAX_FRAGMENT_IMAGE_UNIFORMS
    cdef int GL_MAX_COMBINED_IMAGE_UNIFORMS
    cdef int GL_ALL_BARRIER_BITS

    void glBindImageTexture (GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format)
    void glMemoryBarrier (GLbitfield barriers)

    #GL_ARB_shader_objects

    cdef int GL_ARB_shader_objects

    cdef int GL_PROGRAM_OBJECT_ARB
    cdef int GL_SHADER_OBJECT_ARB
    cdef int GL_OBJECT_TYPE_ARB
    cdef int GL_OBJECT_SUBTYPE_ARB
    cdef int GL_FLOAT_VEC2_ARB
    cdef int GL_FLOAT_VEC3_ARB
    cdef int GL_FLOAT_VEC4_ARB
    cdef int GL_INT_VEC2_ARB
    cdef int GL_INT_VEC3_ARB
    cdef int GL_INT_VEC4_ARB
    cdef int GL_BOOL_ARB
    cdef int GL_BOOL_VEC2_ARB
    cdef int GL_BOOL_VEC3_ARB
    cdef int GL_BOOL_VEC4_ARB
    cdef int GL_FLOAT_MAT2_ARB
    cdef int GL_FLOAT_MAT3_ARB
    cdef int GL_FLOAT_MAT4_ARB
    cdef int GL_SAMPLER_1D_ARB
    cdef int GL_SAMPLER_2D_ARB
    cdef int GL_SAMPLER_3D_ARB
    cdef int GL_SAMPLER_CUBE_ARB
    cdef int GL_SAMPLER_1D_SHADOW_ARB
    cdef int GL_SAMPLER_2D_SHADOW_ARB
    cdef int GL_SAMPLER_2D_RECT_ARB
    cdef int GL_SAMPLER_2D_RECT_SHADOW_ARB
    cdef int GL_OBJECT_DELETE_STATUS_ARB
    cdef int GL_OBJECT_COMPILE_STATUS_ARB
    cdef int GL_OBJECT_LINK_STATUS_ARB
    cdef int GL_OBJECT_VALIDATE_STATUS_ARB
    cdef int GL_OBJECT_INFO_LOG_LENGTH_ARB
    cdef int GL_OBJECT_ATTACHED_OBJECTS_ARB
    cdef int GL_OBJECT_ACTIVE_UNIFORMS_ARB
    cdef int GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB
    cdef int GL_OBJECT_SHADER_SOURCE_LENGTH_ARB

    ctypedef char GLcharARB
    ctypedef unsigned int GLhandleARB
    
    ctypedef char *const_GLcharARB_ptr "const GLcharARB*"

    void glAttachObjectARB (GLhandleARB containerObj, GLhandleARB obj)
    void glCompileShaderARB (GLhandleARB shaderObj)
    GLhandleARB glCreateProgramObjectARB ()
    GLhandleARB glCreateShaderObjectARB (GLenum shaderType)
    void glDeleteObjectARB (GLhandleARB obj)
    void glDetachObjectARB (GLhandleARB containerObj, GLhandleARB attachedObj)
    void glGetActiveUniformARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint *size, GLenum *type, GLcharARB *name)
    void glGetAttachedObjectsARB (GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB *obj)
    GLhandleARB glGetHandleARB (GLenum pname)
    void glGetInfoLogARB (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB *infoLog)
    void glGetObjectParameterfvARB (GLhandleARB obj, GLenum pname, GLfloat* params)
    void glGetObjectParameterivARB (GLhandleARB obj, GLenum pname, GLint* params)
    void glGetShaderSourceARB (GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB *source)
    GLint glGetUniformLocationARB (GLhandleARB programObj, const_GLcharARB_ptr name)
    void glGetUniformfvARB (GLhandleARB programObj, GLint location, GLfloat* params)
    void glGetUniformivARB (GLhandleARB programObj, GLint location, GLint* params)
    void glLinkProgramARB (GLhandleARB programObj)
    void glShaderSourceARB (GLhandleARB shaderObj, GLsizei count, const_GLcharARB_ptr* string, GLint* length)
    void glUniform1fARB (GLint location, GLfloat v0)
    void glUniform1fvARB (GLint location, GLsizei count, GLfloat*  value)
    void glUniform1iARB (GLint location, GLint v0)
    void glUniform1ivARB (GLint location, GLsizei count, GLint*  value)
    void glUniform2fARB (GLint location, GLfloat v0, GLfloat v1)
    void glUniform2fvARB (GLint location, GLsizei count, GLfloat*  value)
    void glUniform2iARB (GLint location, GLint v0, GLint v1)
    void glUniform2ivARB (GLint location, GLsizei count, GLint*  value)
    void glUniform3fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
    void glUniform3fvARB (GLint location, GLsizei count, GLfloat*  value)
    void glUniform3iARB (GLint location, GLint v0, GLint v1, GLint v2)
    void glUniform3ivARB (GLint location, GLsizei count, GLint*  value)
    void glUniform4fARB (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
    void glUniform4fvARB (GLint location, GLsizei count, GLfloat*  value)
    void glUniform4iARB (GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
    void glUniform4ivARB (GLint location, GLsizei count, GLint*  value)
    void glUniformMatrix2fvARB (GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glUniformMatrix3fvARB (GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glUniformMatrix4fvARB (GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glUseProgramObjectARB (GLhandleARB programObj)
    void glValidateProgramARB (GLhandleARB programObj)

    #GL_ARB_shader_precision

    cdef int GL_ARB_shader_precision

    #GL_ARB_shader_stencil_export

    cdef int GL_ARB_shader_stencil_export

    #GL_ARB_shader_subroutine

    cdef int GL_ARB_shader_subroutine

    cdef int GL_ACTIVE_SUBROUTINES
    cdef int GL_ACTIVE_SUBROUTINE_UNIFORMS
    cdef int GL_MAX_SUBROUTINES
    cdef int GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
    cdef int GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
    cdef int GL_ACTIVE_SUBROUTINE_MAX_LENGTH
    cdef int GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
    cdef int GL_NUM_COMPATIBLE_SUBROUTINES
    cdef int GL_COMPATIBLE_SUBROUTINES

    void glGetActiveSubroutineName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, char *name)
    void glGetActiveSubroutineUniformName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, char *name)
    void glGetActiveSubroutineUniformiv (GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values)
    void glGetProgramStageiv (GLuint program, GLenum shadertype, GLenum pname, GLint* values)
    GLuint glGetSubroutineIndex (GLuint program, GLenum shadertype, const_char_ptr  name)
    GLint glGetSubroutineUniformLocation (GLuint program, GLenum shadertype, const_char_ptr  name)
    void glGetUniformSubroutineuiv (GLenum shadertype, GLint location, GLuint* params)
    void glUniformSubroutinesuiv (GLenum shadertype, GLsizei count, GLuint* indices)

    #GL_ARB_shader_texture_lod

    cdef int GL_ARB_shader_texture_lod

    #GL_ARB_shading_language_100

    cdef int GL_ARB_shading_language_100

    cdef int GL_SHADING_LANGUAGE_VERSION_ARB

    #GL_ARB_shading_language_420pack

    cdef int GL_ARB_shading_language_420pack

    #GL_ARB_shading_language_include

    cdef int GL_ARB_shading_language_include

    cdef int GL_SHADER_INCLUDE_ARB
    cdef int GL_NAMED_STRING_LENGTH_ARB
    cdef int GL_NAMED_STRING_TYPE_ARB

    void glCompileShaderIncludeARB (GLuint shader, GLsizei count, const_char_ptr * path, GLint* length)
    void glDeleteNamedStringARB (GLint namelen, const_char_ptr  name)
    void glGetNamedStringARB (GLint namelen, const_char_ptr  name, GLsizei bufSize, GLint *stringlen, char *string)
    void glGetNamedStringivARB (GLint namelen, const_char_ptr  name, GLenum pname, GLint *params)
    GLboolean glIsNamedStringARB (GLint namelen, const_char_ptr  name)
    void glNamedStringARB (GLenum type, GLint namelen, const_char_ptr  name, GLint stringlen, const_char_ptr string)

    #GL_ARB_shading_language_packing

    cdef int GL_ARB_shading_language_packing

    #GL_ARB_shadow

    cdef int GL_ARB_shadow

    cdef int GL_TEXTURE_COMPARE_MODE_ARB
    cdef int GL_TEXTURE_COMPARE_FUNC_ARB
    cdef int GL_COMPARE_R_TO_TEXTURE_ARB

    #GL_ARB_shadow_ambient

    cdef int GL_ARB_shadow_ambient

    cdef int GL_TEXTURE_COMPARE_FAIL_VALUE_ARB

    #GL_ARB_sync

    cdef int GL_ARB_sync

    cdef int GL_SYNC_FLUSH_COMMANDS_BIT
    cdef int GL_MAX_SERVER_WAIT_TIMEOUT
    cdef int GL_OBJECT_TYPE
    cdef int GL_SYNC_CONDITION
    cdef int GL_SYNC_STATUS
    cdef int GL_SYNC_FLAGS
    cdef int GL_SYNC_FENCE
    cdef int GL_SYNC_GPU_COMMANDS_COMPLETE
    cdef int GL_UNSIGNALED
    cdef int GL_SIGNALED
    cdef int GL_ALREADY_SIGNALED
    cdef int GL_TIMEOUT_EXPIRED
    cdef int GL_CONDITION_SATISFIED
    cdef int GL_WAIT_FAILED
    cdef int GL_TIMEOUT_IGNORED

    GLenum glClientWaitSync (GLsync GLsync,GLbitfield flags,GLuint64 timeout)
    void glDeleteSync (GLsync GLsync)
    GLsync glFenceSync (GLenum condition,GLbitfield flags)
    void glGetInteger64v (GLenum pname, GLint64* params)
    void glGetSynciv (GLsync GLsync,GLenum pname,GLsizei bufSize,GLsizei* length, GLint *values)
    GLboolean glIsSync (GLsync GLsync)
    void glWaitSync (GLsync GLsync,GLbitfield flags,GLuint64 timeout)

    #GL_ARB_tessellation_shader

    cdef int GL_ARB_tessellation_shader

    cdef int GL_PATCHES
    cdef int GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
    cdef int GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
    cdef int GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
    cdef int GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
    cdef int GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
    cdef int GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
    cdef int GL_PATCH_VERTICES
    cdef int GL_PATCH_DEFAULT_INNER_LEVEL
    cdef int GL_PATCH_DEFAULT_OUTER_LEVEL
    cdef int GL_TESS_CONTROL_OUTPUT_VERTICES
    cdef int GL_TESS_GEN_MODE
    cdef int GL_TESS_GEN_SPACING
    cdef int GL_TESS_GEN_VERTEX_ORDER
    cdef int GL_TESS_GEN_POINT_MODE
    cdef int GL_ISOLINES
    cdef int GL_FRACTIONAL_ODD
    cdef int GL_FRACTIONAL_EVEN
    cdef int GL_MAX_PATCH_VERTICES
    cdef int GL_MAX_TESS_GEN_LEVEL
    cdef int GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
    cdef int GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
    cdef int GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
    cdef int GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
    cdef int GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
    cdef int GL_MAX_TESS_PATCH_COMPONENTS
    cdef int GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
    cdef int GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
    cdef int GL_TESS_EVALUATION_SHADER
    cdef int GL_TESS_CONTROL_SHADER
    cdef int GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
    cdef int GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS

    void glPatchParameterfv (GLenum pname, GLfloat* values)
    void glPatchParameteri (GLenum pname, GLint value)

    #GL_ARB_texture_border_clamp

    cdef int GL_ARB_texture_border_clamp

    cdef int GL_CLAMP_TO_BORDER_ARB

    #GL_ARB_texture_buffer_object

    cdef int GL_ARB_texture_buffer_object

    cdef int GL_TEXTURE_BUFFER_ARB
    cdef int GL_MAX_TEXTURE_BUFFER_SIZE_ARB
    cdef int GL_TEXTURE_BINDING_BUFFER_ARB
    cdef int GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB
    cdef int GL_TEXTURE_BUFFER_FORMAT_ARB

    void glTexBufferARB (GLenum target, GLenum internalformat, GLuint buffer)

    #GL_ARB_texture_buffer_object_rgb32

    cdef int GL_ARB_texture_buffer_object_rgb32

    #GL_ARB_texture_compression

    cdef int GL_ARB_texture_compression

    cdef int GL_COMPRESSED_ALPHA_ARB
    cdef int GL_COMPRESSED_LUMINANCE_ARB
    cdef int GL_COMPRESSED_LUMINANCE_ALPHA_ARB
    cdef int GL_COMPRESSED_INTENSITY_ARB
    cdef int GL_COMPRESSED_RGB_ARB
    cdef int GL_COMPRESSED_RGBA_ARB
    cdef int GL_TEXTURE_COMPRESSION_HINT_ARB
    cdef int GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB
    cdef int GL_TEXTURE_COMPRESSED_ARB
    cdef int GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB
    cdef int GL_COMPRESSED_TEXTURE_FORMATS_ARB

    void glCompressedTexImage1DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTexImage2DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTexImage3DARB (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTexSubImage1DARB (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTexSubImage2DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTexSubImage3DARB (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glGetCompressedTexImageARB (GLenum target, GLint lod, void* img)

    #GL_ARB_texture_compression_bptc

    cdef int GL_ARB_texture_compression_bptc

    cdef int GL_COMPRESSED_RGBA_BPTC_UNORM_ARB
    cdef int GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
    cdef int GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
    cdef int GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB

    #GL_ARB_texture_compression_rgtc

    cdef int GL_ARB_texture_compression_rgtc

    cdef int GL_COMPRESSED_RED_RGTC1
    cdef int GL_COMPRESSED_SIGNED_RED_RGTC1
    cdef int GL_COMPRESSED_RG_RGTC2
    cdef int GL_COMPRESSED_SIGNED_RG_RGTC2

    #GL_ARB_texture_cube_map

    cdef int GL_ARB_texture_cube_map

    cdef int GL_NORMAL_MAP_ARB
    cdef int GL_REFLECTION_MAP_ARB
    cdef int GL_TEXTURE_CUBE_MAP_ARB
    cdef int GL_TEXTURE_BINDING_CUBE_MAP_ARB
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB
    cdef int GL_PROXY_TEXTURE_CUBE_MAP_ARB
    cdef int GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB

    #GL_ARB_texture_cube_map_array

    cdef int GL_ARB_texture_cube_map_array

    cdef int GL_TEXTURE_CUBE_MAP_ARRAY_ARB
    cdef int GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB
    cdef int GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB
    cdef int GL_SAMPLER_CUBE_MAP_ARRAY_ARB
    cdef int GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB
    cdef int GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB
    cdef int GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB

    #GL_ARB_texture_env_add

    cdef int GL_ARB_texture_env_add

    #GL_ARB_texture_env_combine

    cdef int GL_ARB_texture_env_combine

    cdef int GL_SUBTRACT_ARB
    cdef int GL_COMBINE_ARB
    cdef int GL_COMBINE_RGB_ARB
    cdef int GL_COMBINE_ALPHA_ARB
    cdef int GL_RGB_SCALE_ARB
    cdef int GL_ADD_SIGNED_ARB
    cdef int GL_INTERPOLATE_ARB
    cdef int GL_CONSTANT_ARB
    cdef int GL_PRIMARY_COLOR_ARB
    cdef int GL_PREVIOUS_ARB
    cdef int GL_SOURCE0_RGB_ARB
    cdef int GL_SOURCE1_RGB_ARB
    cdef int GL_SOURCE2_RGB_ARB
    cdef int GL_SOURCE0_ALPHA_ARB
    cdef int GL_SOURCE1_ALPHA_ARB
    cdef int GL_SOURCE2_ALPHA_ARB
    cdef int GL_OPERAND0_RGB_ARB
    cdef int GL_OPERAND1_RGB_ARB
    cdef int GL_OPERAND2_RGB_ARB
    cdef int GL_OPERAND0_ALPHA_ARB
    cdef int GL_OPERAND1_ALPHA_ARB
    cdef int GL_OPERAND2_ALPHA_ARB

    #GL_ARB_texture_env_crossbar

    cdef int GL_ARB_texture_env_crossbar

    #GL_ARB_texture_env_dot3

    cdef int GL_ARB_texture_env_dot3

    cdef int GL_DOT3_RGB_ARB
    cdef int GL_DOT3_RGBA_ARB

    #GL_ARB_texture_float

    cdef int GL_ARB_texture_float

    cdef int GL_RGBA32F_ARB
    cdef int GL_RGB32F_ARB
    cdef int GL_ALPHA32F_ARB
    cdef int GL_INTENSITY32F_ARB
    cdef int GL_LUMINANCE32F_ARB
    cdef int GL_LUMINANCE_ALPHA32F_ARB
    cdef int GL_RGBA16F_ARB
    cdef int GL_RGB16F_ARB
    cdef int GL_ALPHA16F_ARB
    cdef int GL_INTENSITY16F_ARB
    cdef int GL_LUMINANCE16F_ARB
    cdef int GL_LUMINANCE_ALPHA16F_ARB
    cdef int GL_TEXTURE_RED_TYPE_ARB
    cdef int GL_TEXTURE_GREEN_TYPE_ARB
    cdef int GL_TEXTURE_BLUE_TYPE_ARB
    cdef int GL_TEXTURE_ALPHA_TYPE_ARB
    cdef int GL_TEXTURE_LUMINANCE_TYPE_ARB
    cdef int GL_TEXTURE_INTENSITY_TYPE_ARB
    cdef int GL_TEXTURE_DEPTH_TYPE_ARB
    cdef int GL_UNSIGNED_NORMALIZED_ARB

    #GL_ARB_texture_gather

    cdef int GL_ARB_texture_gather

    cdef int GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
    cdef int GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
    cdef int GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB

    #GL_ARB_texture_mirrored_repeat

    cdef int GL_ARB_texture_mirrored_repeat

    cdef int GL_MIRRORED_REPEAT_ARB

    #GL_ARB_texture_multisample

    cdef int GL_ARB_texture_multisample

    cdef int GL_SAMPLE_POSITION
    cdef int GL_SAMPLE_MASK
    cdef int GL_SAMPLE_MASK_VALUE
    cdef int GL_MAX_SAMPLE_MASK_WORDS
    cdef int GL_TEXTURE_2D_MULTISAMPLE
    cdef int GL_PROXY_TEXTURE_2D_MULTISAMPLE
    cdef int GL_TEXTURE_2D_MULTISAMPLE_ARRAY
    cdef int GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
    cdef int GL_TEXTURE_BINDING_2D_MULTISAMPLE
    cdef int GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
    cdef int GL_TEXTURE_SAMPLES
    cdef int GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
    cdef int GL_SAMPLER_2D_MULTISAMPLE
    cdef int GL_INT_SAMPLER_2D_MULTISAMPLE
    cdef int GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
    cdef int GL_SAMPLER_2D_MULTISAMPLE_ARRAY
    cdef int GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
    cdef int GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
    cdef int GL_MAX_COLOR_TEXTURE_SAMPLES
    cdef int GL_MAX_DEPTH_TEXTURE_SAMPLES
    cdef int GL_MAX_INTEGER_SAMPLES

    void glGetMultisamplefv (GLenum pname, GLuint index, GLfloat* val)
    void glSampleMaski (GLuint index, GLbitfield mask)
    void glTexImage2DMultisample (GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)
    void glTexImage3DMultisample (GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    #GL_ARB_texture_non_power_of_two

    cdef int GL_ARB_texture_non_power_of_two

    #GL_ARB_texture_query_lod

    cdef int GL_ARB_texture_query_lod

    #GL_ARB_texture_rectangle

    cdef int GL_ARB_texture_rectangle

    cdef int GL_TEXTURE_RECTANGLE_ARB
    cdef int GL_TEXTURE_BINDING_RECTANGLE_ARB
    cdef int GL_PROXY_TEXTURE_RECTANGLE_ARB
    cdef int GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB
    cdef int GL_SAMPLER_2D_RECT_ARB
    cdef int GL_SAMPLER_2D_RECT_SHADOW_ARB

    #GL_ARB_texture_rg

    cdef int GL_ARB_texture_rg

    cdef int GL_RED
    cdef int GL_COMPRESSED_RED
    cdef int GL_COMPRESSED_RG
    cdef int GL_RG
    cdef int GL_RG_INTEGER
    cdef int GL_R8
    cdef int GL_R16
    cdef int GL_RG8
    cdef int GL_RG16
    cdef int GL_R16F
    cdef int GL_R32F
    cdef int GL_RG16F
    cdef int GL_RG32F
    cdef int GL_R8I
    cdef int GL_R8UI
    cdef int GL_R16I
    cdef int GL_R16UI
    cdef int GL_R32I
    cdef int GL_R32UI
    cdef int GL_RG8I
    cdef int GL_RG8UI
    cdef int GL_RG16I
    cdef int GL_RG16UI
    cdef int GL_RG32I
    cdef int GL_RG32UI

    #GL_ARB_texture_rgb10_a2ui

    cdef int GL_ARB_texture_rgb10_a2ui

    cdef int GL_RGB10_A2UI

    #GL_ARB_texture_storage

    cdef int GL_ARB_texture_storage

    cdef int GL_ALPHA8_EXT
    cdef int GL_LUMINANCE8_EXT
    cdef int GL_LUMINANCE8_ALPHA8_EXT
    cdef int GL_TEXTURE_IMMUTABLE_FORMAT

    void glTexStorage1D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)
    void glTexStorage2D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)
    void glTexStorage3D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)
    void glTextureStorage1DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)
    void glTextureStorage2DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)
    void glTextureStorage3DEXT (GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

    #GL_ARB_texture_swizzle

    cdef int GL_ARB_texture_swizzle

    cdef int GL_TEXTURE_SWIZZLE_R
    cdef int GL_TEXTURE_SWIZZLE_G
    cdef int GL_TEXTURE_SWIZZLE_B
    cdef int GL_TEXTURE_SWIZZLE_A
    cdef int GL_TEXTURE_SWIZZLE_RGBA

    #GL_ARB_timer_query

    cdef int GL_ARB_timer_query

    cdef int GL_TIME_ELAPSED
    cdef int GL_TIMESTAMP

    void glGetQueryObjecti64v (GLuint id, GLenum pname, GLint64* params)
    void glGetQueryObjectui64v (GLuint id, GLenum pname, GLuint64* params)
    void glQueryCounter (GLuint id, GLenum target)

    #GL_ARB_transform_feedback2

    cdef int GL_ARB_transform_feedback2

    cdef int GL_TRANSFORM_FEEDBACK
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
    cdef int GL_TRANSFORM_FEEDBACK_BINDING

    void glBindTransformFeedback (GLenum target, GLuint id)
    void glDeleteTransformFeedbacks (GLsizei n, GLuint* ids)
    void glDrawTransformFeedback (GLenum mode, GLuint id)
    void glGenTransformFeedbacks (GLsizei n, GLuint* ids)
    GLboolean glIsTransformFeedback (GLuint id)
    void glPauseTransformFeedback ()
    void glResumeTransformFeedback ()

    #GL_ARB_transform_feedback3

    cdef int GL_ARB_transform_feedback3

    cdef int GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
    cdef int GL_MAX_VERTEX_STREAMS

    void glBeginQueryIndexed (GLenum target, GLuint index, GLuint id)
    void glDrawTransformFeedbackStream (GLenum mode, GLuint id, GLuint stream)
    void glEndQueryIndexed (GLenum target, GLuint index)
    void glGetQueryIndexediv (GLenum target, GLuint index, GLenum pname, GLint* params)

    #GL_ARB_transform_feedback_instanced

    cdef int GL_ARB_transform_feedback_instanced

    void glDrawTransformFeedbackInstanced (GLenum mode, GLuint id, GLsizei primcount)
    void glDrawTransformFeedbackStreamInstanced (GLenum mode, GLuint id, GLuint stream, GLsizei primcount)

    #GL_ARB_transpose_matrix

    cdef int GL_ARB_transpose_matrix

    cdef int GL_TRANSPOSE_MODELVIEW_MATRIX_ARB
    cdef int GL_TRANSPOSE_PROJECTION_MATRIX_ARB
    cdef int GL_TRANSPOSE_TEXTURE_MATRIX_ARB
    cdef int GL_TRANSPOSE_COLOR_MATRIX_ARB

    void glLoadTransposeMatrixdARB (GLdouble m[16])
    void glLoadTransposeMatrixfARB (GLfloat m[16])
    void glMultTransposeMatrixdARB (GLdouble m[16])
    void glMultTransposeMatrixfARB (GLfloat m[16])

    #GL_ARB_uniform_buffer_object

    cdef int GL_ARB_uniform_buffer_object

    cdef int GL_UNIFORM_BUFFER
    cdef int GL_UNIFORM_BUFFER_BINDING
    cdef int GL_UNIFORM_BUFFER_START
    cdef int GL_UNIFORM_BUFFER_SIZE
    cdef int GL_MAX_VERTEX_UNIFORM_BLOCKS
    cdef int GL_MAX_GEOMETRY_UNIFORM_BLOCKS
    cdef int GL_MAX_FRAGMENT_UNIFORM_BLOCKS
    cdef int GL_MAX_COMBINED_UNIFORM_BLOCKS
    cdef int GL_MAX_UNIFORM_BUFFER_BINDINGS
    cdef int GL_MAX_UNIFORM_BLOCK_SIZE
    cdef int GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
    cdef int GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
    cdef int GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
    cdef int GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
    cdef int GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
    cdef int GL_ACTIVE_UNIFORM_BLOCKS
    cdef int GL_UNIFORM_TYPE
    cdef int GL_UNIFORM_SIZE
    cdef int GL_UNIFORM_NAME_LENGTH
    cdef int GL_UNIFORM_BLOCK_INDEX
    cdef int GL_UNIFORM_OFFSET
    cdef int GL_UNIFORM_ARRAY_STRIDE
    cdef int GL_UNIFORM_MATRIX_STRIDE
    cdef int GL_UNIFORM_IS_ROW_MAJOR
    cdef int GL_UNIFORM_BLOCK_BINDING
    cdef int GL_UNIFORM_BLOCK_DATA_SIZE
    cdef int GL_UNIFORM_BLOCK_NAME_LENGTH
    cdef int GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
    cdef int GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
    cdef int GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
    cdef int GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
    cdef int GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
    cdef int GL_INVALID_INDEX

    void glBindBufferBase (GLenum target, GLuint index, GLuint buffer)
    void glBindBufferRange (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)
    void glGetActiveUniformBlockName (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, char* uniformBlockName)
    void glGetActiveUniformBlockiv (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params)
    void glGetActiveUniformName (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, char* uniformName)
    void glGetActiveUniformsiv (GLuint program, GLsizei uniformCount, GLuint* uniformIndices, GLenum pname, GLint* params)
    void glGetIntegeri_v (GLenum target, GLuint index, GLint* data)
    GLuint glGetUniformBlockIndex (GLuint program, const_char_ptr  uniformBlockName)
    void glGetUniformIndices (GLuint program, GLsizei uniformCount, const_char_ptr * uniformNames, GLuint* uniformIndices)
    void glUniformBlockBinding (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding)

    #GL_ARB_vertex_array_bgra

    cdef int GL_ARB_vertex_array_bgra

    cdef int GL_BGRA

    #GL_ARB_vertex_array_object

    cdef int GL_ARB_vertex_array_object

    cdef int GL_VERTEX_ARRAY_BINDING

    void glBindVertexArray (GLuint array)
    void glDeleteVertexArrays (GLsizei n, GLuint* arrays)
    void glGenVertexArrays (GLsizei n, GLuint* arrays)
    GLboolean glIsVertexArray (GLuint array)

    #GL_ARB_vertex_attrib_64bit

    cdef int GL_ARB_vertex_attrib_64bit

    cdef int GL_DOUBLE_MAT2
    cdef int GL_DOUBLE_MAT3
    cdef int GL_DOUBLE_MAT4
    cdef int GL_DOUBLE_VEC2
    cdef int GL_DOUBLE_VEC3
    cdef int GL_DOUBLE_VEC4

    void glGetVertexAttribLdv (GLuint index, GLenum pname, GLdouble* params)
    void glVertexAttribL1d (GLuint index, GLdouble x)
    void glVertexAttribL1dv (GLuint index, GLdouble* v)
    void glVertexAttribL2d (GLuint index, GLdouble x, GLdouble y)
    void glVertexAttribL2dv (GLuint index, GLdouble*  v)
    void glVertexAttribL3d (GLuint index, GLdouble x, GLdouble y, GLdouble z)
    void glVertexAttribL3dv (GLuint index, GLdouble*  v)
    void glVertexAttribL4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glVertexAttribL4dv (GLuint index, GLdouble*  v)
    void glVertexAttribLPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const_void_ptr  pointer)

    #GL_ARB_vertex_blend

    cdef int GL_ARB_vertex_blend

    cdef int GL_MODELVIEW0_ARB
    cdef int GL_MODELVIEW1_ARB
    cdef int GL_MAX_VERTEX_UNITS_ARB
    cdef int GL_ACTIVE_VERTEX_UNITS_ARB
    cdef int GL_WEIGHT_SUM_UNITY_ARB
    cdef int GL_VERTEX_BLEND_ARB
    cdef int GL_CURRENT_WEIGHT_ARB
    cdef int GL_WEIGHT_ARRAY_TYPE_ARB
    cdef int GL_WEIGHT_ARRAY_STRIDE_ARB
    cdef int GL_WEIGHT_ARRAY_SIZE_ARB
    cdef int GL_WEIGHT_ARRAY_POINTER_ARB
    cdef int GL_WEIGHT_ARRAY_ARB
    cdef int GL_MODELVIEW2_ARB
    cdef int GL_MODELVIEW3_ARB
    cdef int GL_MODELVIEW4_ARB
    cdef int GL_MODELVIEW5_ARB
    cdef int GL_MODELVIEW6_ARB
    cdef int GL_MODELVIEW7_ARB
    cdef int GL_MODELVIEW8_ARB
    cdef int GL_MODELVIEW9_ARB
    cdef int GL_MODELVIEW10_ARB
    cdef int GL_MODELVIEW11_ARB
    cdef int GL_MODELVIEW12_ARB
    cdef int GL_MODELVIEW13_ARB
    cdef int GL_MODELVIEW14_ARB
    cdef int GL_MODELVIEW15_ARB
    cdef int GL_MODELVIEW16_ARB
    cdef int GL_MODELVIEW17_ARB
    cdef int GL_MODELVIEW18_ARB
    cdef int GL_MODELVIEW19_ARB
    cdef int GL_MODELVIEW20_ARB
    cdef int GL_MODELVIEW21_ARB
    cdef int GL_MODELVIEW22_ARB
    cdef int GL_MODELVIEW23_ARB
    cdef int GL_MODELVIEW24_ARB
    cdef int GL_MODELVIEW25_ARB
    cdef int GL_MODELVIEW26_ARB
    cdef int GL_MODELVIEW27_ARB
    cdef int GL_MODELVIEW28_ARB
    cdef int GL_MODELVIEW29_ARB
    cdef int GL_MODELVIEW30_ARB
    cdef int GL_MODELVIEW31_ARB

    void glVertexBlendARB (GLint count)
    void glWeightPointerARB (GLint size, GLenum type, GLsizei stride, GLvoid *pointer)
    void glWeightbvARB (GLint size, GLbyte *weights)
    void glWeightdvARB (GLint size, GLdouble *weights)
    void glWeightfvARB (GLint size, GLfloat *weights)
    void glWeightivARB (GLint size, GLint *weights)
    void glWeightsvARB (GLint size, GLshort *weights)
    void glWeightubvARB (GLint size, GLubyte *weights)
    void glWeightuivARB (GLint size, GLuint *weights)
    void glWeightusvARB (GLint size, GLushort *weights)

    #GL_ARB_vertex_buffer_object

    cdef int GL_ARB_vertex_buffer_object

    cdef int GL_BUFFER_SIZE_ARB
    cdef int GL_BUFFER_USAGE_ARB
    cdef int GL_ARRAY_BUFFER_ARB
    cdef int GL_ELEMENT_ARRAY_BUFFER_ARB
    cdef int GL_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_VERTEX_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_NORMAL_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_COLOR_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_INDEX_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB
    cdef int GL_READ_ONLY_ARB
    cdef int GL_WRITE_ONLY_ARB
    cdef int GL_READ_WRITE_ARB
    cdef int GL_BUFFER_ACCESS_ARB
    cdef int GL_BUFFER_MAPPED_ARB
    cdef int GL_BUFFER_MAP_POINTER_ARB
    cdef int GL_STREAM_DRAW_ARB
    cdef int GL_STREAM_READ_ARB
    cdef int GL_STREAM_COPY_ARB
    cdef int GL_STATIC_DRAW_ARB
    cdef int GL_STATIC_READ_ARB
    cdef int GL_STATIC_COPY_ARB
    cdef int GL_DYNAMIC_DRAW_ARB
    cdef int GL_DYNAMIC_READ_ARB
    cdef int GL_DYNAMIC_COPY_ARB

    ctypedef Py_ssize_t GLintptrARB
    ctypedef Py_ssize_t GLsizeiptrARB

    void glBindBufferARB (GLenum target, GLuint buffer)
    void glBufferDataARB (GLenum target, GLsizeiptrARB size, GLvoid *data, GLenum usage)
    void glBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid *data)
    void glDeleteBuffersARB (GLsizei n, GLuint* buffers)
    void glGenBuffersARB (GLsizei n, GLuint* buffers)
    void glGetBufferParameterivARB (GLenum target, GLenum pname, GLint* params)
    void glGetBufferPointervARB (GLenum target, GLenum pname, GLvoid** params)
    void glGetBufferSubDataARB (GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid* data)
    GLboolean glIsBufferARB (GLuint buffer)
    GLvoid * glMapBufferARB (GLenum target, GLenum access)
    GLboolean glUnmapBufferARB (GLenum target)

    #GL_ARB_vertex_program

    cdef int GL_ARB_vertex_program

    cdef int GL_COLOR_SUM_ARB
    cdef int GL_VERTEX_PROGRAM_ARB
    cdef int GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB
    cdef int GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB
    cdef int GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB
    cdef int GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB
    cdef int GL_CURRENT_VERTEX_ATTRIB_ARB
    cdef int GL_PROGRAM_LENGTH_ARB
    cdef int GL_PROGRAM_STRING_ARB
    cdef int GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB
    cdef int GL_MAX_PROGRAM_MATRICES_ARB
    cdef int GL_CURRENT_MATRIX_STACK_DEPTH_ARB
    cdef int GL_CURRENT_MATRIX_ARB
    cdef int GL_VERTEX_PROGRAM_POINT_SIZE_ARB
    cdef int GL_VERTEX_PROGRAM_TWO_SIDE_ARB
    cdef int GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB
    cdef int GL_PROGRAM_ERROR_POSITION_ARB
    cdef int GL_PROGRAM_BINDING_ARB
    cdef int GL_MAX_VERTEX_ATTRIBS_ARB
    cdef int GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB
    cdef int GL_PROGRAM_ERROR_STRING_ARB
    cdef int GL_PROGRAM_FORMAT_ASCII_ARB
    cdef int GL_PROGRAM_FORMAT_ARB
    cdef int GL_PROGRAM_INSTRUCTIONS_ARB
    cdef int GL_MAX_PROGRAM_INSTRUCTIONS_ARB
    cdef int GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB
    cdef int GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB
    cdef int GL_PROGRAM_TEMPORARIES_ARB
    cdef int GL_MAX_PROGRAM_TEMPORARIES_ARB
    cdef int GL_PROGRAM_NATIVE_TEMPORARIES_ARB
    cdef int GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB
    cdef int GL_PROGRAM_PARAMETERS_ARB
    cdef int GL_MAX_PROGRAM_PARAMETERS_ARB
    cdef int GL_PROGRAM_NATIVE_PARAMETERS_ARB
    cdef int GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB
    cdef int GL_PROGRAM_ATTRIBS_ARB
    cdef int GL_MAX_PROGRAM_ATTRIBS_ARB
    cdef int GL_PROGRAM_NATIVE_ATTRIBS_ARB
    cdef int GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB
    cdef int GL_PROGRAM_ADDRESS_REGISTERS_ARB
    cdef int GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB
    cdef int GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
    cdef int GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
    cdef int GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB
    cdef int GL_MAX_PROGRAM_ENV_PARAMETERS_ARB
    cdef int GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB
    cdef int GL_TRANSPOSE_CURRENT_MATRIX_ARB
    cdef int GL_MATRIX0_ARB
    cdef int GL_MATRIX1_ARB
    cdef int GL_MATRIX2_ARB
    cdef int GL_MATRIX3_ARB
    cdef int GL_MATRIX4_ARB
    cdef int GL_MATRIX5_ARB
    cdef int GL_MATRIX6_ARB
    cdef int GL_MATRIX7_ARB
    cdef int GL_MATRIX8_ARB
    cdef int GL_MATRIX9_ARB
    cdef int GL_MATRIX10_ARB
    cdef int GL_MATRIX11_ARB
    cdef int GL_MATRIX12_ARB
    cdef int GL_MATRIX13_ARB
    cdef int GL_MATRIX14_ARB
    cdef int GL_MATRIX15_ARB
    cdef int GL_MATRIX16_ARB
    cdef int GL_MATRIX17_ARB
    cdef int GL_MATRIX18_ARB
    cdef int GL_MATRIX19_ARB
    cdef int GL_MATRIX20_ARB
    cdef int GL_MATRIX21_ARB
    cdef int GL_MATRIX22_ARB
    cdef int GL_MATRIX23_ARB
    cdef int GL_MATRIX24_ARB
    cdef int GL_MATRIX25_ARB
    cdef int GL_MATRIX26_ARB
    cdef int GL_MATRIX27_ARB
    cdef int GL_MATRIX28_ARB
    cdef int GL_MATRIX29_ARB
    cdef int GL_MATRIX30_ARB
    cdef int GL_MATRIX31_ARB

    void glBindProgramARB (GLenum target, GLuint program)
    void glDeleteProgramsARB (GLsizei n, GLuint* programs)
    void glDisableVertexAttribArrayARB (GLuint index)
    void glEnableVertexAttribArrayARB (GLuint index)
    void glGenProgramsARB (GLsizei n, GLuint* programs)
    void glGetProgramEnvParameterdvARB (GLenum target, GLuint index, GLdouble* params)
    void glGetProgramEnvParameterfvARB (GLenum target, GLuint index, GLfloat* params)
    void glGetProgramLocalParameterdvARB (GLenum target, GLuint index, GLdouble* params)
    void glGetProgramLocalParameterfvARB (GLenum target, GLuint index, GLfloat* params)
    void glGetProgramStringARB (GLenum target, GLenum pname, void* string)
    void glGetProgramivARB (GLenum target, GLenum pname, GLint* params)
    void glGetVertexAttribPointervARB (GLuint index, GLenum pname, GLvoid** pointer)
    void glGetVertexAttribdvARB (GLuint index, GLenum pname, GLdouble* params)
    void glGetVertexAttribfvARB (GLuint index, GLenum pname, GLfloat* params)
    void glGetVertexAttribivARB (GLuint index, GLenum pname, GLint* params)
    GLboolean glIsProgramARB (GLuint program)
    void glProgramEnvParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glProgramEnvParameter4dvARB (GLenum target, GLuint index, GLdouble*  params)
    void glProgramEnvParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glProgramEnvParameter4fvARB (GLenum target, GLuint index, GLfloat*  params)
    void glProgramLocalParameter4dARB (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glProgramLocalParameter4dvARB (GLenum target, GLuint index, GLdouble*  params)
    void glProgramLocalParameter4fARB (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glProgramLocalParameter4fvARB (GLenum target, GLuint index, GLfloat*  params)
    void glProgramStringARB (GLenum target, GLenum format, GLsizei len, const_void_ptr  string)
    void glVertexAttrib1dARB (GLuint index, GLdouble x)
    void glVertexAttrib1dvARB (GLuint index, GLdouble*  v)
    void glVertexAttrib1fARB (GLuint index, GLfloat x)
    void glVertexAttrib1fvARB (GLuint index, GLfloat*  v)
    void glVertexAttrib1sARB (GLuint index, GLshort x)
    void glVertexAttrib1svARB (GLuint index, GLshort*  v)
    void glVertexAttrib2dARB (GLuint index, GLdouble x, GLdouble y)
    void glVertexAttrib2dvARB (GLuint index, GLdouble*  v)
    void glVertexAttrib2fARB (GLuint index, GLfloat x, GLfloat y)
    void glVertexAttrib2fvARB (GLuint index, GLfloat*  v)
    void glVertexAttrib2sARB (GLuint index, GLshort x, GLshort y)
    void glVertexAttrib2svARB (GLuint index, GLshort*  v)
    void glVertexAttrib3dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z)
    void glVertexAttrib3dvARB (GLuint index, GLdouble*  v)
    void glVertexAttrib3fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z)
    void glVertexAttrib3fvARB (GLuint index, GLfloat*  v)
    void glVertexAttrib3sARB (GLuint index, GLshort x, GLshort y, GLshort z)
    void glVertexAttrib3svARB (GLuint index, GLshort*  v)
    void glVertexAttrib4NbvARB (GLuint index, GLbyte*  v)
    void glVertexAttrib4NivARB (GLuint index, GLint*  v)
    void glVertexAttrib4NsvARB (GLuint index, GLshort*  v)
    void glVertexAttrib4NubARB (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)
    void glVertexAttrib4NubvARB (GLuint index, GLubyte*  v)
    void glVertexAttrib4NuivARB (GLuint index, GLuint* v)
    void glVertexAttrib4NusvARB (GLuint index, GLushort* v)
    void glVertexAttrib4bvARB (GLuint index, GLbyte*  v)
    void glVertexAttrib4dARB (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glVertexAttrib4dvARB (GLuint index, GLdouble*  v)
    void glVertexAttrib4fARB (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glVertexAttrib4fvARB (GLuint index, GLfloat*  v)
    void glVertexAttrib4ivARB (GLuint index, GLint*  v)
    void glVertexAttrib4sARB (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)
    void glVertexAttrib4svARB (GLuint index, GLshort*  v)
    void glVertexAttrib4ubvARB (GLuint index, GLubyte*  v)
    void glVertexAttrib4uivARB (GLuint index, GLuint* v)
    void glVertexAttrib4usvARB (GLuint index, GLushort* v)
    void glVertexAttribPointerARB (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const_void_ptr  pointer)

    #GL_ARB_vertex_shader

    cdef int GL_ARB_vertex_shader

    cdef int GL_VERTEX_SHADER_ARB
    cdef int GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB
    cdef int GL_MAX_VARYING_FLOATS_ARB
    cdef int GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
    cdef int GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB
    cdef int GL_OBJECT_ACTIVE_ATTRIBUTES_ARB
    cdef int GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB

    void glBindAttribLocationARB (GLhandleARB programObj, GLuint index, const_GLcharARB_ptr name)
    void glGetActiveAttribARB (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint *size, GLenum *type, GLcharARB *name)
    GLint glGetAttribLocationARB (GLhandleARB programObj, const_GLcharARB_ptr name)

    #GL_ARB_vertex_type_2_10_10_10_rev

    cdef int GL_ARB_vertex_type_2_10_10_10_rev

    cdef int GL_UNSIGNED_INT_2_10_10_10_REV
    cdef int GL_INT_2_10_10_10_REV

    void glColorP3ui (GLenum type, GLuint color)
    void glColorP3uiv (GLenum type, GLuint* color)
    void glColorP4ui (GLenum type, GLuint color)
    void glColorP4uiv (GLenum type, GLuint* color)
    void glMultiTexCoordP1ui (GLenum texture, GLenum type, GLuint coords)
    void glMultiTexCoordP1uiv (GLenum texture, GLenum type, GLuint* coords)
    void glMultiTexCoordP2ui (GLenum texture, GLenum type, GLuint coords)
    void glMultiTexCoordP2uiv (GLenum texture, GLenum type, GLuint* coords)
    void glMultiTexCoordP3ui (GLenum texture, GLenum type, GLuint coords)
    void glMultiTexCoordP3uiv (GLenum texture, GLenum type, GLuint* coords)
    void glMultiTexCoordP4ui (GLenum texture, GLenum type, GLuint coords)
    void glMultiTexCoordP4uiv (GLenum texture, GLenum type, GLuint* coords)
    void glNormalP3ui (GLenum type, GLuint coords)
    void glNormalP3uiv (GLenum type, GLuint* coords)
    void glSecondaryColorP3ui (GLenum type, GLuint color)
    void glSecondaryColorP3uiv (GLenum type, GLuint* color)
    void glTexCoordP1ui (GLenum type, GLuint coords)
    void glTexCoordP1uiv (GLenum type, GLuint* coords)
    void glTexCoordP2ui (GLenum type, GLuint coords)
    void glTexCoordP2uiv (GLenum type, GLuint* coords)
    void glTexCoordP3ui (GLenum type, GLuint coords)
    void glTexCoordP3uiv (GLenum type, GLuint* coords)
    void glTexCoordP4ui (GLenum type, GLuint coords)
    void glTexCoordP4uiv (GLenum type, GLuint* coords)
    void glVertexAttribP1ui (GLuint index, GLenum type, GLboolean normalized, GLuint value)
    void glVertexAttribP1uiv (GLuint index, GLenum type, GLboolean normalized, GLuint* value)
    void glVertexAttribP2ui (GLuint index, GLenum type, GLboolean normalized, GLuint value)
    void glVertexAttribP2uiv (GLuint index, GLenum type, GLboolean normalized, GLuint* value)
    void glVertexAttribP3ui (GLuint index, GLenum type, GLboolean normalized, GLuint value)
    void glVertexAttribP3uiv (GLuint index, GLenum type, GLboolean normalized, GLuint* value)
    void glVertexAttribP4ui (GLuint index, GLenum type, GLboolean normalized, GLuint value)
    void glVertexAttribP4uiv (GLuint index, GLenum type, GLboolean normalized, GLuint* value)
    void glVertexP2ui (GLenum type, GLuint value)
    void glVertexP2uiv (GLenum type, GLuint* value)
    void glVertexP3ui (GLenum type, GLuint value)
    void glVertexP3uiv (GLenum type, GLuint* value)
    void glVertexP4ui (GLenum type, GLuint value)
    void glVertexP4uiv (GLenum type, GLuint* value)

    #GL_ARB_viewport_array

    cdef int GL_ARB_viewport_array

    cdef int GL_DEPTH_RANGE
    cdef int GL_VIEWPORT
    cdef int GL_SCISSOR_BOX
    cdef int GL_SCISSOR_TEST
    cdef int GL_MAX_VIEWPORTS
    cdef int GL_VIEWPORT_SUBPIXEL_BITS
    cdef int GL_VIEWPORT_BOUNDS_RANGE
    cdef int GL_LAYER_PROVOKING_VERTEX
    cdef int GL_VIEWPORT_INDEX_PROVOKING_VERTEX
    cdef int GL_UNDEFINED_VERTEX
    cdef int GL_FIRST_VERTEX_CONVENTION
    cdef int GL_LAST_VERTEX_CONVENTION
    cdef int GL_PROVOKING_VERTEX

    void glDepthRangeArrayv (GLuint first, GLsizei count, GLclampd* v)
    void glDepthRangeIndexed (GLuint index, GLclampd n, GLclampd f)
    void glGetDoublei_v (GLenum target, GLuint index, GLdouble* data)
    void glGetFloati_v (GLenum target, GLuint index, GLfloat* data)
    void glScissorArrayv (GLuint first, GLsizei count, GLint* v)
    void glScissorIndexed (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height)
    void glScissorIndexedv (GLuint index, GLint*  v)
    void glViewportArrayv (GLuint first, GLsizei count, GLfloat*  v)
    void glViewportIndexedf (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h)
    void glViewportIndexedfv (GLuint index, GLfloat*  v)

    #GL_ARB_window_pos

    cdef int GL_ARB_window_pos

    void glWindowPos2dARB (GLdouble x, GLdouble y)
    void glWindowPos2dvARB (GLdouble*  p)
    void glWindowPos2fARB (GLfloat x, GLfloat y)
    void glWindowPos2fvARB (GLfloat*  p)
    void glWindowPos2iARB (GLint x, GLint y)
    void glWindowPos2ivARB (GLint*  p)
    void glWindowPos2sARB (GLshort x, GLshort y)
    void glWindowPos2svARB (GLshort*  p)
    void glWindowPos3dARB (GLdouble x, GLdouble y, GLdouble z)
    void glWindowPos3dvARB (GLdouble*  p)
    void glWindowPos3fARB (GLfloat x, GLfloat y, GLfloat z)
    void glWindowPos3fvARB (GLfloat*  p)
    void glWindowPos3iARB (GLint x, GLint y, GLint z)
    void glWindowPos3ivARB (GLint*  p)
    void glWindowPos3sARB (GLshort x, GLshort y, GLshort z)
    void glWindowPos3svARB (GLshort*  p)

    #GL_ATIX_point_sprites

    cdef int GL_ATIX_point_sprites

    cdef int GL_TEXTURE_POINT_MODE_ATIX
    cdef int GL_TEXTURE_POINT_ONE_COORD_ATIX
    cdef int GL_TEXTURE_POINT_SPRITE_ATIX
    cdef int GL_POINT_SPRITE_CULL_MODE_ATIX
    cdef int GL_POINT_SPRITE_CULL_CENTER_ATIX
    cdef int GL_POINT_SPRITE_CULL_CLIP_ATIX

    #GL_ATIX_texture_env_combine3

    cdef int GL_ATIX_texture_env_combine3

    cdef int GL_MODULATE_ADD_ATIX
    cdef int GL_MODULATE_SIGNED_ADD_ATIX
    cdef int GL_MODULATE_SUBTRACT_ATIX

    #GL_ATIX_texture_env_route

    cdef int GL_ATIX_texture_env_route

    cdef int GL_SECONDARY_COLOR_ATIX
    cdef int GL_TEXTURE_OUTPUT_RGB_ATIX
    cdef int GL_TEXTURE_OUTPUT_ALPHA_ATIX

    #GL_ATIX_vertex_shader_output_point_size

    cdef int GL_ATIX_vertex_shader_output_point_size

    cdef int GL_OUTPUT_POINT_SIZE_ATIX

    #GL_ATI_draw_buffers

    cdef int GL_ATI_draw_buffers

    cdef int GL_MAX_DRAW_BUFFERS_ATI
    cdef int GL_DRAW_BUFFER0_ATI
    cdef int GL_DRAW_BUFFER1_ATI
    cdef int GL_DRAW_BUFFER2_ATI
    cdef int GL_DRAW_BUFFER3_ATI
    cdef int GL_DRAW_BUFFER4_ATI
    cdef int GL_DRAW_BUFFER5_ATI
    cdef int GL_DRAW_BUFFER6_ATI
    cdef int GL_DRAW_BUFFER7_ATI
    cdef int GL_DRAW_BUFFER8_ATI
    cdef int GL_DRAW_BUFFER9_ATI
    cdef int GL_DRAW_BUFFER10_ATI
    cdef int GL_DRAW_BUFFER11_ATI
    cdef int GL_DRAW_BUFFER12_ATI
    cdef int GL_DRAW_BUFFER13_ATI
    cdef int GL_DRAW_BUFFER14_ATI
    cdef int GL_DRAW_BUFFER15_ATI

    void glDrawBuffersATI (GLsizei n, GLenum bufs)

    #GL_ATI_element_array

    cdef int GL_ATI_element_array

    cdef int GL_ELEMENT_ARRAY_ATI
    cdef int GL_ELEMENT_ARRAY_TYPE_ATI
    cdef int GL_ELEMENT_ARRAY_POINTER_ATI

    void glDrawElementArrayATI (GLenum mode, GLsizei count)
    void glDrawRangeElementArrayATI (GLenum mode, GLuint start, GLuint end, GLsizei count)
    void glElementPointerATI (GLenum type, const_void_ptr  pointer)

    #GL_ATI_envmap_bumpmap

    cdef int GL_ATI_envmap_bumpmap

    cdef int GL_BUMP_ROT_MATRIX_ATI
    cdef int GL_BUMP_ROT_MATRIX_SIZE_ATI
    cdef int GL_BUMP_NUM_TEX_UNITS_ATI
    cdef int GL_BUMP_TEX_UNITS_ATI
    cdef int GL_DUDV_ATI
    cdef int GL_DU8DV8_ATI
    cdef int GL_BUMP_ENVMAP_ATI
    cdef int GL_BUMP_TARGET_ATI

    void glGetTexBumpParameterfvATI (GLenum pname, GLfloat *param)
    void glGetTexBumpParameterivATI (GLenum pname, GLint *param)
    void glTexBumpParameterfvATI (GLenum pname, GLfloat *param)
    void glTexBumpParameterivATI (GLenum pname, GLint *param)

    #GL_ATI_fragment_shader

    cdef int GL_ATI_fragment_shader

    cdef int GL_RED_BIT_ATI
    cdef int GL_2X_BIT_ATI
    cdef int GL_4X_BIT_ATI
    cdef int GL_GREEN_BIT_ATI
    cdef int GL_COMP_BIT_ATI
    cdef int GL_BLUE_BIT_ATI
    cdef int GL_8X_BIT_ATI
    cdef int GL_NEGATE_BIT_ATI
    cdef int GL_BIAS_BIT_ATI
    cdef int GL_HALF_BIT_ATI
    cdef int GL_QUARTER_BIT_ATI
    cdef int GL_EIGHTH_BIT_ATI
    cdef int GL_SATURATE_BIT_ATI
    cdef int GL_FRAGMENT_SHADER_ATI
    cdef int GL_REG_0_ATI
    cdef int GL_REG_1_ATI
    cdef int GL_REG_2_ATI
    cdef int GL_REG_3_ATI
    cdef int GL_REG_4_ATI
    cdef int GL_REG_5_ATI
    cdef int GL_CON_0_ATI
    cdef int GL_CON_1_ATI
    cdef int GL_CON_2_ATI
    cdef int GL_CON_3_ATI
    cdef int GL_CON_4_ATI
    cdef int GL_CON_5_ATI
    cdef int GL_CON_6_ATI
    cdef int GL_CON_7_ATI
    cdef int GL_MOV_ATI
    cdef int GL_ADD_ATI
    cdef int GL_MUL_ATI
    cdef int GL_SUB_ATI
    cdef int GL_DOT3_ATI
    cdef int GL_DOT4_ATI
    cdef int GL_MAD_ATI
    cdef int GL_LERP_ATI
    cdef int GL_CND_ATI
    cdef int GL_CND0_ATI
    cdef int GL_DOT2_ADD_ATI
    cdef int GL_SECONDARY_INTERPOLATOR_ATI
    cdef int GL_NUM_FRAGMENT_REGISTERS_ATI
    cdef int GL_NUM_FRAGMENT_CONSTANTS_ATI
    cdef int GL_NUM_PASSES_ATI
    cdef int GL_NUM_INSTRUCTIONS_PER_PASS_ATI
    cdef int GL_NUM_INSTRUCTIONS_TOTAL_ATI
    cdef int GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI
    cdef int GL_NUM_LOOPBACK_COMPONENTS_ATI
    cdef int GL_COLOR_ALPHA_PAIRING_ATI
    cdef int GL_SWIZZLE_STR_ATI
    cdef int GL_SWIZZLE_STQ_ATI
    cdef int GL_SWIZZLE_STR_DR_ATI
    cdef int GL_SWIZZLE_STQ_DQ_ATI
    cdef int GL_SWIZZLE_STRQ_ATI
    cdef int GL_SWIZZLE_STRQ_DQ_ATI

    void glAlphaFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)
    void glAlphaFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)
    void glAlphaFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)
    void glBeginFragmentShaderATI ()
    void glBindFragmentShaderATI (GLuint id)
    void glColorFragmentOp1ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)
    void glColorFragmentOp2ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)
    void glColorFragmentOp3ATI (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)
    void glDeleteFragmentShaderATI (GLuint id)
    void glEndFragmentShaderATI ()
    GLuint glGenFragmentShadersATI (GLuint range)
    void glPassTexCoordATI (GLuint dst, GLuint coord, GLenum swizzle)
    void glSampleMapATI (GLuint dst, GLuint interp, GLenum swizzle)
    void glSetFragmentShaderConstantATI (GLuint dst, GLfloat*  value)

    #GL_ATI_map_object_buffer

    cdef int GL_ATI_map_object_buffer

    void* glMapObjectBufferATI (GLuint buffer)
    void glUnmapObjectBufferATI (GLuint buffer)

    #GL_ATI_meminfo

    cdef int GL_ATI_meminfo

    cdef int GL_VBO_FREE_MEMORY_ATI
    cdef int GL_TEXTURE_FREE_MEMORY_ATI
    cdef int GL_RENDERBUFFER_FREE_MEMORY_ATI

    #GL_ATI_pn_triangles

    cdef int GL_ATI_pn_triangles

    cdef int GL_PN_TRIANGLES_ATI
    cdef int GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI
    cdef int GL_PN_TRIANGLES_POINT_MODE_ATI
    cdef int GL_PN_TRIANGLES_NORMAL_MODE_ATI
    cdef int GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI
    cdef int GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI
    cdef int GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI
    cdef int GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI
    cdef int GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI

    void glPNTrianglesfATI (GLenum pname, GLfloat param)
    void glPNTrianglesiATI (GLenum pname, GLint param)

    #GL_ATI_separate_stencil

    cdef int GL_ATI_separate_stencil

    cdef int GL_STENCIL_BACK_FUNC_ATI
    cdef int GL_STENCIL_BACK_FAIL_ATI
    cdef int GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI
    cdef int GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI

    void glStencilFuncSeparateATI (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask)
    void glStencilOpSeparateATI (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)

    #GL_ATI_shader_texture_lod

    cdef int GL_ATI_shader_texture_lod

    #GL_ATI_text_fragment_shader

    cdef int GL_ATI_text_fragment_shader

    cdef int GL_TEXT_FRAGMENT_SHADER_ATI

    #GL_ATI_texture_compression_3dc

    cdef int GL_ATI_texture_compression_3dc

    cdef int GL_COMPRESSED_LUMINANCE_ALPHA_3DC_ATI

    #GL_ATI_texture_env_combine3

    cdef int GL_ATI_texture_env_combine3

    cdef int GL_MODULATE_ADD_ATI
    cdef int GL_MODULATE_SIGNED_ADD_ATI
    cdef int GL_MODULATE_SUBTRACT_ATI

    #GL_ATI_texture_float

    cdef int GL_ATI_texture_float

    cdef int GL_RGBA_FLOAT32_ATI
    cdef int GL_RGB_FLOAT32_ATI
    cdef int GL_ALPHA_FLOAT32_ATI
    cdef int GL_INTENSITY_FLOAT32_ATI
    cdef int GL_LUMINANCE_FLOAT32_ATI
    cdef int GL_LUMINANCE_ALPHA_FLOAT32_ATI
    cdef int GL_RGBA_FLOAT16_ATI
    cdef int GL_RGB_FLOAT16_ATI
    cdef int GL_ALPHA_FLOAT16_ATI
    cdef int GL_INTENSITY_FLOAT16_ATI
    cdef int GL_LUMINANCE_FLOAT16_ATI
    cdef int GL_LUMINANCE_ALPHA_FLOAT16_ATI

    #GL_ATI_texture_mirror_once

    cdef int GL_ATI_texture_mirror_once

    cdef int GL_MIRROR_CLAMP_ATI
    cdef int GL_MIRROR_CLAMP_TO_EDGE_ATI

    #GL_ATI_vertex_array_object

    cdef int GL_ATI_vertex_array_object

    cdef int GL_STATIC_ATI
    cdef int GL_DYNAMIC_ATI
    cdef int GL_PRESERVE_ATI
    cdef int GL_DISCARD_ATI
    cdef int GL_OBJECT_BUFFER_SIZE_ATI
    cdef int GL_OBJECT_BUFFER_USAGE_ATI
    cdef int GL_ARRAY_OBJECT_BUFFER_ATI
    cdef int GL_ARRAY_OBJECT_OFFSET_ATI

    void glArrayObjectATI (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)
    void glFreeObjectBufferATI (GLuint buffer)
    void glGetArrayObjectfvATI (GLenum array, GLenum pname, GLfloat* params)
    void glGetArrayObjectivATI (GLenum array, GLenum pname, GLint* params)
    void glGetObjectBufferfvATI (GLuint buffer, GLenum pname, GLfloat* params)
    void glGetObjectBufferivATI (GLuint buffer, GLenum pname, GLint* params)
    void glGetVariantArrayObjectfvATI (GLuint id, GLenum pname, GLfloat* params)
    void glGetVariantArrayObjectivATI (GLuint id, GLenum pname, GLint* params)
    GLboolean glIsObjectBufferATI (GLuint buffer)
    GLuint glNewObjectBufferATI (GLsizei size, const_void_ptr  pointer, GLenum usage)
    void glUpdateObjectBufferATI (GLuint buffer, GLuint offset, GLsizei size, const_void_ptr  pointer, GLenum preserve)
    void glVariantArrayObjectATI (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)

    #GL_ATI_vertex_attrib_array_object

    cdef int GL_ATI_vertex_attrib_array_object

    void glGetVertexAttribArrayObjectfvATI (GLuint index, GLenum pname, GLfloat* params)
    void glGetVertexAttribArrayObjectivATI (GLuint index, GLenum pname, GLint* params)
    void glVertexAttribArrayObjectATI (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset)

    #GL_ATI_vertex_streams

    cdef int GL_ATI_vertex_streams

    cdef int GL_MAX_VERTEX_STREAMS_ATI
    cdef int GL_VERTEX_SOURCE_ATI
    cdef int GL_VERTEX_STREAM0_ATI
    cdef int GL_VERTEX_STREAM1_ATI
    cdef int GL_VERTEX_STREAM2_ATI
    cdef int GL_VERTEX_STREAM3_ATI
    cdef int GL_VERTEX_STREAM4_ATI
    cdef int GL_VERTEX_STREAM5_ATI
    cdef int GL_VERTEX_STREAM6_ATI
    cdef int GL_VERTEX_STREAM7_ATI

    void glClientActiveVertexStreamATI (GLenum stream)
    void glNormalStream3bATI (GLenum stream, GLbyte x, GLbyte y, GLbyte z)
    void glNormalStream3bvATI (GLenum stream, GLbyte* v)
    void glNormalStream3dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z)
    void glNormalStream3dvATI (GLenum stream, GLdouble* v)
    void glNormalStream3fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z)
    void glNormalStream3fvATI (GLenum stream, GLfloat* v)
    void glNormalStream3iATI (GLenum stream, GLint x, GLint y, GLint z)
    void glNormalStream3ivATI (GLenum stream, GLint* v)
    void glNormalStream3sATI (GLenum stream, GLshort x, GLshort y, GLshort z)
    void glNormalStream3svATI (GLenum stream, GLshort* v)
    void glVertexBlendEnvfATI (GLenum pname, GLfloat param)
    void glVertexBlendEnviATI (GLenum pname, GLint param)
    void glVertexStream2dATI (GLenum stream, GLdouble x, GLdouble y)
    void glVertexStream2dvATI (GLenum stream, GLdouble* v)
    void glVertexStream2fATI (GLenum stream, GLfloat x, GLfloat y)
    void glVertexStream2fvATI (GLenum stream, GLfloat* v)
    void glVertexStream2iATI (GLenum stream, GLint x, GLint y)
    void glVertexStream2ivATI (GLenum stream, GLint* v)
    void glVertexStream2sATI (GLenum stream, GLshort x, GLshort y)
    void glVertexStream2svATI (GLenum stream, GLshort* v)
    void glVertexStream3dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z)
    void glVertexStream3dvATI (GLenum stream, GLdouble* v)
    void glVertexStream3fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z)
    void glVertexStream3fvATI (GLenum stream, GLfloat* v)
    void glVertexStream3iATI (GLenum stream, GLint x, GLint y, GLint z)
    void glVertexStream3ivATI (GLenum stream, GLint* v)
    void glVertexStream3sATI (GLenum stream, GLshort x, GLshort y, GLshort z)
    void glVertexStream3svATI (GLenum stream, GLshort* v)
    void glVertexStream4dATI (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glVertexStream4dvATI (GLenum stream, GLdouble* v)
    void glVertexStream4fATI (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glVertexStream4fvATI (GLenum stream, GLfloat* v)
    void glVertexStream4iATI (GLenum stream, GLint x, GLint y, GLint z, GLint w)
    void glVertexStream4ivATI (GLenum stream, GLint* v)
    void glVertexStream4sATI (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w)
    void glVertexStream4svATI (GLenum stream, GLshort* v)

    #GL_EXT_422_pixels

    cdef int GL_EXT_422_pixels

    cdef int GL_422_EXT
    cdef int GL_422_REV_EXT
    cdef int GL_422_AVERAGE_EXT
    cdef int GL_422_REV_AVERAGE_EXT

    #GL_EXT_Cg_shader

    cdef int GL_EXT_Cg_shader

    cdef int GL_CG_VERTEX_SHADER_EXT
    cdef int GL_CG_FRAGMENT_SHADER_EXT

    #GL_EXT_abgr

    cdef int GL_EXT_abgr

    cdef int GL_ABGR_EXT

    #GL_EXT_bgra

    cdef int GL_EXT_bgra

    cdef int GL_BGR_EXT
    cdef int GL_BGRA_EXT

    #GL_EXT_bindable_uniform

    cdef int GL_EXT_bindable_uniform

    cdef int GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT
    cdef int GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT
    cdef int GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT
    cdef int GL_MAX_BINDABLE_UNIFORM_SIZE_EXT
    cdef int GL_UNIFORM_BUFFER_EXT
    cdef int GL_UNIFORM_BUFFER_BINDING_EXT

    GLint glGetUniformBufferSizeEXT (GLuint program, GLint location)
    GLintptr glGetUniformOffsetEXT (GLuint program, GLint location)
    void glUniformBufferEXT (GLuint program, GLint location, GLuint buffer)

    #GL_EXT_blend_color

    cdef int GL_EXT_blend_color

    cdef int GL_CONSTANT_COLOR_EXT
    cdef int GL_ONE_MINUS_CONSTANT_COLOR_EXT
    cdef int GL_CONSTANT_ALPHA_EXT
    cdef int GL_ONE_MINUS_CONSTANT_ALPHA_EXT
    cdef int GL_BLEND_COLOR_EXT

    void glBlendColorEXT (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)

    #GL_EXT_blend_equation_separate

    cdef int GL_EXT_blend_equation_separate

    cdef int GL_BLEND_EQUATION_RGB_EXT
    cdef int GL_BLEND_EQUATION_ALPHA_EXT

    void glBlendEquationSeparateEXT (GLenum modeRGB, GLenum modeAlpha)

    #GL_EXT_blend_func_separate

    cdef int GL_EXT_blend_func_separate

    cdef int GL_BLEND_DST_RGB_EXT
    cdef int GL_BLEND_SRC_RGB_EXT
    cdef int GL_BLEND_DST_ALPHA_EXT
    cdef int GL_BLEND_SRC_ALPHA_EXT

    void glBlendFuncSeparateEXT (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

    #GL_EXT_blend_logic_op

    cdef int GL_EXT_blend_logic_op

    #GL_EXT_blend_minmax

    cdef int GL_EXT_blend_minmax

    cdef int GL_FUNC_ADD_EXT
    cdef int GL_MIN_EXT
    cdef int GL_MAX_EXT
    cdef int GL_BLEND_EQUATION_EXT

    void glBlendEquationEXT (GLenum mode)

    #GL_EXT_blend_subtract

    cdef int GL_EXT_blend_subtract

    cdef int GL_FUNC_SUBTRACT_EXT
    cdef int GL_FUNC_REVERSE_SUBTRACT_EXT

    #GL_EXT_clip_volume_hint

    cdef int GL_EXT_clip_volume_hint

    cdef int GL_CLIP_VOLUME_CLIPPING_HINT_EXT

    #GL_EXT_cmyka

    cdef int GL_EXT_cmyka

    cdef int GL_CMYK_EXT
    cdef int GL_CMYKA_EXT
    cdef int GL_PACK_CMYK_HINT_EXT
    cdef int GL_UNPACK_CMYK_HINT_EXT

    #GL_EXT_color_subtable

    cdef int GL_EXT_color_subtable

    void glColorSubTableEXT (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const_void_ptr  data)
    void glCopyColorSubTableEXT (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)

    #GL_EXT_compiled_vertex_array

    cdef int GL_EXT_compiled_vertex_array

    cdef int GL_ARRAY_ELEMENT_LOCK_FIRST_EXT
    cdef int GL_ARRAY_ELEMENT_LOCK_COUNT_EXT

    void glLockArraysEXT (GLint first, GLsizei count)
    void glUnlockArraysEXT ()

    #GL_EXT_convolution

    cdef int GL_EXT_convolution

    cdef int GL_CONVOLUTION_1D_EXT
    cdef int GL_CONVOLUTION_2D_EXT
    cdef int GL_SEPARABLE_2D_EXT
    cdef int GL_CONVOLUTION_BORDER_MODE_EXT
    cdef int GL_CONVOLUTION_FILTER_SCALE_EXT
    cdef int GL_CONVOLUTION_FILTER_BIAS_EXT
    cdef int GL_REDUCE_EXT
    cdef int GL_CONVOLUTION_FORMAT_EXT
    cdef int GL_CONVOLUTION_WIDTH_EXT
    cdef int GL_CONVOLUTION_HEIGHT_EXT
    cdef int GL_MAX_CONVOLUTION_WIDTH_EXT
    cdef int GL_MAX_CONVOLUTION_HEIGHT_EXT
    cdef int GL_POST_CONVOLUTION_RED_SCALE_EXT
    cdef int GL_POST_CONVOLUTION_GREEN_SCALE_EXT
    cdef int GL_POST_CONVOLUTION_BLUE_SCALE_EXT
    cdef int GL_POST_CONVOLUTION_ALPHA_SCALE_EXT
    cdef int GL_POST_CONVOLUTION_RED_BIAS_EXT
    cdef int GL_POST_CONVOLUTION_GREEN_BIAS_EXT
    cdef int GL_POST_CONVOLUTION_BLUE_BIAS_EXT
    cdef int GL_POST_CONVOLUTION_ALPHA_BIAS_EXT

    void glConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const_void_ptr  image)
    void glConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const_void_ptr  image)
    void glConvolutionParameterfEXT (GLenum target, GLenum pname, GLfloat param)
    void glConvolutionParameterfvEXT (GLenum target, GLenum pname, GLfloat*  params)
    void glConvolutionParameteriEXT (GLenum target, GLenum pname, GLint param)
    void glConvolutionParameterivEXT (GLenum target, GLenum pname, GLint*  params)
    void glCopyConvolutionFilter1DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
    void glCopyConvolutionFilter2DEXT (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)
    void glGetConvolutionFilterEXT (GLenum target, GLenum format, GLenum type, void* image)
    void glGetConvolutionParameterfvEXT (GLenum target, GLenum pname, GLfloat* params)
    void glGetConvolutionParameterivEXT (GLenum target, GLenum pname, GLint* params)
    void glGetSeparableFilterEXT (GLenum target, GLenum format, GLenum type, void* row, void* column, void* span)
    void glSeparableFilter2DEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const_void_ptr  row, const_void_ptr  column)

    #GL_EXT_coordinate_frame

    cdef int GL_EXT_coordinate_frame

    cdef int GL_TANGENT_ARRAY_EXT
    cdef int GL_BINORMAL_ARRAY_EXT
    cdef int GL_CURRENT_TANGENT_EXT
    cdef int GL_CURRENT_BINORMAL_EXT
    cdef int GL_TANGENT_ARRAY_TYPE_EXT
    cdef int GL_TANGENT_ARRAY_STRIDE_EXT
    cdef int GL_BINORMAL_ARRAY_TYPE_EXT
    cdef int GL_BINORMAL_ARRAY_STRIDE_EXT
    cdef int GL_TANGENT_ARRAY_POINTER_EXT
    cdef int GL_BINORMAL_ARRAY_POINTER_EXT
    cdef int GL_MAP1_TANGENT_EXT
    cdef int GL_MAP2_TANGENT_EXT
    cdef int GL_MAP1_BINORMAL_EXT
    cdef int GL_MAP2_BINORMAL_EXT

    void glBinormalPointerEXT (GLenum type, GLsizei stride, void* pointer)
    void glTangentPointerEXT (GLenum type, GLsizei stride, void* pointer)

    #GL_EXT_copy_texture

    cdef int GL_EXT_copy_texture

    void glCopyTexImage1DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
    void glCopyTexImage2DEXT (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
    void glCopyTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
    void glCopyTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
    void glCopyTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    #GL_EXT_cull_vertex

    cdef int GL_EXT_cull_vertex

    cdef int GL_CULL_VERTEX_EXT
    cdef int GL_CULL_VERTEX_EYE_POSITION_EXT
    cdef int GL_CULL_VERTEX_OBJECT_POSITION_EXT

    void glCullParameterdvEXT (GLenum pname, GLdouble* params)
    void glCullParameterfvEXT (GLenum pname, GLfloat* params)

    #GL_EXT_depth_bounds_test

    cdef int GL_EXT_depth_bounds_test

    cdef int GL_DEPTH_BOUNDS_TEST_EXT
    cdef int GL_DEPTH_BOUNDS_EXT

    void glDepthBoundsEXT (GLclampd zmin, GLclampd zmax)

    #GL_EXT_direct_state_access

    cdef int GL_EXT_direct_state_access

    cdef int GL_PROGRAM_MATRIX_EXT
    cdef int GL_TRANSPOSE_PROGRAM_MATRIX_EXT
    cdef int GL_PROGRAM_MATRIX_STACK_DEPTH_EXT

    void glBindMultiTextureEXT (GLenum texunit, GLenum target, GLuint texture)
    GLenum glCheckNamedFramebufferStatusEXT (GLuint framebuffer, GLenum target)
    void glClientAttribDefaultEXT (GLbitfield mask)
    void glCompressedMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glCompressedMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glCompressedMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glCompressedTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const_void_ptr  data)
    void glCopyMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
    void glCopyMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
    void glCopyMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
    void glCopyMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
    void glCopyMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
    void glCopyTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
    void glCopyTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
    void glCopyTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
    void glCopyTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
    void glCopyTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
    void glDisableClientStateIndexedEXT (GLenum array, GLuint index)
    void glDisableClientStateiEXT (GLenum array, GLuint index)
    void glDisableVertexArrayAttribEXT (GLuint vaobj, GLuint index)
    void glDisableVertexArrayEXT (GLuint vaobj, GLenum array)
    void glEnableClientStateIndexedEXT (GLenum array, GLuint index)
    void glEnableClientStateiEXT (GLenum array, GLuint index)
    void glEnableVertexArrayAttribEXT (GLuint vaobj, GLuint index)
    void glEnableVertexArrayEXT (GLuint vaobj, GLenum array)
    void glFlushMappedNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length)
    void glFramebufferDrawBufferEXT (GLuint framebuffer, GLenum mode)
    void glFramebufferDrawBuffersEXT (GLuint framebuffer, GLsizei n, GLenum bufs)
    void glFramebufferReadBufferEXT (GLuint framebuffer, GLenum mode)
    void glGenerateMultiTexMipmapEXT (GLenum texunit, GLenum target)
    void glGenerateTextureMipmapEXT (GLuint texture, GLenum target)
    void glGetCompressedMultiTexImageEXT (GLenum texunit, GLenum target, GLint level, void* img)
    void glGetCompressedTextureImageEXT (GLuint texture, GLenum target, GLint level, void* img)
    void glGetDoubleIndexedvEXT (GLenum target, GLuint index, GLdouble* params)
    void glGetDoublei_vEXT (GLenum pname, GLuint index, GLdouble* params)
    void glGetFloatIndexedvEXT (GLenum target, GLuint index, GLfloat* params)
    void glGetFloati_vEXT (GLenum pname, GLuint index, GLfloat* params)
    void glGetFramebufferParameterivEXT (GLuint framebuffer, GLenum pname, GLint* param)
    void glGetMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat* params)
    void glGetMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params)
    void glGetMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble* params)
    void glGetMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat* params)
    void glGetMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, GLint* params)
    void glGetMultiTexImageEXT (GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, void* pixels)
    void glGetMultiTexLevelParameterfvEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params)
    void glGetMultiTexLevelParameterivEXT (GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params)
    void glGetMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params)
    void glGetMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, GLuint* params)
    void glGetMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat* params)
    void glGetMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, GLint* params)
    void glGetNamedBufferParameterivEXT (GLuint buffer, GLenum pname, GLint* params)
    void glGetNamedBufferPointervEXT (GLuint buffer, GLenum pname, void** params)
    void glGetNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)
    void glGetNamedFramebufferAttachmentParameterivEXT (GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params)
    void glGetNamedProgramLocalParameterIivEXT (GLuint program, GLenum target, GLuint index, GLint* params)
    void glGetNamedProgramLocalParameterIuivEXT (GLuint program, GLenum target, GLuint index, GLuint* params)
    void glGetNamedProgramLocalParameterdvEXT (GLuint program, GLenum target, GLuint index, GLdouble* params)
    void glGetNamedProgramLocalParameterfvEXT (GLuint program, GLenum target, GLuint index, GLfloat* params)
    void glGetNamedProgramStringEXT (GLuint program, GLenum target, GLenum pname, void* string)
    void glGetNamedProgramivEXT (GLuint program, GLenum target, GLenum pname, GLint* params)
    void glGetNamedRenderbufferParameterivEXT (GLuint renderbuffer, GLenum pname, GLint* params)
    void glGetPointerIndexedvEXT (GLenum target, GLuint index, GLvoid** params)
    void glGetPointeri_vEXT (GLenum pname, GLuint index, GLvoid** params)
    void glGetTextureImageEXT (GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, void* pixels)
    void glGetTextureLevelParameterfvEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params)
    void glGetTextureLevelParameterivEXT (GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params)
    void glGetTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, GLint* params)
    void glGetTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, GLuint* params)
    void glGetTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, GLfloat* params)
    void glGetTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, GLint* params)
    void glGetVertexArrayIntegeri_vEXT (GLuint vaobj, GLuint index, GLenum pname, GLint* param)
    void glGetVertexArrayIntegervEXT (GLuint vaobj, GLenum pname, GLint* param)
    void glGetVertexArrayPointeri_vEXT (GLuint vaobj, GLuint index, GLenum pname, GLvoid** param)
    void glGetVertexArrayPointervEXT (GLuint vaobj, GLenum pname, GLvoid** param)
    GLvoid * glMapNamedBufferEXT (GLuint buffer, GLenum access)
    GLvoid * glMapNamedBufferRangeEXT (GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access)
    void glMatrixFrustumEXT (GLenum matrixMode, GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f)
    void glMatrixLoadIdentityEXT (GLenum matrixMode)
    void glMatrixLoadTransposedEXT (GLenum matrixMode, GLdouble*  m)
    void glMatrixLoadTransposefEXT (GLenum matrixMode, GLfloat*  m)
    void glMatrixLoaddEXT (GLenum matrixMode, GLdouble*  m)
    void glMatrixLoadfEXT (GLenum matrixMode, GLfloat*  m)
    void glMatrixMultTransposedEXT (GLenum matrixMode, GLdouble*  m)
    void glMatrixMultTransposefEXT (GLenum matrixMode, GLfloat*  m)
    void glMatrixMultdEXT (GLenum matrixMode, GLdouble*  m)
    void glMatrixMultfEXT (GLenum matrixMode, GLfloat*  m)
    void glMatrixOrthoEXT (GLenum matrixMode, GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f)
    void glMatrixPopEXT (GLenum matrixMode)
    void glMatrixPushEXT (GLenum matrixMode)
    void glMatrixRotatedEXT (GLenum matrixMode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z)
    void glMatrixRotatefEXT (GLenum matrixMode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z)
    void glMatrixScaledEXT (GLenum matrixMode, GLdouble x, GLdouble y, GLdouble z)
    void glMatrixScalefEXT (GLenum matrixMode, GLfloat x, GLfloat y, GLfloat z)
    void glMatrixTranslatedEXT (GLenum matrixMode, GLdouble x, GLdouble y, GLdouble z)
    void glMatrixTranslatefEXT (GLenum matrixMode, GLfloat x, GLfloat y, GLfloat z)
    void glMultiTexBufferEXT (GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer)
    void glMultiTexCoordPointerEXT (GLenum texunit, GLint size, GLenum type, GLsizei stride, const_void_ptr  pointer)
    void glMultiTexEnvfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param)
    void glMultiTexEnvfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat*  params)
    void glMultiTexEnviEXT (GLenum texunit, GLenum target, GLenum pname, GLint param)
    void glMultiTexEnvivEXT (GLenum texunit, GLenum target, GLenum pname, GLint*  params)
    void glMultiTexGendEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble param)
    void glMultiTexGendvEXT (GLenum texunit, GLenum coord, GLenum pname, GLdouble*  params)
    void glMultiTexGenfEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat param)
    void glMultiTexGenfvEXT (GLenum texunit, GLenum coord, GLenum pname, GLfloat*  params)
    void glMultiTexGeniEXT (GLenum texunit, GLenum coord, GLenum pname, GLint param)
    void glMultiTexGenivEXT (GLenum texunit, GLenum coord, GLenum pname, GLint*  params)
    void glMultiTexImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const_void_ptr  pixels)
    void glMultiTexImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const_void_ptr  pixels)
    void glMultiTexImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const_void_ptr  pixels)
    void glMultiTexParameterIivEXT (GLenum texunit, GLenum target, GLenum pname, GLint*  params)
    void glMultiTexParameterIuivEXT (GLenum texunit, GLenum target, GLenum pname, GLuint* params)
    void glMultiTexParameterfEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat param)
    void glMultiTexParameterfvEXT (GLenum texunit, GLenum target, GLenum pname, GLfloat*  param)
    void glMultiTexParameteriEXT (GLenum texunit, GLenum target, GLenum pname, GLint param)
    void glMultiTexParameterivEXT (GLenum texunit, GLenum target, GLenum pname, GLint*  param)
    void glMultiTexRenderbufferEXT (GLenum texunit, GLenum target, GLuint renderbuffer)
    void glMultiTexSubImage1DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const_void_ptr  pixels)
    void glMultiTexSubImage2DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const_void_ptr  pixels)
    void glMultiTexSubImage3DEXT (GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const_void_ptr  pixels)
    void glNamedBufferDataEXT (GLuint buffer, GLsizeiptr size, const_void_ptr  data, GLenum usage)
    void glNamedBufferSubDataEXT (GLuint buffer, GLintptr offset, GLsizeiptr size, const_void_ptr  data)
    void glNamedCopyBufferSubDataEXT (GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)
    void glNamedFramebufferRenderbufferEXT (GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
    void glNamedFramebufferTexture1DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
    void glNamedFramebufferTexture2DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
    void glNamedFramebufferTexture3DEXT (GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)
    void glNamedFramebufferTextureEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level)
    void glNamedFramebufferTextureFaceEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face)
    void glNamedFramebufferTextureLayerEXT (GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer)
    void glNamedProgramLocalParameter4dEXT (GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glNamedProgramLocalParameter4dvEXT (GLuint program, GLenum target, GLuint index, GLdouble*  params)
    void glNamedProgramLocalParameter4fEXT (GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glNamedProgramLocalParameter4fvEXT (GLuint program, GLenum target, GLuint index, GLfloat*  params)
    void glNamedProgramLocalParameterI4iEXT (GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)
    void glNamedProgramLocalParameterI4ivEXT (GLuint program, GLenum target, GLuint index, GLint*  params)
    void glNamedProgramLocalParameterI4uiEXT (GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
    void glNamedProgramLocalParameterI4uivEXT (GLuint program, GLenum target, GLuint index, GLuint* params)
    void glNamedProgramLocalParameters4fvEXT (GLuint program, GLenum target, GLuint index, GLsizei count, GLfloat  *params)
    void glNamedProgramLocalParametersI4ivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, GLint*  params)
    void glNamedProgramLocalParametersI4uivEXT (GLuint program, GLenum target, GLuint index, GLsizei count, GLuint* params)
    void glNamedProgramStringEXT (GLuint program, GLenum target, GLenum format, GLsizei len, const_void_ptr  string)
    void glNamedRenderbufferStorageEXT (GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height)
    void glNamedRenderbufferStorageMultisampleCoverageEXT (GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)
    void glNamedRenderbufferStorageMultisampleEXT (GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)
    void glProgramUniform1fEXT (GLuint program, GLint location, GLfloat v0)
    void glProgramUniform1fvEXT (GLuint program, GLint location, GLsizei count, GLfloat*  value)
    void glProgramUniform1iEXT (GLuint program, GLint location, GLint v0)
    void glProgramUniform1ivEXT (GLuint program, GLint location, GLsizei count, GLint*  value)
    void glProgramUniform1uiEXT (GLuint program, GLint location, GLuint v0)
    void glProgramUniform1uivEXT (GLuint program, GLint location, GLsizei count, GLuint* value)
    void glProgramUniform2fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1)
    void glProgramUniform2fvEXT (GLuint program, GLint location, GLsizei count, GLfloat*  value)
    void glProgramUniform2iEXT (GLuint program, GLint location, GLint v0, GLint v1)
    void glProgramUniform2ivEXT (GLuint program, GLint location, GLsizei count, GLint*  value)
    void glProgramUniform2uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1)
    void glProgramUniform2uivEXT (GLuint program, GLint location, GLsizei count, GLuint* value)
    void glProgramUniform3fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
    void glProgramUniform3fvEXT (GLuint program, GLint location, GLsizei count, GLfloat*  value)
    void glProgramUniform3iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2)
    void glProgramUniform3ivEXT (GLuint program, GLint location, GLsizei count, GLint*  value)
    void glProgramUniform3uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2)
    void glProgramUniform3uivEXT (GLuint program, GLint location, GLsizei count, GLuint* value)
    void glProgramUniform4fEXT (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
    void glProgramUniform4fvEXT (GLuint program, GLint location, GLsizei count, GLfloat*  value)
    void glProgramUniform4iEXT (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
    void glProgramUniform4ivEXT (GLuint program, GLint location, GLsizei count, GLint*  value)
    void glProgramUniform4uiEXT (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)
    void glProgramUniform4uivEXT (GLuint program, GLint location, GLsizei count, GLuint* value)
    void glProgramUniformMatrix2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix2x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix2x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix3x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix3x4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat * value)
    void glProgramUniformMatrix4fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix4x2fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glProgramUniformMatrix4x3fvEXT (GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat*  value)
    void glPushClientAttribDefaultEXT (GLbitfield mask)
    void glTextureBufferEXT (GLuint texture, GLenum target, GLenum internalformat, GLuint buffer)
    void glTextureImage1DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const_void_ptr  pixels)
    void glTextureImage2DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const_void_ptr  pixels)
    void glTextureImage3DEXT (GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const_void_ptr  pixels)
    void glTextureParameterIivEXT (GLuint texture, GLenum target, GLenum pname, GLint*  params)
    void glTextureParameterIuivEXT (GLuint texture, GLenum target, GLenum pname, GLuint* params)
    void glTextureParameterfEXT (GLuint texture, GLenum target, GLenum pname, GLfloat param)
    void glTextureParameterfvEXT (GLuint texture, GLenum target, GLenum pname, GLfloat*  param)
    void glTextureParameteriEXT (GLuint texture, GLenum target, GLenum pname, GLint param)
    void glTextureParameterivEXT (GLuint texture, GLenum target, GLenum pname, GLint*  param)
    void glTextureRenderbufferEXT (GLuint texture, GLenum target, GLuint renderbuffer)
    void glTextureSubImage1DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const_void_ptr  pixels)
    void glTextureSubImage2DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const_void_ptr  pixels)
    void glTextureSubImage3DEXT (GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const_void_ptr  pixels)
    GLboolean glUnmapNamedBufferEXT (GLuint buffer)
    void glVertexArrayColorOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexArrayEdgeFlagOffsetEXT (GLuint vaobj, GLuint buffer, GLsizei stride, GLintptr offset)
    void glVertexArrayFogCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexArrayIndexOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexArrayMultiTexCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLenum texunit, GLint size, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexArrayNormalOffsetEXT (GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexArraySecondaryColorOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexArrayTexCoordOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexArrayVertexAttribIOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexArrayVertexAttribOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset)
    void glVertexArrayVertexOffsetEXT (GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    #GL_EXT_draw_buffers2

    cdef int GL_EXT_draw_buffers2

    void glColorMaskIndexedEXT (GLuint buf, GLboolean r, GLboolean g, GLboolean b, GLboolean a)
    void glDisableIndexedEXT (GLenum target, GLuint index)
    void glEnableIndexedEXT (GLenum target, GLuint index)
    void glGetBooleanIndexedvEXT (GLenum value, GLuint index, GLboolean* data)
    void glGetIntegerIndexedvEXT (GLenum value, GLuint index, GLint* data)
    GLboolean glIsEnabledIndexedEXT (GLenum target, GLuint index)

    #GL_EXT_draw_instanced

    cdef int GL_EXT_draw_instanced

    void glDrawArraysInstancedEXT (GLenum mode, GLint start, GLsizei count, GLsizei primcount)
    void glDrawElementsInstancedEXT (GLenum mode, GLsizei count, GLenum type, GLvoid *indices, GLsizei primcount)

    #GL_EXT_draw_range_elements

    cdef int GL_EXT_draw_range_elements

    cdef int GL_MAX_ELEMENTS_VERTICES_EXT
    cdef int GL_MAX_ELEMENTS_INDICES_EXT

    void glDrawRangeElementsEXT (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices)

    #GL_EXT_fog_coord

    cdef int GL_EXT_fog_coord

    cdef int GL_FOG_COORDINATE_SOURCE_EXT
    cdef int GL_FOG_COORDINATE_EXT
    cdef int GL_FRAGMENT_DEPTH_EXT
    cdef int GL_CURRENT_FOG_COORDINATE_EXT
    cdef int GL_FOG_COORDINATE_ARRAY_TYPE_EXT
    cdef int GL_FOG_COORDINATE_ARRAY_STRIDE_EXT
    cdef int GL_FOG_COORDINATE_ARRAY_POINTER_EXT
    cdef int GL_FOG_COORDINATE_ARRAY_EXT

    void glFogCoordPointerEXT (GLenum type, GLsizei stride, GLvoid *pointer)
    void glFogCoorddEXT (GLdouble coord)
    void glFogCoorddvEXT (GLdouble* coord)
    void glFogCoordfEXT (GLfloat coord)
    void glFogCoordfvEXT (GLfloat* coord)

    #GL_EXT_fragment_lighting

    cdef int GL_EXT_fragment_lighting

    cdef int GL_FRAGMENT_LIGHTING_EXT
    cdef int GL_FRAGMENT_COLOR_MATERIAL_EXT
    cdef int GL_FRAGMENT_COLOR_MATERIAL_FACE_EXT
    cdef int GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_EXT
    cdef int GL_MAX_FRAGMENT_LIGHTS_EXT
    cdef int GL_MAX_ACTIVE_LIGHTS_EXT
    cdef int GL_CURRENT_RASTER_NORMAL_EXT
    cdef int GL_LIGHT_ENV_MODE_EXT
    cdef int GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_EXT
    cdef int GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_EXT
    cdef int GL_FRAGMENT_LIGHT_MODEL_AMBIENT_EXT
    cdef int GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_EXT
    cdef int GL_FRAGMENT_LIGHT0_EXT
    cdef int GL_FRAGMENT_LIGHT7_EXT

    void glFragmentColorMaterialEXT (GLenum face, GLenum mode)
    void glFragmentLightModelfEXT (GLenum pname, GLfloat param)
    void glFragmentLightModelfvEXT (GLenum pname, GLfloat* params)
    void glFragmentLightModeliEXT (GLenum pname, GLint param)
    void glFragmentLightModelivEXT (GLenum pname, GLint* params)
    void glFragmentLightfEXT (GLenum light, GLenum pname, GLfloat param)
    void glFragmentLightfvEXT (GLenum light, GLenum pname, GLfloat* params)
    void glFragmentLightiEXT (GLenum light, GLenum pname, GLint param)
    void glFragmentLightivEXT (GLenum light, GLenum pname, GLint* params)
    void glFragmentMaterialfEXT (GLenum face, GLenum pname, GLfloat param)
    void glFragmentMaterialfvEXT (GLenum face, GLenum pname, GLfloat*  params)
    void glFragmentMaterialiEXT (GLenum face, GLenum pname, GLint param)
    void glFragmentMaterialivEXT (GLenum face, GLenum pname, GLint*  params)
    void glGetFragmentLightfvEXT (GLenum light, GLenum pname, GLfloat* params)
    void glGetFragmentLightivEXT (GLenum light, GLenum pname, GLint* params)
    void glGetFragmentMaterialfvEXT (GLenum face, GLenum pname, GLfloat*  params)
    void glGetFragmentMaterialivEXT (GLenum face, GLenum pname, GLint*  params)
    void glLightEnviEXT (GLenum pname, GLint param)

    #GL_EXT_framebuffer_blit

    cdef int GL_EXT_framebuffer_blit

    cdef int GL_DRAW_FRAMEBUFFER_BINDING_EXT
    cdef int GL_READ_FRAMEBUFFER_EXT
    cdef int GL_DRAW_FRAMEBUFFER_EXT
    cdef int GL_READ_FRAMEBUFFER_BINDING_EXT

    void glBlitFramebufferEXT (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    #GL_EXT_framebuffer_multisample

    cdef int GL_EXT_framebuffer_multisample

    cdef int GL_RENDERBUFFER_SAMPLES_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT
    cdef int GL_MAX_SAMPLES_EXT

    void glRenderbufferStorageMultisampleEXT (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    #GL_EXT_framebuffer_multisample_blit_scaled

    cdef int GL_EXT_framebuffer_multisample_blit_scaled

    cdef int GL_SCALED_RESOLVE_FASTEST_EXT
    cdef int GL_SCALED_RESOLVE_NICEST_EXT

    #GL_EXT_framebuffer_object

    cdef int GL_EXT_framebuffer_object

    cdef int GL_INVALID_FRAMEBUFFER_OPERATION_EXT
    cdef int GL_MAX_RENDERBUFFER_SIZE_EXT
    cdef int GL_FRAMEBUFFER_BINDING_EXT
    cdef int GL_RENDERBUFFER_BINDING_EXT
    cdef int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT
    cdef int GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT
    cdef int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT
    cdef int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT
    cdef int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT
    cdef int GL_FRAMEBUFFER_COMPLETE_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT
    cdef int GL_FRAMEBUFFER_UNSUPPORTED_EXT
    cdef int GL_MAX_COLOR_ATTACHMENTS_EXT
    cdef int GL_COLOR_ATTACHMENT0_EXT
    cdef int GL_COLOR_ATTACHMENT1_EXT
    cdef int GL_COLOR_ATTACHMENT2_EXT
    cdef int GL_COLOR_ATTACHMENT3_EXT
    cdef int GL_COLOR_ATTACHMENT4_EXT
    cdef int GL_COLOR_ATTACHMENT5_EXT
    cdef int GL_COLOR_ATTACHMENT6_EXT
    cdef int GL_COLOR_ATTACHMENT7_EXT
    cdef int GL_COLOR_ATTACHMENT8_EXT
    cdef int GL_COLOR_ATTACHMENT9_EXT
    cdef int GL_COLOR_ATTACHMENT10_EXT
    cdef int GL_COLOR_ATTACHMENT11_EXT
    cdef int GL_COLOR_ATTACHMENT12_EXT
    cdef int GL_COLOR_ATTACHMENT13_EXT
    cdef int GL_COLOR_ATTACHMENT14_EXT
    cdef int GL_COLOR_ATTACHMENT15_EXT
    cdef int GL_DEPTH_ATTACHMENT_EXT
    cdef int GL_STENCIL_ATTACHMENT_EXT
    cdef int GL_FRAMEBUFFER_EXT
    cdef int GL_RENDERBUFFER_EXT
    cdef int GL_RENDERBUFFER_WIDTH_EXT
    cdef int GL_RENDERBUFFER_HEIGHT_EXT
    cdef int GL_RENDERBUFFER_INTERNAL_FORMAT_EXT
    cdef int GL_STENCIL_INDEX1_EXT
    cdef int GL_STENCIL_INDEX4_EXT
    cdef int GL_STENCIL_INDEX8_EXT
    cdef int GL_STENCIL_INDEX16_EXT
    cdef int GL_RENDERBUFFER_RED_SIZE_EXT
    cdef int GL_RENDERBUFFER_GREEN_SIZE_EXT
    cdef int GL_RENDERBUFFER_BLUE_SIZE_EXT
    cdef int GL_RENDERBUFFER_ALPHA_SIZE_EXT
    cdef int GL_RENDERBUFFER_DEPTH_SIZE_EXT
    cdef int GL_RENDERBUFFER_STENCIL_SIZE_EXT

    void glBindFramebufferEXT (GLenum target, GLuint framebuffer)
    void glBindRenderbufferEXT (GLenum target, GLuint renderbuffer)
    GLenum glCheckFramebufferStatusEXT (GLenum target)
    void glDeleteFramebuffersEXT (GLsizei n, GLuint framebuffers)
    void glDeleteRenderbuffersEXT (GLsizei n, GLuint renderbuffers)
    void glFramebufferRenderbufferEXT (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
    void glFramebufferTexture1DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
    void glFramebufferTexture2DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
    void glFramebufferTexture3DEXT (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)
    void glGenFramebuffersEXT (GLsizei n, GLuint* framebuffers)
    void glGenRenderbuffersEXT (GLsizei n, GLuint* renderbuffers)
    void glGenerateMipmapEXT (GLenum target)
    void glGetFramebufferAttachmentParameterivEXT (GLenum target, GLenum attachment, GLenum pname, GLint* params)
    void glGetRenderbufferParameterivEXT (GLenum target, GLenum pname, GLint* params)
    GLboolean glIsFramebufferEXT (GLuint framebuffer)
    GLboolean glIsRenderbufferEXT (GLuint renderbuffer)
    void glRenderbufferStorageEXT (GLenum target, GLenum internalformat, GLsizei width, GLsizei height)

    #GL_EXT_framebuffer_sRGB

    cdef int GL_EXT_framebuffer_sRGB

    cdef int GL_FRAMEBUFFER_SRGB_EXT
    cdef int GL_FRAMEBUFFER_SRGB_CAPABLE_EXT

    #GL_EXT_geometry_shader4

    cdef int GL_EXT_geometry_shader4

    cdef int GL_LINES_ADJACENCY_EXT
    cdef int GL_LINE_STRIP_ADJACENCY_EXT
    cdef int GL_TRIANGLES_ADJACENCY_EXT
    cdef int GL_TRIANGLE_STRIP_ADJACENCY_EXT
    cdef int GL_PROGRAM_POINT_SIZE_EXT
    cdef int GL_MAX_VARYING_COMPONENTS_EXT
    cdef int GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
    cdef int GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
    cdef int GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
    cdef int GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
    cdef int GL_GEOMETRY_SHADER_EXT
    cdef int GL_GEOMETRY_VERTICES_OUT_EXT
    cdef int GL_GEOMETRY_INPUT_TYPE_EXT
    cdef int GL_GEOMETRY_OUTPUT_TYPE_EXT
    cdef int GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT
    cdef int GL_MAX_VERTEX_VARYING_COMPONENTS_EXT
    cdef int GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT
    cdef int GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT
    cdef int GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT

    void glFramebufferTextureEXT (GLenum target, GLenum attachment, GLuint texture, GLint level)
    void glFramebufferTextureFaceEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)
    void glProgramParameteriEXT (GLuint program, GLenum pname, GLint value)

    #GL_EXT_gpu_program_parameters

    cdef int GL_EXT_gpu_program_parameters

    void glProgramEnvParameters4fvEXT (GLenum target, GLuint index, GLsizei count, GLfloat*  params)
    void glProgramLocalParameters4fvEXT (GLenum target, GLuint index, GLsizei count, GLfloat*  params)

    #GL_EXT_gpu_shader4

    cdef int GL_EXT_gpu_shader4

    cdef int GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT
    cdef int GL_SAMPLER_1D_ARRAY_EXT
    cdef int GL_SAMPLER_2D_ARRAY_EXT
    cdef int GL_SAMPLER_BUFFER_EXT
    cdef int GL_SAMPLER_1D_ARRAY_SHADOW_EXT
    cdef int GL_SAMPLER_2D_ARRAY_SHADOW_EXT
    cdef int GL_SAMPLER_CUBE_SHADOW_EXT
    cdef int GL_UNSIGNED_INT_VEC2_EXT
    cdef int GL_UNSIGNED_INT_VEC3_EXT
    cdef int GL_UNSIGNED_INT_VEC4_EXT
    cdef int GL_INT_SAMPLER_1D_EXT
    cdef int GL_INT_SAMPLER_2D_EXT
    cdef int GL_INT_SAMPLER_3D_EXT
    cdef int GL_INT_SAMPLER_CUBE_EXT
    cdef int GL_INT_SAMPLER_2D_RECT_EXT
    cdef int GL_INT_SAMPLER_1D_ARRAY_EXT
    cdef int GL_INT_SAMPLER_2D_ARRAY_EXT
    cdef int GL_INT_SAMPLER_BUFFER_EXT
    cdef int GL_UNSIGNED_INT_SAMPLER_1D_EXT
    cdef int GL_UNSIGNED_INT_SAMPLER_2D_EXT
    cdef int GL_UNSIGNED_INT_SAMPLER_3D_EXT
    cdef int GL_UNSIGNED_INT_SAMPLER_CUBE_EXT
    cdef int GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT
    cdef int GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT
    cdef int GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT
    cdef int GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT

    void glBindFragDataLocationEXT (GLuint program, GLuint color, GLcharname)
    GLint glGetFragDataLocationEXT (GLuint program, GLcharname)
    void glGetUniformuivEXT (GLuint program, GLint location, GLuint *params)
    void glGetVertexAttribIivEXT (GLuint index, GLenum pname, GLint *params)
    void glGetVertexAttribIuivEXT (GLuint index, GLenum pname, GLuint *params)
    void glUniform1uiEXT (GLint location, GLuint v0)
    void glUniform1uivEXT (GLint location, GLsizei count, GLuint* value)
    void glUniform2uiEXT (GLint location, GLuint v0, GLuint v1)
    void glUniform2uivEXT (GLint location, GLsizei count, GLuint* value)
    void glUniform3uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2)
    void glUniform3uivEXT (GLint location, GLsizei count, GLuint* value)
    void glUniform4uiEXT (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)
    void glUniform4uivEXT (GLint location, GLsizei count, GLuint* value)
    void glVertexAttribI1iEXT (GLuint index, GLint x)
    void glVertexAttribI1ivEXT (GLuint index, GLint* v)
    void glVertexAttribI1uiEXT (GLuint index, GLuint x)
    void glVertexAttribI1uivEXT (GLuint index, GLuint* v)
    void glVertexAttribI2iEXT (GLuint index, GLint x, GLint y)
    void glVertexAttribI2ivEXT (GLuint index, GLint* v)
    void glVertexAttribI2uiEXT (GLuint index, GLuint x, GLuint y)
    void glVertexAttribI2uivEXT (GLuint index, GLuint* v)
    void glVertexAttribI3iEXT (GLuint index, GLint x, GLint y, GLint z)
    void glVertexAttribI3ivEXT (GLuint index, GLint* v)
    void glVertexAttribI3uiEXT (GLuint index, GLuint x, GLuint y, GLuint z)
    void glVertexAttribI3uivEXT (GLuint index, GLuint* v)
    void glVertexAttribI4bvEXT (GLuint index, GLbyte* v)
    void glVertexAttribI4iEXT (GLuint index, GLint x, GLint y, GLint z, GLint w)
    void glVertexAttribI4ivEXT (GLuint index, GLint* v)
    void glVertexAttribI4svEXT (GLuint index, GLshort* v)
    void glVertexAttribI4ubvEXT (GLuint index, GLubyte* v)
    void glVertexAttribI4uiEXT (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
    void glVertexAttribI4uivEXT (GLuint index, GLuint* v)
    void glVertexAttribI4usvEXT (GLuint index, GLushort* v)
    void glVertexAttribIPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, GLvoid *pointer)

    #GL_EXT_histogram

    cdef int GL_EXT_histogram

    cdef int GL_HISTOGRAM_EXT
    cdef int GL_PROXY_HISTOGRAM_EXT
    cdef int GL_HISTOGRAM_WIDTH_EXT
    cdef int GL_HISTOGRAM_FORMAT_EXT
    cdef int GL_HISTOGRAM_RED_SIZE_EXT
    cdef int GL_HISTOGRAM_GREEN_SIZE_EXT
    cdef int GL_HISTOGRAM_BLUE_SIZE_EXT
    cdef int GL_HISTOGRAM_ALPHA_SIZE_EXT
    cdef int GL_HISTOGRAM_LUMINANCE_SIZE_EXT
    cdef int GL_HISTOGRAM_SINK_EXT
    cdef int GL_MINMAX_EXT
    cdef int GL_MINMAX_FORMAT_EXT
    cdef int GL_MINMAX_SINK_EXT

    void glGetHistogramEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values)
    void glGetHistogramParameterfvEXT (GLenum target, GLenum pname, GLfloat* params)
    void glGetHistogramParameterivEXT (GLenum target, GLenum pname, GLint* params)
    void glGetMinmaxEXT (GLenum target, GLboolean reset, GLenum format, GLenum type, void* values)
    void glGetMinmaxParameterfvEXT (GLenum target, GLenum pname, GLfloat* params)
    void glGetMinmaxParameterivEXT (GLenum target, GLenum pname, GLint* params)
    void glHistogramEXT (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)
    void glMinmaxEXT (GLenum target, GLenum internalformat, GLboolean sink)
    void glResetHistogramEXT (GLenum target)
    void glResetMinmaxEXT (GLenum target)

    #GL_EXT_index_array_formats

    cdef int GL_EXT_index_array_formats

    #GL_EXT_index_func

    cdef int GL_EXT_index_func

    void glIndexFuncEXT (GLenum func, GLfloat ref)

    #GL_EXT_index_material

    cdef int GL_EXT_index_material

    void glIndexMaterialEXT (GLenum face, GLenum mode)

    #GL_EXT_index_texture

    cdef int GL_EXT_index_texture

    #GL_EXT_light_texture

    cdef int GL_EXT_light_texture

    cdef int GL_FRAGMENT_MATERIAL_EXT
    cdef int GL_FRAGMENT_NORMAL_EXT
    cdef int GL_FRAGMENT_COLOR_EXT
    cdef int GL_ATTENUATION_EXT
    cdef int GL_SHADOW_ATTENUATION_EXT
    cdef int GL_TEXTURE_APPLICATION_MODE_EXT
    cdef int GL_TEXTURE_LIGHT_EXT
    cdef int GL_TEXTURE_MATERIAL_FACE_EXT
    cdef int GL_TEXTURE_MATERIAL_PARAMETER_EXT
    cdef int GL_FRAGMENT_DEPTH_EXT

    void glApplyTextureEXT (GLenum mode)
    void glTextureLightEXT (GLenum pname)
    void glTextureMaterialEXT (GLenum face, GLenum mode)

    #GL_EXT_misc_attribute

    cdef int GL_EXT_misc_attribute

    #GL_EXT_multi_draw_arrays

    cdef int GL_EXT_multi_draw_arrays

    void glMultiDrawArraysEXT (GLenum mode, GLint  first, GLsizei count, GLsizei primcount)
    void glMultiDrawElementsEXT (GLenum mode, GLsizei* count, GLenum type, GLvoid *indices, GLsizei primcount)

    #GL_EXT_multisample

    cdef int GL_EXT_multisample

    cdef int GL_MULTISAMPLE_EXT
    cdef int GL_SAMPLE_ALPHA_TO_MASK_EXT
    cdef int GL_SAMPLE_ALPHA_TO_ONE_EXT
    cdef int GL_SAMPLE_MASK_EXT
    cdef int GL_1PASS_EXT
    cdef int GL_2PASS_0_EXT
    cdef int GL_2PASS_1_EXT
    cdef int GL_4PASS_0_EXT
    cdef int GL_4PASS_1_EXT
    cdef int GL_4PASS_2_EXT
    cdef int GL_4PASS_3_EXT
    cdef int GL_SAMPLE_BUFFERS_EXT
    cdef int GL_SAMPLES_EXT
    cdef int GL_SAMPLE_MASK_VALUE_EXT
    cdef int GL_SAMPLE_MASK_INVERT_EXT
    cdef int GL_SAMPLE_PATTERN_EXT
    cdef int GL_MULTISAMPLE_BIT_EXT

    void glSampleMaskEXT (GLclampf value, GLboolean invert)
    void glSamplePatternEXT (GLenum pattern)

    #GL_EXT_packed_depth_stencil

    cdef int GL_EXT_packed_depth_stencil

    cdef int GL_DEPTH_STENCIL_EXT
    cdef int GL_UNSIGNED_INT_24_8_EXT
    cdef int GL_DEPTH24_STENCIL8_EXT
    cdef int GL_TEXTURE_STENCIL_SIZE_EXT

    #GL_EXT_packed_float

    cdef int GL_EXT_packed_float

    cdef int GL_R11F_G11F_B10F_EXT
    cdef int GL_UNSIGNED_INT_10F_11F_11F_REV_EXT
    cdef int GL_RGBA_SIGNED_COMPONENTS_EXT

    #GL_EXT_packed_pixels

    cdef int GL_EXT_packed_pixels

    cdef int GL_UNSIGNED_BYTE_3_3_2_EXT
    cdef int GL_UNSIGNED_SHORT_4_4_4_4_EXT
    cdef int GL_UNSIGNED_SHORT_5_5_5_1_EXT
    cdef int GL_UNSIGNED_INT_8_8_8_8_EXT
    cdef int GL_UNSIGNED_INT_10_10_10_2_EXT

    #GL_EXT_paletted_texture

    cdef int GL_EXT_paletted_texture

    cdef int GL_TEXTURE_1D
    cdef int GL_TEXTURE_2D
    cdef int GL_PROXY_TEXTURE_1D
    cdef int GL_PROXY_TEXTURE_2D
    cdef int GL_TEXTURE_3D_EXT
    cdef int GL_PROXY_TEXTURE_3D_EXT
    cdef int GL_COLOR_TABLE_FORMAT_EXT
    cdef int GL_COLOR_TABLE_WIDTH_EXT
    cdef int GL_COLOR_TABLE_RED_SIZE_EXT
    cdef int GL_COLOR_TABLE_GREEN_SIZE_EXT
    cdef int GL_COLOR_TABLE_BLUE_SIZE_EXT
    cdef int GL_COLOR_TABLE_ALPHA_SIZE_EXT
    cdef int GL_COLOR_TABLE_LUMINANCE_SIZE_EXT
    cdef int GL_COLOR_TABLE_INTENSITY_SIZE_EXT
    cdef int GL_COLOR_INDEX1_EXT
    cdef int GL_COLOR_INDEX2_EXT
    cdef int GL_COLOR_INDEX4_EXT
    cdef int GL_COLOR_INDEX8_EXT
    cdef int GL_COLOR_INDEX12_EXT
    cdef int GL_COLOR_INDEX16_EXT
    cdef int GL_TEXTURE_INDEX_SIZE_EXT
    cdef int GL_TEXTURE_CUBE_MAP_ARB
    cdef int GL_PROXY_TEXTURE_CUBE_MAP_ARB

    void glColorTableEXT (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const_void_ptr  data)
    void glGetColorTableEXT (GLenum target, GLenum format, GLenum type, void* data)
    void glGetColorTableParameterfvEXT (GLenum target, GLenum pname, GLfloat* params)
    void glGetColorTableParameterivEXT (GLenum target, GLenum pname, GLint* params)

    #GL_EXT_pixel_buffer_object

    cdef int GL_EXT_pixel_buffer_object

    cdef int GL_PIXEL_PACK_BUFFER_EXT
    cdef int GL_PIXEL_UNPACK_BUFFER_EXT
    cdef int GL_PIXEL_PACK_BUFFER_BINDING_EXT
    cdef int GL_PIXEL_UNPACK_BUFFER_BINDING_EXT

    #GL_EXT_pixel_transform

    cdef int GL_EXT_pixel_transform

    cdef int GL_PIXEL_TRANSFORM_2D_EXT
    cdef int GL_PIXEL_MAG_FILTER_EXT
    cdef int GL_PIXEL_MIN_FILTER_EXT
    cdef int GL_PIXEL_CUBIC_WEIGHT_EXT
    cdef int GL_CUBIC_EXT
    cdef int GL_AVERAGE_EXT
    cdef int GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
    cdef int GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
    cdef int GL_PIXEL_TRANSFORM_2D_MATRIX_EXT

    void glGetPixelTransformParameterfvEXT (GLenum target, GLenum pname, GLfloat*  params)
    void glGetPixelTransformParameterivEXT (GLenum target, GLenum pname, GLint*  params)
    void glPixelTransformParameterfEXT (GLenum target, GLenum pname, GLfloat param)
    void glPixelTransformParameterfvEXT (GLenum target, GLenum pname, GLfloat*  params)
    void glPixelTransformParameteriEXT (GLenum target, GLenum pname, GLint param)
    void glPixelTransformParameterivEXT (GLenum target, GLenum pname, GLint*  params)

    #GL_EXT_pixel_transform_color_table

    cdef int GL_EXT_pixel_transform_color_table

    #GL_EXT_point_parameters

    cdef int GL_EXT_point_parameters

    cdef int GL_POINT_SIZE_MIN_EXT
    cdef int GL_POINT_SIZE_MAX_EXT
    cdef int GL_POINT_FADE_THRESHOLD_SIZE_EXT
    cdef int GL_DISTANCE_ATTENUATION_EXT

    void glPointParameterfEXT (GLenum pname, GLfloat param)
    void glPointParameterfvEXT (GLenum pname, GLfloat*  params)

    #GL_EXT_polygon_offset

    cdef int GL_EXT_polygon_offset

    cdef int GL_POLYGON_OFFSET_EXT
    cdef int GL_POLYGON_OFFSET_FACTOR_EXT
    cdef int GL_POLYGON_OFFSET_BIAS_EXT

    void glPolygonOffsetEXT (GLfloat factor, GLfloat bias)

    #GL_EXT_provoking_vertex

    cdef int GL_EXT_provoking_vertex

    cdef int GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT
    cdef int GL_FIRST_VERTEX_CONVENTION_EXT
    cdef int GL_LAST_VERTEX_CONVENTION_EXT
    cdef int GL_PROVOKING_VERTEX_EXT

    void glProvokingVertexEXT (GLenum mode)

    #GL_EXT_rescale_normal

    cdef int GL_EXT_rescale_normal

    cdef int GL_RESCALE_NORMAL_EXT

    #GL_EXT_scene_marker

    cdef int GL_EXT_scene_marker

    void glBeginSceneEXT ()
    void glEndSceneEXT ()

    #GL_EXT_secondary_color

    cdef int GL_EXT_secondary_color

    cdef int GL_COLOR_SUM_EXT
    cdef int GL_CURRENT_SECONDARY_COLOR_EXT
    cdef int GL_SECONDARY_COLOR_ARRAY_SIZE_EXT
    cdef int GL_SECONDARY_COLOR_ARRAY_TYPE_EXT
    cdef int GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT
    cdef int GL_SECONDARY_COLOR_ARRAY_POINTER_EXT
    cdef int GL_SECONDARY_COLOR_ARRAY_EXT

    void glSecondaryColor3bEXT (GLbyte red, GLbyte green, GLbyte blue)
    void glSecondaryColor3bvEXT (GLbyte* v)
    void glSecondaryColor3dEXT (GLdouble red, GLdouble green, GLdouble blue)
    void glSecondaryColor3dvEXT (GLdouble* v)
    void glSecondaryColor3fEXT (GLfloat red, GLfloat green, GLfloat blue)
    void glSecondaryColor3fvEXT (GLfloat* v)
    void glSecondaryColor3iEXT (GLint red, GLint green, GLint blue)
    void glSecondaryColor3ivEXT (GLint* v)
    void glSecondaryColor3sEXT (GLshort red, GLshort green, GLshort blue)
    void glSecondaryColor3svEXT (GLshort* v)
    void glSecondaryColor3ubEXT (GLubyte red, GLubyte green, GLubyte blue)
    void glSecondaryColor3ubvEXT (GLubyte* v)
    void glSecondaryColor3uiEXT (GLuint red, GLuint green, GLuint blue)
    void glSecondaryColor3uivEXT (GLuint* v)
    void glSecondaryColor3usEXT (GLushort red, GLushort green, GLushort blue)
    void glSecondaryColor3usvEXT (GLushort* v)
    void glSecondaryColorPointerEXT (GLint size, GLenum type, GLsizei stride, GLvoid *pointer)

    #GL_EXT_separate_shader_objects

    cdef int GL_EXT_separate_shader_objects

    cdef int GL_ACTIVE_PROGRAM_EXT

    void glActiveProgramEXT (GLuint program)
    GLuint glCreateShaderProgramEXT (GLenum type, const_char_ptr  string)
    void glUseShaderProgramEXT (GLenum type, GLuint program)

    #GL_EXT_separate_specular_color

    cdef int GL_EXT_separate_specular_color

    cdef int GL_LIGHT_MODEL_COLOR_CONTROL_EXT
    cdef int GL_SINGLE_COLOR_EXT
    cdef int GL_SEPARATE_SPECULAR_COLOR_EXT

    #GL_EXT_shader_image_load_store

    cdef int GL_EXT_shader_image_load_store

    cdef int GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT
    cdef int GL_ELEMENT_ARRAY_BARRIER_BIT_EXT
    cdef int GL_UNIFORM_BARRIER_BIT_EXT
    cdef int GL_TEXTURE_FETCH_BARRIER_BIT_EXT
    cdef int GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT
    cdef int GL_COMMAND_BARRIER_BIT_EXT
    cdef int GL_PIXEL_BUFFER_BARRIER_BIT_EXT
    cdef int GL_TEXTURE_UPDATE_BARRIER_BIT_EXT
    cdef int GL_BUFFER_UPDATE_BARRIER_BIT_EXT
    cdef int GL_FRAMEBUFFER_BARRIER_BIT_EXT
    cdef int GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT
    cdef int GL_ATOMIC_COUNTER_BARRIER_BIT_EXT
    cdef int GL_MAX_IMAGE_UNITS_EXT
    cdef int GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT
    cdef int GL_IMAGE_BINDING_NAME_EXT
    cdef int GL_IMAGE_BINDING_LEVEL_EXT
    cdef int GL_IMAGE_BINDING_LAYERED_EXT
    cdef int GL_IMAGE_BINDING_LAYER_EXT
    cdef int GL_IMAGE_BINDING_ACCESS_EXT
    cdef int GL_IMAGE_1D_EXT
    cdef int GL_IMAGE_2D_EXT
    cdef int GL_IMAGE_3D_EXT
    cdef int GL_IMAGE_2D_RECT_EXT
    cdef int GL_IMAGE_CUBE_EXT
    cdef int GL_IMAGE_BUFFER_EXT
    cdef int GL_IMAGE_1D_ARRAY_EXT
    cdef int GL_IMAGE_2D_ARRAY_EXT
    cdef int GL_IMAGE_CUBE_MAP_ARRAY_EXT
    cdef int GL_IMAGE_2D_MULTISAMPLE_EXT
    cdef int GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
    cdef int GL_INT_IMAGE_1D_EXT
    cdef int GL_INT_IMAGE_2D_EXT
    cdef int GL_INT_IMAGE_3D_EXT
    cdef int GL_INT_IMAGE_2D_RECT_EXT
    cdef int GL_INT_IMAGE_CUBE_EXT
    cdef int GL_INT_IMAGE_BUFFER_EXT
    cdef int GL_INT_IMAGE_1D_ARRAY_EXT
    cdef int GL_INT_IMAGE_2D_ARRAY_EXT
    cdef int GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT
    cdef int GL_INT_IMAGE_2D_MULTISAMPLE_EXT
    cdef int GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_1D_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_2D_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_3D_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_CUBE_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_BUFFER_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT
    cdef int GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
    cdef int GL_MAX_IMAGE_SAMPLES_EXT
    cdef int GL_IMAGE_BINDING_FORMAT_EXT
    cdef int GL_ALL_BARRIER_BITS_EXT

    void glBindImageTextureEXT (GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format)
    void glMemoryBarrierEXT (GLbitfield barriers)

    #GL_EXT_shadow_funcs

    cdef int GL_EXT_shadow_funcs

    #GL_EXT_shared_texture_palette

    cdef int GL_EXT_shared_texture_palette

    cdef int GL_SHARED_TEXTURE_PALETTE_EXT

    #GL_EXT_stencil_clear_tag

    cdef int GL_EXT_stencil_clear_tag

    cdef int GL_STENCIL_TAG_BITS_EXT
    cdef int GL_STENCIL_CLEAR_TAG_VALUE_EXT

    #GL_EXT_stencil_two_side

    cdef int GL_EXT_stencil_two_side

    cdef int GL_STENCIL_TEST_TWO_SIDE_EXT
    cdef int GL_ACTIVE_STENCIL_FACE_EXT

    void glActiveStencilFaceEXT (GLenum face)

    #GL_EXT_stencil_wrap

    cdef int GL_EXT_stencil_wrap

    cdef int GL_INCR_WRAP_EXT
    cdef int GL_DECR_WRAP_EXT

    #GL_EXT_subtexture

    cdef int GL_EXT_subtexture

    void glTexSubImage1DEXT (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const_void_ptr  pixels)
    void glTexSubImage2DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const_void_ptr  pixels)
    void glTexSubImage3DEXT (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const_void_ptr  pixels)

    #GL_EXT_texture

    cdef int GL_EXT_texture

    cdef int GL_ALPHA4_EXT
    cdef int GL_ALPHA8_EXT
    cdef int GL_ALPHA12_EXT
    cdef int GL_ALPHA16_EXT
    cdef int GL_LUMINANCE4_EXT
    cdef int GL_LUMINANCE8_EXT
    cdef int GL_LUMINANCE12_EXT
    cdef int GL_LUMINANCE16_EXT
    cdef int GL_LUMINANCE4_ALPHA4_EXT
    cdef int GL_LUMINANCE6_ALPHA2_EXT
    cdef int GL_LUMINANCE8_ALPHA8_EXT
    cdef int GL_LUMINANCE12_ALPHA4_EXT
    cdef int GL_LUMINANCE12_ALPHA12_EXT
    cdef int GL_LUMINANCE16_ALPHA16_EXT
    cdef int GL_INTENSITY_EXT
    cdef int GL_INTENSITY4_EXT
    cdef int GL_INTENSITY8_EXT
    cdef int GL_INTENSITY12_EXT
    cdef int GL_INTENSITY16_EXT
    cdef int GL_RGB2_EXT
    cdef int GL_RGB4_EXT
    cdef int GL_RGB5_EXT
    cdef int GL_RGB8_EXT
    cdef int GL_RGB10_EXT
    cdef int GL_RGB12_EXT
    cdef int GL_RGB16_EXT
    cdef int GL_RGBA2_EXT
    cdef int GL_RGBA4_EXT
    cdef int GL_RGB5_A1_EXT
    cdef int GL_RGBA8_EXT
    cdef int GL_RGB10_A2_EXT
    cdef int GL_RGBA12_EXT
    cdef int GL_RGBA16_EXT
    cdef int GL_TEXTURE_RED_SIZE_EXT
    cdef int GL_TEXTURE_GREEN_SIZE_EXT
    cdef int GL_TEXTURE_BLUE_SIZE_EXT
    cdef int GL_TEXTURE_ALPHA_SIZE_EXT
    cdef int GL_TEXTURE_LUMINANCE_SIZE_EXT
    cdef int GL_TEXTURE_INTENSITY_SIZE_EXT
    cdef int GL_REPLACE_EXT
    cdef int GL_PROXY_TEXTURE_1D_EXT
    cdef int GL_PROXY_TEXTURE_2D_EXT

    #GL_EXT_texture3D

    cdef int GL_EXT_texture3D

    cdef int GL_PACK_SKIP_IMAGES_EXT
    cdef int GL_PACK_IMAGE_HEIGHT_EXT
    cdef int GL_UNPACK_SKIP_IMAGES_EXT
    cdef int GL_UNPACK_IMAGE_HEIGHT_EXT
    cdef int GL_TEXTURE_3D_EXT
    cdef int GL_PROXY_TEXTURE_3D_EXT
    cdef int GL_TEXTURE_DEPTH_EXT
    cdef int GL_TEXTURE_WRAP_R_EXT
    cdef int GL_MAX_3D_TEXTURE_SIZE_EXT

    void glTexImage3DEXT (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const_void_ptr  pixels)

    #GL_EXT_texture_array

    cdef int GL_EXT_texture_array

    cdef int GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT
    cdef int GL_MAX_ARRAY_TEXTURE_LAYERS_EXT
    cdef int GL_TEXTURE_1D_ARRAY_EXT
    cdef int GL_PROXY_TEXTURE_1D_ARRAY_EXT
    cdef int GL_TEXTURE_2D_ARRAY_EXT
    cdef int GL_PROXY_TEXTURE_2D_ARRAY_EXT
    cdef int GL_TEXTURE_BINDING_1D_ARRAY_EXT
    cdef int GL_TEXTURE_BINDING_2D_ARRAY_EXT

    void glFramebufferTextureLayerEXT (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

    #GL_EXT_texture_buffer_object

    cdef int GL_EXT_texture_buffer_object

    cdef int GL_TEXTURE_BUFFER_EXT
    cdef int GL_MAX_TEXTURE_BUFFER_SIZE_EXT
    cdef int GL_TEXTURE_BINDING_BUFFER_EXT
    cdef int GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT
    cdef int GL_TEXTURE_BUFFER_FORMAT_EXT

    void glTexBufferEXT (GLenum target, GLenum internalformat, GLuint buffer)

    #GL_EXT_texture_compression_dxt1

    cdef int GL_EXT_texture_compression_dxt1

    cdef int GL_COMPRESSED_RGB_S3TC_DXT1_EXT
    cdef int GL_COMPRESSED_RGBA_S3TC_DXT1_EXT

    #GL_EXT_texture_compression_latc

    cdef int GL_EXT_texture_compression_latc

    cdef int GL_COMPRESSED_LUMINANCE_LATC1_EXT
    cdef int GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT
    cdef int GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT
    cdef int GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT

    #GL_EXT_texture_compression_rgtc

    cdef int GL_EXT_texture_compression_rgtc

    cdef int GL_COMPRESSED_RED_RGTC1_EXT
    cdef int GL_COMPRESSED_SIGNED_RED_RGTC1_EXT
    cdef int GL_COMPRESSED_RED_GREEN_RGTC2_EXT
    cdef int GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT

    #GL_EXT_texture_compression_s3tc

    cdef int GL_EXT_texture_compression_s3tc

    cdef int GL_COMPRESSED_RGB_S3TC_DXT1_EXT
    cdef int GL_COMPRESSED_RGBA_S3TC_DXT1_EXT
    cdef int GL_COMPRESSED_RGBA_S3TC_DXT3_EXT
    cdef int GL_COMPRESSED_RGBA_S3TC_DXT5_EXT

    #GL_EXT_texture_cube_map

    cdef int GL_EXT_texture_cube_map

    cdef int GL_NORMAL_MAP_EXT
    cdef int GL_REFLECTION_MAP_EXT
    cdef int GL_TEXTURE_CUBE_MAP_EXT
    cdef int GL_TEXTURE_BINDING_CUBE_MAP_EXT
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT
    cdef int GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT
    cdef int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT
    cdef int GL_PROXY_TEXTURE_CUBE_MAP_EXT
    cdef int GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT

    #GL_EXT_texture_edge_clamp

    cdef int GL_EXT_texture_edge_clamp

    cdef int GL_CLAMP_TO_EDGE_EXT

    #GL_EXT_texture_env

    cdef int GL_EXT_texture_env

    cdef int GL_TEXTURE_ENV0_EXT
    cdef int GL_ENV_BLEND_EXT
    cdef int GL_TEXTURE_ENV_SHIFT_EXT
    cdef int GL_ENV_REPLACE_EXT
    cdef int GL_ENV_ADD_EXT
    cdef int GL_ENV_SUBTRACT_EXT
    cdef int GL_TEXTURE_ENV_MODE_ALPHA_EXT
    cdef int GL_ENV_REVERSE_SUBTRACT_EXT
    cdef int GL_ENV_REVERSE_BLEND_EXT
    cdef int GL_ENV_COPY_EXT
    cdef int GL_ENV_MODULATE_EXT

    #GL_EXT_texture_env_add

    cdef int GL_EXT_texture_env_add

    #GL_EXT_texture_env_combine

    cdef int GL_EXT_texture_env_combine

    cdef int GL_COMBINE_EXT
    cdef int GL_COMBINE_RGB_EXT
    cdef int GL_COMBINE_ALPHA_EXT
    cdef int GL_RGB_SCALE_EXT
    cdef int GL_ADD_SIGNED_EXT
    cdef int GL_INTERPOLATE_EXT
    cdef int GL_CONSTANT_EXT
    cdef int GL_PRIMARY_COLOR_EXT
    cdef int GL_PREVIOUS_EXT
    cdef int GL_SOURCE0_RGB_EXT
    cdef int GL_SOURCE1_RGB_EXT
    cdef int GL_SOURCE2_RGB_EXT
    cdef int GL_SOURCE0_ALPHA_EXT
    cdef int GL_SOURCE1_ALPHA_EXT
    cdef int GL_SOURCE2_ALPHA_EXT
    cdef int GL_OPERAND0_RGB_EXT
    cdef int GL_OPERAND1_RGB_EXT
    cdef int GL_OPERAND2_RGB_EXT
    cdef int GL_OPERAND0_ALPHA_EXT
    cdef int GL_OPERAND1_ALPHA_EXT
    cdef int GL_OPERAND2_ALPHA_EXT

    #GL_EXT_texture_env_dot3

    cdef int GL_EXT_texture_env_dot3

    cdef int GL_DOT3_RGB_EXT
    cdef int GL_DOT3_RGBA_EXT

    #GL_EXT_texture_filter_anisotropic

    cdef int GL_EXT_texture_filter_anisotropic

    cdef int GL_TEXTURE_MAX_ANISOTROPY_EXT
    cdef int GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT

    #GL_EXT_texture_integer

    cdef int GL_EXT_texture_integer

    cdef int GL_RGBA32UI_EXT
    cdef int GL_RGB32UI_EXT
    cdef int GL_ALPHA32UI_EXT
    cdef int GL_INTENSITY32UI_EXT
    cdef int GL_LUMINANCE32UI_EXT
    cdef int GL_LUMINANCE_ALPHA32UI_EXT
    cdef int GL_RGBA16UI_EXT
    cdef int GL_RGB16UI_EXT
    cdef int GL_ALPHA16UI_EXT
    cdef int GL_INTENSITY16UI_EXT
    cdef int GL_LUMINANCE16UI_EXT
    cdef int GL_LUMINANCE_ALPHA16UI_EXT
    cdef int GL_RGBA8UI_EXT
    cdef int GL_RGB8UI_EXT
    cdef int GL_ALPHA8UI_EXT
    cdef int GL_INTENSITY8UI_EXT
    cdef int GL_LUMINANCE8UI_EXT
    cdef int GL_LUMINANCE_ALPHA8UI_EXT
    cdef int GL_RGBA32I_EXT
    cdef int GL_RGB32I_EXT
    cdef int GL_ALPHA32I_EXT
    cdef int GL_INTENSITY32I_EXT
    cdef int GL_LUMINANCE32I_EXT
    cdef int GL_LUMINANCE_ALPHA32I_EXT
    cdef int GL_RGBA16I_EXT
    cdef int GL_RGB16I_EXT
    cdef int GL_ALPHA16I_EXT
    cdef int GL_INTENSITY16I_EXT
    cdef int GL_LUMINANCE16I_EXT
    cdef int GL_LUMINANCE_ALPHA16I_EXT
    cdef int GL_RGBA8I_EXT
    cdef int GL_RGB8I_EXT
    cdef int GL_ALPHA8I_EXT
    cdef int GL_INTENSITY8I_EXT
    cdef int GL_LUMINANCE8I_EXT
    cdef int GL_LUMINANCE_ALPHA8I_EXT
    cdef int GL_RED_INTEGER_EXT
    cdef int GL_GREEN_INTEGER_EXT
    cdef int GL_BLUE_INTEGER_EXT
    cdef int GL_ALPHA_INTEGER_EXT
    cdef int GL_RGB_INTEGER_EXT
    cdef int GL_RGBA_INTEGER_EXT
    cdef int GL_BGR_INTEGER_EXT
    cdef int GL_BGRA_INTEGER_EXT
    cdef int GL_LUMINANCE_INTEGER_EXT
    cdef int GL_LUMINANCE_ALPHA_INTEGER_EXT
    cdef int GL_RGBA_INTEGER_MODE_EXT

    void glClearColorIiEXT (GLint red, GLint green, GLint blue, GLint alpha)
    void glClearColorIuiEXT (GLuint red, GLuint green, GLuint blue, GLuint alpha)
    void glGetTexParameterIivEXT (GLenum target, GLenum pname, GLint *params)
    void glGetTexParameterIuivEXT (GLenum target, GLenum pname, GLuint *params)
    void glTexParameterIivEXT (GLenum target, GLenum pname, GLint* params)
    void glTexParameterIuivEXT (GLenum target, GLenum pname, GLuint* params)

    #GL_EXT_texture_lod_bias

    cdef int GL_EXT_texture_lod_bias

    cdef int GL_MAX_TEXTURE_LOD_BIAS_EXT
    cdef int GL_TEXTURE_FILTER_CONTROL_EXT
    cdef int GL_TEXTURE_LOD_BIAS_EXT

    #GL_EXT_texture_mirror_clamp

    cdef int GL_EXT_texture_mirror_clamp

    cdef int GL_MIRROR_CLAMP_EXT
    cdef int GL_MIRROR_CLAMP_TO_EDGE_EXT
    cdef int GL_MIRROR_CLAMP_TO_BORDER_EXT

    #GL_EXT_texture_object

    cdef int GL_EXT_texture_object

    cdef int GL_TEXTURE_PRIORITY_EXT
    cdef int GL_TEXTURE_RESIDENT_EXT
    cdef int GL_TEXTURE_1D_BINDING_EXT
    cdef int GL_TEXTURE_2D_BINDING_EXT
    cdef int GL_TEXTURE_3D_BINDING_EXT

    GLboolean glAreTexturesResidentEXT (GLsizei n, GLuint textures, GLboolean* residences)
    void glBindTextureEXT (GLenum target, GLuint texture)
    void glDeleteTexturesEXT (GLsizei n, GLuint* textures)
    void glGenTexturesEXT (GLsizei n, GLuint* textures)
    GLboolean glIsTextureEXT (GLuint texture)
    void glPrioritizeTexturesEXT (GLsizei n, GLuint* textures, GLclampf* priorities)

    #GL_EXT_texture_perturb_normal

    cdef int GL_EXT_texture_perturb_normal

    cdef int GL_PERTURB_EXT
    cdef int GL_TEXTURE_NORMAL_EXT

    void glTextureNormalEXT (GLenum mode)

    #GL_EXT_texture_rectangle

    cdef int GL_EXT_texture_rectangle

    cdef int GL_TEXTURE_RECTANGLE_EXT
    cdef int GL_TEXTURE_BINDING_RECTANGLE_EXT
    cdef int GL_PROXY_TEXTURE_RECTANGLE_EXT
    cdef int GL_MAX_RECTANGLE_TEXTURE_SIZE_EXT

    #GL_EXT_texture_sRGB

    cdef int GL_EXT_texture_sRGB

    cdef int GL_SRGB_EXT
    cdef int GL_SRGB8_EXT
    cdef int GL_SRGB_ALPHA_EXT
    cdef int GL_SRGB8_ALPHA8_EXT
    cdef int GL_SLUMINANCE_ALPHA_EXT
    cdef int GL_SLUMINANCE8_ALPHA8_EXT
    cdef int GL_SLUMINANCE_EXT
    cdef int GL_SLUMINANCE8_EXT
    cdef int GL_COMPRESSED_SRGB_EXT
    cdef int GL_COMPRESSED_SRGB_ALPHA_EXT
    cdef int GL_COMPRESSED_SLUMINANCE_EXT
    cdef int GL_COMPRESSED_SLUMINANCE_ALPHA_EXT
    cdef int GL_COMPRESSED_SRGB_S3TC_DXT1_EXT
    cdef int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT
    cdef int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT
    cdef int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT

    #GL_EXT_texture_sRGB_decode

    cdef int GL_EXT_texture_sRGB_decode

    cdef int GL_TEXTURE_SRGB_DECODE_EXT
    cdef int GL_DECODE_EXT
    cdef int GL_SKIP_DECODE_EXT

    #GL_EXT_texture_shared_exponent

    cdef int GL_EXT_texture_shared_exponent

    cdef int GL_RGB9_E5_EXT
    cdef int GL_UNSIGNED_INT_5_9_9_9_REV_EXT
    cdef int GL_TEXTURE_SHARED_SIZE_EXT

    #GL_EXT_texture_snorm

    cdef int GL_EXT_texture_snorm

    cdef int GL_RED_SNORM
    cdef int GL_RG_SNORM
    cdef int GL_RGB_SNORM
    cdef int GL_RGBA_SNORM
    cdef int GL_R8_SNORM
    cdef int GL_RG8_SNORM
    cdef int GL_RGB8_SNORM
    cdef int GL_RGBA8_SNORM
    cdef int GL_R16_SNORM
    cdef int GL_RG16_SNORM
    cdef int GL_RGB16_SNORM
    cdef int GL_RGBA16_SNORM
    cdef int GL_SIGNED_NORMALIZED
    cdef int GL_ALPHA_SNORM
    cdef int GL_LUMINANCE_SNORM
    cdef int GL_LUMINANCE_ALPHA_SNORM
    cdef int GL_INTENSITY_SNORM
    cdef int GL_ALPHA8_SNORM
    cdef int GL_LUMINANCE8_SNORM
    cdef int GL_LUMINANCE8_ALPHA8_SNORM
    cdef int GL_INTENSITY8_SNORM
    cdef int GL_ALPHA16_SNORM
    cdef int GL_LUMINANCE16_SNORM
    cdef int GL_LUMINANCE16_ALPHA16_SNORM
    cdef int GL_INTENSITY16_SNORM

    #GL_EXT_texture_swizzle

    cdef int GL_EXT_texture_swizzle

    cdef int GL_TEXTURE_SWIZZLE_R_EXT
    cdef int GL_TEXTURE_SWIZZLE_G_EXT
    cdef int GL_TEXTURE_SWIZZLE_B_EXT
    cdef int GL_TEXTURE_SWIZZLE_A_EXT
    cdef int GL_TEXTURE_SWIZZLE_RGBA_EXT

    #GL_EXT_timer_query

    cdef int GL_EXT_timer_query

    cdef int GL_TIME_ELAPSED_EXT

    void glGetQueryObjecti64vEXT (GLuint id, GLenum pname, GLint64EXT *params)
    void glGetQueryObjectui64vEXT (GLuint id, GLenum pname, GLuint64EXT *params)

    #GL_EXT_transform_feedback

    cdef int GL_EXT_transform_feedback

    cdef int GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT
    cdef int GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT
    cdef int GL_TRANSFORM_FEEDBACK_VARYINGS_EXT
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT
    cdef int GL_PRIMITIVES_GENERATED_EXT
    cdef int GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT
    cdef int GL_RASTERIZER_DISCARD_EXT
    cdef int GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT
    cdef int GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT
    cdef int GL_INTERLEAVED_ATTRIBS_EXT
    cdef int GL_SEPARATE_ATTRIBS_EXT
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_EXT
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT

    void glBeginTransformFeedbackEXT (GLenum primitiveMode)
    void glBindBufferBaseEXT (GLenum target, GLuint index, GLuint buffer)
    void glBindBufferOffsetEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset)
    void glBindBufferRangeEXT (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)
    void glEndTransformFeedbackEXT ()
    void glGetTransformFeedbackVaryingEXT (GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei *size, GLenum *type, char *name)
    void glTransformFeedbackVaryingsEXT (GLuint program, GLsizei count, const_char_ptr * varyings, GLenum bufferMode)

    #GL_EXT_vertex_array

    cdef int GL_EXT_vertex_array

    cdef int GL_DOUBLE_EXT
    cdef int GL_VERTEX_ARRAY_EXT
    cdef int GL_NORMAL_ARRAY_EXT
    cdef int GL_COLOR_ARRAY_EXT
    cdef int GL_INDEX_ARRAY_EXT
    cdef int GL_TEXTURE_COORD_ARRAY_EXT
    cdef int GL_EDGE_FLAG_ARRAY_EXT
    cdef int GL_VERTEX_ARRAY_SIZE_EXT
    cdef int GL_VERTEX_ARRAY_TYPE_EXT
    cdef int GL_VERTEX_ARRAY_STRIDE_EXT
    cdef int GL_VERTEX_ARRAY_COUNT_EXT
    cdef int GL_NORMAL_ARRAY_TYPE_EXT
    cdef int GL_NORMAL_ARRAY_STRIDE_EXT
    cdef int GL_NORMAL_ARRAY_COUNT_EXT
    cdef int GL_COLOR_ARRAY_SIZE_EXT
    cdef int GL_COLOR_ARRAY_TYPE_EXT
    cdef int GL_COLOR_ARRAY_STRIDE_EXT
    cdef int GL_COLOR_ARRAY_COUNT_EXT
    cdef int GL_INDEX_ARRAY_TYPE_EXT
    cdef int GL_INDEX_ARRAY_STRIDE_EXT
    cdef int GL_INDEX_ARRAY_COUNT_EXT
    cdef int GL_TEXTURE_COORD_ARRAY_SIZE_EXT
    cdef int GL_TEXTURE_COORD_ARRAY_TYPE_EXT
    cdef int GL_TEXTURE_COORD_ARRAY_STRIDE_EXT
    cdef int GL_TEXTURE_COORD_ARRAY_COUNT_EXT
    cdef int GL_EDGE_FLAG_ARRAY_STRIDE_EXT
    cdef int GL_EDGE_FLAG_ARRAY_COUNT_EXT
    cdef int GL_VERTEX_ARRAY_POINTER_EXT
    cdef int GL_NORMAL_ARRAY_POINTER_EXT
    cdef int GL_COLOR_ARRAY_POINTER_EXT
    cdef int GL_INDEX_ARRAY_POINTER_EXT
    cdef int GL_TEXTURE_COORD_ARRAY_POINTER_EXT
    cdef int GL_EDGE_FLAG_ARRAY_POINTER_EXT

    void glArrayElementEXT (GLint i)
    void glColorPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const_void_ptr  pointer)
    void glDrawArraysEXT (GLenum mode, GLint first, GLsizei count)
    void glEdgeFlagPointerEXT (GLsizei stride, GLsizei count, GLboolean pointer)
    void glIndexPointerEXT (GLenum type, GLsizei stride, GLsizei count, const_void_ptr  pointer)
    void glNormalPointerEXT (GLenum type, GLsizei stride, GLsizei count, const_void_ptr  pointer)
    void glTexCoordPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const_void_ptr  pointer)
    void glVertexPointerEXT (GLint size, GLenum type, GLsizei stride, GLsizei count, const_void_ptr  pointer)

    #GL_EXT_vertex_array_bgra

    cdef int GL_EXT_vertex_array_bgra

    cdef int GL_BGRA

    #GL_EXT_vertex_attrib_64bit

    cdef int GL_EXT_vertex_attrib_64bit

    cdef int GL_DOUBLE_MAT2_EXT
    cdef int GL_DOUBLE_MAT3_EXT
    cdef int GL_DOUBLE_MAT4_EXT
    cdef int GL_DOUBLE_MAT2x3_EXT
    cdef int GL_DOUBLE_MAT2x4_EXT
    cdef int GL_DOUBLE_MAT3x2_EXT
    cdef int GL_DOUBLE_MAT3x4_EXT
    cdef int GL_DOUBLE_MAT4x2_EXT
    cdef int GL_DOUBLE_MAT4x3_EXT
    cdef int GL_DOUBLE_VEC2_EXT
    cdef int GL_DOUBLE_VEC3_EXT
    cdef int GL_DOUBLE_VEC4_EXT

    void glGetVertexAttribLdvEXT (GLuint index, GLenum pname, GLdouble* params)
    void glVertexArrayVertexAttribLOffsetEXT (GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset)
    void glVertexAttribL1dEXT (GLuint index, GLdouble x)
    void glVertexAttribL1dvEXT (GLuint index, GLdouble*  v)
    void glVertexAttribL2dEXT (GLuint index, GLdouble x, GLdouble y)
    void glVertexAttribL2dvEXT (GLuint index, GLdouble*  v)
    void glVertexAttribL3dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z)
    void glVertexAttribL3dvEXT (GLuint index, GLdouble*  v)
    void glVertexAttribL4dEXT (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glVertexAttribL4dvEXT (GLuint index, GLdouble*  v)
    void glVertexAttribLPointerEXT (GLuint index, GLint size, GLenum type, GLsizei stride, const_void_ptr  pointer)

    #GL_EXT_vertex_shader

    cdef int GL_EXT_vertex_shader

    cdef int GL_VERTEX_SHADER_EXT
    cdef int GL_VERTEX_SHADER_BINDING_EXT
    cdef int GL_OP_INDEX_EXT
    cdef int GL_OP_NEGATE_EXT
    cdef int GL_OP_DOT3_EXT
    cdef int GL_OP_DOT4_EXT
    cdef int GL_OP_MUL_EXT
    cdef int GL_OP_ADD_EXT
    cdef int GL_OP_MADD_EXT
    cdef int GL_OP_FRAC_EXT
    cdef int GL_OP_MAX_EXT
    cdef int GL_OP_MIN_EXT
    cdef int GL_OP_SET_GE_EXT
    cdef int GL_OP_SET_LT_EXT
    cdef int GL_OP_CLAMP_EXT
    cdef int GL_OP_FLOOR_EXT
    cdef int GL_OP_ROUND_EXT
    cdef int GL_OP_EXP_BASE_2_EXT
    cdef int GL_OP_LOG_BASE_2_EXT
    cdef int GL_OP_POWER_EXT
    cdef int GL_OP_RECIP_EXT
    cdef int GL_OP_RECIP_SQRT_EXT
    cdef int GL_OP_SUB_EXT
    cdef int GL_OP_CROSS_PRODUCT_EXT
    cdef int GL_OP_MULTIPLY_MATRIX_EXT
    cdef int GL_OP_MOV_EXT
    cdef int GL_OUTPUT_VERTEX_EXT
    cdef int GL_OUTPUT_COLOR0_EXT
    cdef int GL_OUTPUT_COLOR1_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD0_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD1_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD2_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD3_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD4_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD5_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD6_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD7_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD8_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD9_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD10_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD11_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD12_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD13_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD14_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD15_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD16_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD17_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD18_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD19_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD20_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD21_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD22_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD23_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD24_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD25_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD26_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD27_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD28_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD29_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD30_EXT
    cdef int GL_OUTPUT_TEXTURE_COORD31_EXT
    cdef int GL_OUTPUT_FOG_EXT
    cdef int GL_SCALAR_EXT
    cdef int GL_VECTOR_EXT
    cdef int GL_MATRIX_EXT
    cdef int GL_VARIANT_EXT
    cdef int GL_INVARIANT_EXT
    cdef int GL_LOCAL_CONSTANT_EXT
    cdef int GL_LOCAL_EXT
    cdef int GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT
    cdef int GL_MAX_VERTEX_SHADER_VARIANTS_EXT
    cdef int GL_MAX_VERTEX_SHADER_INVARIANTS_EXT
    cdef int GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
    cdef int GL_MAX_VERTEX_SHADER_LOCALS_EXT
    cdef int GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT
    cdef int GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT
    cdef int GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT
    cdef int GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
    cdef int GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT
    cdef int GL_VERTEX_SHADER_INSTRUCTIONS_EXT
    cdef int GL_VERTEX_SHADER_VARIANTS_EXT
    cdef int GL_VERTEX_SHADER_INVARIANTS_EXT
    cdef int GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
    cdef int GL_VERTEX_SHADER_LOCALS_EXT
    cdef int GL_VERTEX_SHADER_OPTIMIZED_EXT
    cdef int GL_X_EXT
    cdef int GL_Y_EXT
    cdef int GL_Z_EXT
    cdef int GL_W_EXT
    cdef int GL_NEGATIVE_X_EXT
    cdef int GL_NEGATIVE_Y_EXT
    cdef int GL_NEGATIVE_Z_EXT
    cdef int GL_NEGATIVE_W_EXT
    cdef int GL_ZERO_EXT
    cdef int GL_ONE_EXT
    cdef int GL_NEGATIVE_ONE_EXT
    cdef int GL_NORMALIZED_RANGE_EXT
    cdef int GL_FULL_RANGE_EXT
    cdef int GL_CURRENT_VERTEX_EXT
    cdef int GL_MVP_MATRIX_EXT
    cdef int GL_VARIANT_VALUE_EXT
    cdef int GL_VARIANT_DATATYPE_EXT
    cdef int GL_VARIANT_ARRAY_STRIDE_EXT
    cdef int GL_VARIANT_ARRAY_TYPE_EXT
    cdef int GL_VARIANT_ARRAY_EXT
    cdef int GL_VARIANT_ARRAY_POINTER_EXT
    cdef int GL_INVARIANT_VALUE_EXT
    cdef int GL_INVARIANT_DATATYPE_EXT
    cdef int GL_LOCAL_CONSTANT_VALUE_EXT
    cdef int GL_LOCAL_CONSTANT_DATATYPE_EXT

    void glBeginVertexShaderEXT ()
    GLuint glBindLightParameterEXT (GLenum light, GLenum value)
    GLuint glBindMaterialParameterEXT (GLenum face, GLenum value)
    GLuint glBindParameterEXT (GLenum value)
    GLuint glBindTexGenParameterEXT (GLenum unit, GLenum coord, GLenum value)
    GLuint glBindTextureUnitParameterEXT (GLenum unit, GLenum value)
    void glBindVertexShaderEXT (GLuint id)
    void glDeleteVertexShaderEXT (GLuint id)
    void glDisableVariantClientStateEXT (GLuint id)
    void glEnableVariantClientStateEXT (GLuint id)
    void glEndVertexShaderEXT ()
    void glExtractComponentEXT (GLuint res, GLuint src, GLuint num)
    GLuint glGenSymbolsEXT (GLenum dataType, GLenum storageType, GLenum range, GLuint components)
    GLuint glGenVertexShadersEXT (GLuint range)
    void glGetInvariantBooleanvEXT (GLuint id, GLenum value, GLboolean *data)
    void glGetInvariantFloatvEXT (GLuint id, GLenum value, GLfloat *data)
    void glGetInvariantIntegervEXT (GLuint id, GLenum value, GLint *data)
    void glGetLocalConstantBooleanvEXT (GLuint id, GLenum value, GLboolean *data)
    void glGetLocalConstantFloatvEXT (GLuint id, GLenum value, GLfloat *data)
    void glGetLocalConstantIntegervEXT (GLuint id, GLenum value, GLint *data)
    void glGetVariantBooleanvEXT (GLuint id, GLenum value, GLboolean *data)
    void glGetVariantFloatvEXT (GLuint id, GLenum value, GLfloat *data)
    void glGetVariantIntegervEXT (GLuint id, GLenum value, GLint *data)
    void glGetVariantPointervEXT (GLuint id, GLenum value, GLvoid **data)
    void glInsertComponentEXT (GLuint res, GLuint src, GLuint num)
    GLboolean glIsVariantEnabledEXT (GLuint id, GLenum cap)
    void glSetInvariantEXT (GLuint id, GLenum type, GLvoid *addr)
    void glSetLocalConstantEXT (GLuint id, GLenum type, GLvoid *addr)
    void glShaderOp1EXT (GLenum op, GLuint res, GLuint arg1)
    void glShaderOp2EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2)
    void glShaderOp3EXT (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3)
    void glSwizzleEXT (GLuint res, GLuint in1, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)
    void glVariantPointerEXT (GLuint id, GLenum type, GLuint stride, GLvoid *addr)
    void glVariantbvEXT (GLuint id, GLbyte *addr)
    void glVariantdvEXT (GLuint id, GLdouble *addr)
    void glVariantfvEXT (GLuint id, GLfloat *addr)
    void glVariantivEXT (GLuint id, GLint *addr)
    void glVariantsvEXT (GLuint id, GLshort *addr)
    void glVariantubvEXT (GLuint id, GLubyte *addr)
    void glVariantuivEXT (GLuint id, GLuint *addr)
    void glVariantusvEXT (GLuint id, GLushort *addr)
    void glWriteMaskEXT (GLuint res, GLuint in1, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)

    #GL_EXT_vertex_weighting

    cdef int GL_EXT_vertex_weighting

    cdef int GL_MODELVIEW0_STACK_DEPTH_EXT
    cdef int GL_MODELVIEW0_MATRIX_EXT
    cdef int GL_MODELVIEW0_EXT
    cdef int GL_MODELVIEW1_STACK_DEPTH_EXT
    cdef int GL_MODELVIEW1_MATRIX_EXT
    cdef int GL_VERTEX_WEIGHTING_EXT
    cdef int GL_MODELVIEW1_EXT
    cdef int GL_CURRENT_VERTEX_WEIGHT_EXT
    cdef int GL_VERTEX_WEIGHT_ARRAY_EXT
    cdef int GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT
    cdef int GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT
    cdef int GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT
    cdef int GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT

    void glVertexWeightPointerEXT (GLint size, GLenum type, GLsizei stride, void* pointer)
    void glVertexWeightfEXT (GLfloat weight)
    void glVertexWeightfvEXT (GLfloat* weight)

    #GL_EXT_x11_sync_object

    cdef int GL_EXT_x11_sync_object

    cdef int GL_SYNC_X11_FENCE_EXT

    GLsync glImportSyncEXT (GLenum external_sync_type, GLintptr external_sync, GLbitfield flags)

    #GL_GREMEDY_frame_terminator

    cdef int GL_GREMEDY_frame_terminator

    void glFrameTerminatorGREMEDY ()

    #GL_GREMEDY_string_marker

    cdef int GL_GREMEDY_string_marker

    void glStringMarkerGREMEDY (GLsizei len, const_void_ptr  string)

    #GL_HP_convolution_border_modes

    cdef int GL_HP_convolution_border_modes

    #GL_HP_image_transform

    cdef int GL_HP_image_transform

    void glGetImageTransformParameterfvHP (GLenum target, GLenum pname, GLfloat*  params)
    void glGetImageTransformParameterivHP (GLenum target, GLenum pname, GLint*  params)
    void glImageTransformParameterfHP (GLenum target, GLenum pname, GLfloat param)
    void glImageTransformParameterfvHP (GLenum target, GLenum pname, GLfloat*  params)
    void glImageTransformParameteriHP (GLenum target, GLenum pname, GLint param)
    void glImageTransformParameterivHP (GLenum target, GLenum pname, GLint*  params)

    #GL_HP_occlusion_test

    cdef int GL_HP_occlusion_test

    cdef int GL_OCCLUSION_TEST_HP
    cdef int GL_OCCLUSION_TEST_RESULT_HP

    #GL_HP_texture_lighting

    cdef int GL_HP_texture_lighting

    #GL_IBM_cull_vertex

    cdef int GL_IBM_cull_vertex

    cdef int GL_CULL_VERTEX_IBM

    #GL_IBM_multimode_draw_arrays

    cdef int GL_IBM_multimode_draw_arrays

    void glMultiModeDrawArraysIBM (GLenum mode, GLint first, GLsizei count, GLsizei primcount, GLint modestride)
    void glMultiModeDrawElementsIBM (GLenum mode, GLsizei count, GLenum type, GLvoid *indices, GLsizei primcount, GLint modestride)

    #GL_IBM_rasterpos_clip

    cdef int GL_IBM_rasterpos_clip

    cdef int GL_RASTER_POSITION_UNCLIPPED_IBM

    #GL_IBM_static_data

    cdef int GL_IBM_static_data

    cdef int GL_ALL_STATIC_DATA_IBM
    cdef int GL_STATIC_VERTEX_ARRAY_IBM

    #GL_IBM_texture_mirrored_repeat

    cdef int GL_IBM_texture_mirrored_repeat

    cdef int GL_MIRRORED_REPEAT_IBM

    #GL_IBM_vertex_array_lists

    cdef int GL_IBM_vertex_array_lists

    cdef int GL_VERTEX_ARRAY_LIST_IBM
    cdef int GL_NORMAL_ARRAY_LIST_IBM
    cdef int GL_COLOR_ARRAY_LIST_IBM
    cdef int GL_INDEX_ARRAY_LIST_IBM
    cdef int GL_TEXTURE_COORD_ARRAY_LIST_IBM
    cdef int GL_EDGE_FLAG_ARRAY_LIST_IBM
    cdef int GL_FOG_COORDINATE_ARRAY_LIST_IBM
    cdef int GL_SECONDARY_COLOR_ARRAY_LIST_IBM
    cdef int GL_VERTEX_ARRAY_LIST_STRIDE_IBM
    cdef int GL_NORMAL_ARRAY_LIST_STRIDE_IBM
    cdef int GL_COLOR_ARRAY_LIST_STRIDE_IBM
    cdef int GL_INDEX_ARRAY_LIST_STRIDE_IBM
    cdef int GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM
    cdef int GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM
    cdef int GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM
    cdef int GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM

    void glColorPointerListIBM (GLint size, GLenum type, GLint stride, GLvoid * pointer, GLint ptrstride)
    void glEdgeFlagPointerListIBM (GLint stride, GLboolean* pointer, GLint ptrstride)
    void glFogCoordPointerListIBM (GLenum type, GLint stride, GLvoid * pointer, GLint ptrstride)
    void glIndexPointerListIBM (GLenum type, GLint stride, GLvoid * pointer, GLint ptrstride)
    void glNormalPointerListIBM (GLenum type, GLint stride, GLvoid * pointer, GLint ptrstride)
    void glSecondaryColorPointerListIBM (GLint size, GLenum type, GLint stride, GLvoid * pointer, GLint ptrstride)
    void glTexCoordPointerListIBM (GLint size, GLenum type, GLint stride, GLvoid * pointer, GLint ptrstride)
    void glVertexPointerListIBM (GLint size, GLenum type, GLint stride, GLvoid * pointer, GLint ptrstride)

    #GL_INGR_color_clamp

    cdef int GL_INGR_color_clamp

    cdef int GL_RED_MIN_CLAMP_INGR
    cdef int GL_GREEN_MIN_CLAMP_INGR
    cdef int GL_BLUE_MIN_CLAMP_INGR
    cdef int GL_ALPHA_MIN_CLAMP_INGR
    cdef int GL_RED_MAX_CLAMP_INGR
    cdef int GL_GREEN_MAX_CLAMP_INGR
    cdef int GL_BLUE_MAX_CLAMP_INGR
    cdef int GL_ALPHA_MAX_CLAMP_INGR

    #GL_INGR_interlace_read

    cdef int GL_INGR_interlace_read

    cdef int GL_INTERLACE_READ_INGR

    #GL_INTEL_parallel_arrays

    cdef int GL_INTEL_parallel_arrays

    cdef int GL_PARALLEL_ARRAYS_INTEL
    cdef int GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL
    cdef int GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL
    cdef int GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL
    cdef int GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL

    void glColorPointervINTEL (GLint size, GLenum type, const_void_ptr * pointer)
    void glNormalPointervINTEL (GLenum type, const_void_ptr * pointer)
    void glTexCoordPointervINTEL (GLint size, GLenum type, const_void_ptr * pointer)
    void glVertexPointervINTEL (GLint size, GLenum type, const_void_ptr * pointer)

    #GL_INTEL_texture_scissor

    cdef int GL_INTEL_texture_scissor

    void glTexScissorFuncINTEL (GLenum target, GLenum lfunc, GLenum hfunc)
    void glTexScissorINTEL (GLenum target, GLclampf tlow, GLclampf thigh)

    #GL_KTX_buffer_region

    cdef int GL_KTX_buffer_region

    cdef int GL_KTX_FRONT_REGION
    cdef int GL_KTX_BACK_REGION
    cdef int GL_KTX_Z_REGION
    cdef int GL_KTX_STENCIL_REGION

    GLuint glBufferRegionEnabled ()
    void glDeleteBufferRegion (GLenum region)
    void glDrawBufferRegion (GLuint region, GLint x, GLint y, GLsizei width, GLsizei height, GLint xDest, GLint yDest)
    GLuint glNewBufferRegion (GLenum region)
    void glReadBufferRegion (GLuint region, GLint x, GLint y, GLsizei width, GLsizei height)

    #GL_MESAX_texture_stack

    cdef int GL_MESAX_texture_stack

    cdef int GL_TEXTURE_1D_STACK_MESAX
    cdef int GL_TEXTURE_2D_STACK_MESAX
    cdef int GL_PROXY_TEXTURE_1D_STACK_MESAX
    cdef int GL_PROXY_TEXTURE_2D_STACK_MESAX
    cdef int GL_TEXTURE_1D_STACK_BINDING_MESAX
    cdef int GL_TEXTURE_2D_STACK_BINDING_MESAX

    #GL_MESA_pack_invert

    cdef int GL_MESA_pack_invert

    cdef int GL_PACK_INVERT_MESA

    #GL_MESA_resize_buffers

    cdef int GL_MESA_resize_buffers

    void glResizeBuffersMESA ()

    #GL_MESA_window_pos

    cdef int GL_MESA_window_pos

    void glWindowPos2dMESA (GLdouble x, GLdouble y)
    void glWindowPos2dvMESA (GLdouble*  p)
    void glWindowPos2fMESA (GLfloat x, GLfloat y)
    void glWindowPos2fvMESA (GLfloat*  p)
    void glWindowPos2iMESA (GLint x, GLint y)
    void glWindowPos2ivMESA (GLint*  p)
    void glWindowPos2sMESA (GLshort x, GLshort y)
    void glWindowPos2svMESA (GLshort*  p)
    void glWindowPos3dMESA (GLdouble x, GLdouble y, GLdouble z)
    void glWindowPos3dvMESA (GLdouble*  p)
    void glWindowPos3fMESA (GLfloat x, GLfloat y, GLfloat z)
    void glWindowPos3fvMESA (GLfloat*  p)
    void glWindowPos3iMESA (GLint x, GLint y, GLint z)
    void glWindowPos3ivMESA (GLint*  p)
    void glWindowPos3sMESA (GLshort x, GLshort y, GLshort z)
    void glWindowPos3svMESA (GLshort*  p)
    void glWindowPos4dMESA (GLdouble x, GLdouble y, GLdouble z, GLdouble)
    void glWindowPos4dvMESA (GLdouble*  p)
    void glWindowPos4fMESA (GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glWindowPos4fvMESA (GLfloat*  p)
    void glWindowPos4iMESA (GLint x, GLint y, GLint z, GLint w)
    void glWindowPos4ivMESA (GLint*  p)
    void glWindowPos4sMESA (GLshort x, GLshort y, GLshort z, GLshort w)
    void glWindowPos4svMESA (GLshort*  p)

    #GL_MESA_ycbcr_texture

    cdef int GL_MESA_ycbcr_texture

    cdef int GL_UNSIGNED_SHORT_8_8_MESA
    cdef int GL_UNSIGNED_SHORT_8_8_REV_MESA
    cdef int GL_YCBCR_MESA

    #GL_NVX_gpu_memory_info

    cdef int GL_NVX_gpu_memory_info

    cdef int GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX
    cdef int GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX
    cdef int GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX
    cdef int GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX
    cdef int GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX

    #GL_NV_blend_square

    cdef int GL_NV_blend_square

    #GL_NV_conditional_render

    cdef int GL_NV_conditional_render

    cdef int GL_QUERY_WAIT_NV
    cdef int GL_QUERY_NO_WAIT_NV
    cdef int GL_QUERY_BY_REGION_WAIT_NV
    cdef int GL_QUERY_BY_REGION_NO_WAIT_NV

    void glBeginConditionalRenderNV (GLuint id, GLenum mode)
    void glEndConditionalRenderNV ()

    #GL_NV_copy_depth_to_color

    cdef int GL_NV_copy_depth_to_color

    cdef int GL_DEPTH_STENCIL_TO_RGBA_NV
    cdef int GL_DEPTH_STENCIL_TO_BGRA_NV

    #GL_NV_copy_image

    cdef int GL_NV_copy_image

    void glCopyImageSubDataNV (GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth)

    #GL_NV_depth_buffer_float

    cdef int GL_NV_depth_buffer_float

    cdef int GL_DEPTH_COMPONENT32F_NV
    cdef int GL_DEPTH32F_STENCIL8_NV
    cdef int GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV
    cdef int GL_DEPTH_BUFFER_FLOAT_MODE_NV

    void glClearDepthdNV (GLdouble depth)
    void glDepthBoundsdNV (GLdouble zmin, GLdouble zmax)
    void glDepthRangedNV (GLdouble zNear, GLdouble zFar)

    #GL_NV_depth_clamp

    cdef int GL_NV_depth_clamp

    cdef int GL_DEPTH_CLAMP_NV

    #GL_NV_depth_range_unclamped

    cdef int GL_NV_depth_range_unclamped

    cdef int GL_SAMPLE_COUNT_BITS_NV
    cdef int GL_CURRENT_SAMPLE_COUNT_QUERY_NV
    cdef int GL_QUERY_RESULT_NV
    cdef int GL_QUERY_RESULT_AVAILABLE_NV
    cdef int GL_SAMPLE_COUNT_NV

    #GL_NV_evaluators

    cdef int GL_NV_evaluators

    cdef int GL_EVAL_2D_NV
    cdef int GL_EVAL_TRIANGULAR_2D_NV
    cdef int GL_MAP_TESSELLATION_NV
    cdef int GL_MAP_ATTRIB_U_ORDER_NV
    cdef int GL_MAP_ATTRIB_V_ORDER_NV
    cdef int GL_EVAL_FRACTIONAL_TESSELLATION_NV
    cdef int GL_EVAL_VERTEX_ATTRIB0_NV
    cdef int GL_EVAL_VERTEX_ATTRIB1_NV
    cdef int GL_EVAL_VERTEX_ATTRIB2_NV
    cdef int GL_EVAL_VERTEX_ATTRIB3_NV
    cdef int GL_EVAL_VERTEX_ATTRIB4_NV
    cdef int GL_EVAL_VERTEX_ATTRIB5_NV
    cdef int GL_EVAL_VERTEX_ATTRIB6_NV
    cdef int GL_EVAL_VERTEX_ATTRIB7_NV
    cdef int GL_EVAL_VERTEX_ATTRIB8_NV
    cdef int GL_EVAL_VERTEX_ATTRIB9_NV
    cdef int GL_EVAL_VERTEX_ATTRIB10_NV
    cdef int GL_EVAL_VERTEX_ATTRIB11_NV
    cdef int GL_EVAL_VERTEX_ATTRIB12_NV
    cdef int GL_EVAL_VERTEX_ATTRIB13_NV
    cdef int GL_EVAL_VERTEX_ATTRIB14_NV
    cdef int GL_EVAL_VERTEX_ATTRIB15_NV
    cdef int GL_MAX_MAP_TESSELLATION_NV
    cdef int GL_MAX_RATIONAL_EVAL_ORDER_NV

    void glEvalMapsNV (GLenum target, GLenum mode)
    void glGetMapAttribParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat* params)
    void glGetMapAttribParameterivNV (GLenum target, GLuint index, GLenum pname, GLint* params)
    void glGetMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, void* points)
    void glGetMapParameterfvNV (GLenum target, GLenum pname, GLfloat* params)
    void glGetMapParameterivNV (GLenum target, GLenum pname, GLint* params)
    void glMapControlPointsNV (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const_void_ptr  points)
    void glMapParameterfvNV (GLenum target, GLenum pname, GLfloat*  params)
    void glMapParameterivNV (GLenum target, GLenum pname, GLint*  params)

    #GL_NV_explicit_multisample

    cdef int GL_NV_explicit_multisample

    cdef int GL_SAMPLE_POSITION_NV
    cdef int GL_SAMPLE_MASK_NV
    cdef int GL_SAMPLE_MASK_VALUE_NV
    cdef int GL_TEXTURE_BINDING_RENDERBUFFER_NV
    cdef int GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV
    cdef int GL_TEXTURE_RENDERBUFFER_NV
    cdef int GL_SAMPLER_RENDERBUFFER_NV
    cdef int GL_INT_SAMPLER_RENDERBUFFER_NV
    cdef int GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV
    cdef int GL_MAX_SAMPLE_MASK_WORDS_NV

    void glGetMultisamplefvNV (GLenum pname, GLuint index, GLfloat* val)
    void glSampleMaskIndexedNV (GLuint index, GLbitfield mask)
    void glTexRenderbufferNV (GLenum target, GLuint renderbuffer)

    #GL_NV_fence

    cdef int GL_NV_fence

    cdef int GL_ALL_COMPLETED_NV
    cdef int GL_FENCE_STATUS_NV
    cdef int GL_FENCE_CONDITION_NV

    void glDeleteFencesNV (GLsizei n, GLuint fences)
    void glFinishFenceNV (GLuint fence)
    void glGenFencesNV (GLsizei n, GLuint* fences)
    void glGetFenceivNV (GLuint fence, GLenum pname, GLint* params)
    GLboolean glIsFenceNV (GLuint fence)
    void glSetFenceNV (GLuint fence, GLenum condition)
    GLboolean glTestFenceNV (GLuint fence)

    #GL_NV_float_buffer

    cdef int GL_NV_float_buffer

    cdef int GL_FLOAT_R_NV
    cdef int GL_FLOAT_RG_NV
    cdef int GL_FLOAT_RGB_NV
    cdef int GL_FLOAT_RGBA_NV
    cdef int GL_FLOAT_R16_NV
    cdef int GL_FLOAT_R32_NV
    cdef int GL_FLOAT_RG16_NV
    cdef int GL_FLOAT_RG32_NV
    cdef int GL_FLOAT_RGB16_NV
    cdef int GL_FLOAT_RGB32_NV
    cdef int GL_FLOAT_RGBA16_NV
    cdef int GL_FLOAT_RGBA32_NV
    cdef int GL_TEXTURE_FLOAT_COMPONENTS_NV
    cdef int GL_FLOAT_CLEAR_COLOR_VALUE_NV
    cdef int GL_FLOAT_RGBA_MODE_NV

    #GL_NV_fog_distance

    cdef int GL_NV_fog_distance

    cdef int GL_FOG_DISTANCE_MODE_NV
    cdef int GL_EYE_RADIAL_NV
    cdef int GL_EYE_PLANE_ABSOLUTE_NV

    #GL_NV_fragment_program

    cdef int GL_NV_fragment_program

    cdef int GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV
    cdef int GL_FRAGMENT_PROGRAM_NV
    cdef int GL_MAX_TEXTURE_COORDS_NV
    cdef int GL_MAX_TEXTURE_IMAGE_UNITS_NV
    cdef int GL_FRAGMENT_PROGRAM_BINDING_NV
    cdef int GL_PROGRAM_ERROR_STRING_NV

    void glGetProgramNamedParameterdvNV (GLuint id, GLsizei len, GLubyte  name, GLdouble *params)
    void glGetProgramNamedParameterfvNV (GLuint id, GLsizei len, GLubyte  name, GLfloat *params)
    void glProgramNamedParameter4dNV (GLuint id, GLsizei len, GLubyte  name, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glProgramNamedParameter4dvNV (GLuint id, GLsizei len, GLubyte  name, GLdouble v[])
    void glProgramNamedParameter4fNV (GLuint id, GLsizei len, GLubyte  name, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glProgramNamedParameter4fvNV (GLuint id, GLsizei len, GLubyte  name, GLfloat v[])

    #GL_NV_fragment_program2

    cdef int GL_NV_fragment_program2

    cdef int GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
    cdef int GL_MAX_PROGRAM_CALL_DEPTH_NV
    cdef int GL_MAX_PROGRAM_IF_DEPTH_NV
    cdef int GL_MAX_PROGRAM_LOOP_DEPTH_NV
    cdef int GL_MAX_PROGRAM_LOOP_COUNT_NV

    #GL_NV_fragment_program4

    cdef int GL_NV_fragment_program4

    #GL_NV_fragment_program_option

    cdef int GL_NV_fragment_program_option

    #GL_NV_framebuffer_multisample_coverage

    cdef int GL_NV_framebuffer_multisample_coverage

    cdef int GL_RENDERBUFFER_COVERAGE_SAMPLES_NV
    cdef int GL_RENDERBUFFER_COLOR_SAMPLES_NV
    cdef int GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV
    cdef int GL_MULTISAMPLE_COVERAGE_MODES_NV

    void glRenderbufferStorageMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)

    #GL_NV_geometry_program4

    cdef int GL_NV_geometry_program4

    cdef int GL_GEOMETRY_PROGRAM_NV
    cdef int GL_MAX_PROGRAM_OUTPUT_VERTICES_NV
    cdef int GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV

    void glProgramVertexLimitNV (GLenum target, GLint limit)

    #GL_NV_geometry_shader4

    cdef int GL_NV_geometry_shader4

    #GL_NV_gpu_program4

    cdef int GL_NV_gpu_program4

    cdef int GL_MIN_PROGRAM_TEXEL_OFFSET_NV
    cdef int GL_MAX_PROGRAM_TEXEL_OFFSET_NV
    cdef int GL_PROGRAM_ATTRIB_COMPONENTS_NV
    cdef int GL_PROGRAM_RESULT_COMPONENTS_NV
    cdef int GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV
    cdef int GL_MAX_PROGRAM_RESULT_COMPONENTS_NV
    cdef int GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV
    cdef int GL_MAX_PROGRAM_GENERIC_RESULTS_NV

    void glProgramEnvParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)
    void glProgramEnvParameterI4ivNV (GLenum target, GLuint index, GLint* params)
    void glProgramEnvParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
    void glProgramEnvParameterI4uivNV (GLenum target, GLuint index, GLuint* params)
    void glProgramEnvParametersI4ivNV (GLenum target, GLuint index, GLsizei count, GLint* params)
    void glProgramEnvParametersI4uivNV (GLenum target, GLuint index, GLsizei count, GLuint* params)
    void glProgramLocalParameterI4iNV (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)
    void glProgramLocalParameterI4ivNV (GLenum target, GLuint index, GLint* params)
    void glProgramLocalParameterI4uiNV (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
    void glProgramLocalParameterI4uivNV (GLenum target, GLuint index, GLuint* params)
    void glProgramLocalParametersI4ivNV (GLenum target, GLuint index, GLsizei count, GLint* params)
    void glProgramLocalParametersI4uivNV (GLenum target, GLuint index, GLsizei count, GLuint* params)

    #GL_NV_gpu_program5

    cdef int GL_NV_gpu_program5

    cdef int GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV
    cdef int GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV
    cdef int GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV
    cdef int GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV
    cdef int GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV
    cdef int GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV

    #GL_NV_gpu_program_fp64

    cdef int GL_NV_gpu_program_fp64

    #GL_NV_gpu_shader5

    cdef int GL_NV_gpu_shader5

    cdef int GL_INT64_NV
    cdef int GL_UNSIGNED_INT64_NV
    cdef int GL_INT8_NV
    cdef int GL_INT8_VEC2_NV
    cdef int GL_INT8_VEC3_NV
    cdef int GL_INT8_VEC4_NV
    cdef int GL_INT16_NV
    cdef int GL_INT16_VEC2_NV
    cdef int GL_INT16_VEC3_NV
    cdef int GL_INT16_VEC4_NV
    cdef int GL_INT64_VEC2_NV
    cdef int GL_INT64_VEC3_NV
    cdef int GL_INT64_VEC4_NV
    cdef int GL_UNSIGNED_INT8_NV
    cdef int GL_UNSIGNED_INT8_VEC2_NV
    cdef int GL_UNSIGNED_INT8_VEC3_NV
    cdef int GL_UNSIGNED_INT8_VEC4_NV
    cdef int GL_UNSIGNED_INT16_NV
    cdef int GL_UNSIGNED_INT16_VEC2_NV
    cdef int GL_UNSIGNED_INT16_VEC3_NV
    cdef int GL_UNSIGNED_INT16_VEC4_NV
    cdef int GL_UNSIGNED_INT64_VEC2_NV
    cdef int GL_UNSIGNED_INT64_VEC3_NV
    cdef int GL_UNSIGNED_INT64_VEC4_NV
    cdef int GL_FLOAT16_NV
    cdef int GL_FLOAT16_VEC2_NV
    cdef int GL_FLOAT16_VEC3_NV
    cdef int GL_FLOAT16_VEC4_NV

    void glGetUniformi64vNV (GLuint program, GLint location, GLint64EXT* params)
    void glGetUniformui64vNV (GLuint program, GLint location, GLuint64EXT* params)
    void glProgramUniform1i64NV (GLuint program, GLint location, GLint64EXT x)
    void glProgramUniform1i64vNV (GLuint program, GLint location, GLsizei count, GLint64EXT* value)
    void glProgramUniform1ui64NV (GLuint program, GLint location, GLuint64EXT x)
    void glProgramUniform1ui64vNV (GLuint program, GLint location, GLsizei count, GLuint64EXT* value)
    void glProgramUniform2i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y)
    void glProgramUniform2i64vNV (GLuint program, GLint location, GLsizei count, GLint64EXT* value)
    void glProgramUniform2ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y)
    void glProgramUniform2ui64vNV (GLuint program, GLint location, GLsizei count, GLuint64EXT* value)
    void glProgramUniform3i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)
    void glProgramUniform3i64vNV (GLuint program, GLint location, GLsizei count, GLint64EXT* value)
    void glProgramUniform3ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)
    void glProgramUniform3ui64vNV (GLuint program, GLint location, GLsizei count, GLuint64EXT* value)
    void glProgramUniform4i64NV (GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)
    void glProgramUniform4i64vNV (GLuint program, GLint location, GLsizei count, GLint64EXT* value)
    void glProgramUniform4ui64NV (GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)
    void glProgramUniform4ui64vNV (GLuint program, GLint location, GLsizei count, GLuint64EXT* value)
    void glUniform1i64NV (GLint location, GLint64EXT x)
    void glUniform1i64vNV (GLint location, GLsizei count, GLint64EXT* value)
    void glUniform1ui64NV (GLint location, GLuint64EXT x)
    void glUniform1ui64vNV (GLint location, GLsizei count, GLuint64EXT* value)
    void glUniform2i64NV (GLint location, GLint64EXT x, GLint64EXT y)
    void glUniform2i64vNV (GLint location, GLsizei count, GLint64EXT* value)
    void glUniform2ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y)
    void glUniform2ui64vNV (GLint location, GLsizei count, GLuint64EXT* value)
    void glUniform3i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)
    void glUniform3i64vNV (GLint location, GLsizei count, GLint64EXT* value)
    void glUniform3ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)
    void glUniform3ui64vNV (GLint location, GLsizei count, GLuint64EXT* value)
    void glUniform4i64NV (GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)
    void glUniform4i64vNV (GLint location, GLsizei count, GLint64EXT* value)
    void glUniform4ui64NV (GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)
    void glUniform4ui64vNV (GLint location, GLsizei count, GLuint64EXT* value)

    #GL_NV_half_float

    cdef int GL_NV_half_float

    cdef int GL_HALF_FLOAT_NV

    ctypedef unsigned short GLhalf
    
    ctypedef GLhalf *const_GLhalf_ptr "const GLhalf*"

    void glColor3hNV (GLhalf red, GLhalf green, GLhalf blue)
    void glColor3hvNV (const_GLhalf_ptr v)
    void glColor4hNV (GLhalf red, GLhalf green, GLhalf blue, GLhalf alpha)
    void glColor4hvNV (const_GLhalf_ptr v)
    void glFogCoordhNV (GLhalf fog)
    void glFogCoordhvNV (const_GLhalf_ptr fog)
    void glMultiTexCoord1hNV (GLenum target, GLhalf s)
    void glMultiTexCoord1hvNV (GLenum target, const_GLhalf_ptr v)
    void glMultiTexCoord2hNV (GLenum target, GLhalf s, GLhalf t)
    void glMultiTexCoord2hvNV (GLenum target, const_GLhalf_ptr v)
    void glMultiTexCoord3hNV (GLenum target, GLhalf s, GLhalf t, GLhalf r)
    void glMultiTexCoord3hvNV (GLenum target, const_GLhalf_ptr v)
    void glMultiTexCoord4hNV (GLenum target, GLhalf s, GLhalf t, GLhalf r, GLhalf q)
    void glMultiTexCoord4hvNV (GLenum target, const_GLhalf_ptr v)
    void glNormal3hNV (GLhalf nx, GLhalf ny, GLhalf nz)
    void glNormal3hvNV (const_GLhalf_ptr v)
    void glSecondaryColor3hNV (GLhalf red, GLhalf green, GLhalf blue)
    void glSecondaryColor3hvNV (const_GLhalf_ptr v)
    void glTexCoord1hNV (GLhalf s)
    void glTexCoord1hvNV (const_GLhalf_ptr v)
    void glTexCoord2hNV (GLhalf s, GLhalf t)
    void glTexCoord2hvNV (const_GLhalf_ptr v)
    void glTexCoord3hNV (GLhalf s, GLhalf t, GLhalf r)
    void glTexCoord3hvNV (const_GLhalf_ptr v)
    void glTexCoord4hNV (GLhalf s, GLhalf t, GLhalf r, GLhalf q)
    void glTexCoord4hvNV (const_GLhalf_ptr v)
    void glVertex2hNV (GLhalf x, GLhalf y)
    void glVertex2hvNV (const_GLhalf_ptr v)
    void glVertex3hNV (GLhalf x, GLhalf y, GLhalf z)
    void glVertex3hvNV (const_GLhalf_ptr v)
    void glVertex4hNV (GLhalf x, GLhalf y, GLhalf z, GLhalf w)
    void glVertex4hvNV (const_GLhalf_ptr v)
    void glVertexAttrib1hNV (GLuint index, GLhalf x)
    void glVertexAttrib1hvNV (GLuint index, const_GLhalf_ptr v)
    void glVertexAttrib2hNV (GLuint index, GLhalf x, GLhalf y)
    void glVertexAttrib2hvNV (GLuint index, const_GLhalf_ptr v)
    void glVertexAttrib3hNV (GLuint index, GLhalf x, GLhalf y, GLhalf z)
    void glVertexAttrib3hvNV (GLuint index, const_GLhalf_ptr v)
    void glVertexAttrib4hNV (GLuint index, GLhalf x, GLhalf y, GLhalf z, GLhalf w)
    void glVertexAttrib4hvNV (GLuint index, const_GLhalf_ptr v)
    void glVertexAttribs1hvNV (GLuint index, GLsizei n, const_GLhalf_ptr v)
    void glVertexAttribs2hvNV (GLuint index, GLsizei n, const_GLhalf_ptr v)
    void glVertexAttribs3hvNV (GLuint index, GLsizei n, const_GLhalf_ptr v)
    void glVertexAttribs4hvNV (GLuint index, GLsizei n, const_GLhalf_ptr v)
    void glVertexWeighthNV (GLhalf weight)
    void glVertexWeighthvNV (const_GLhalf_ptr weight)

    #GL_NV_light_max_exponent

    cdef int GL_NV_light_max_exponent

    cdef int GL_MAX_SHININESS_NV
    cdef int GL_MAX_SPOT_EXPONENT_NV

    #GL_NV_multisample_coverage

    cdef int GL_NV_multisample_coverage

    cdef int GL_COVERAGE_SAMPLES_NV
    cdef int GL_COLOR_SAMPLES_NV

    #GL_NV_multisample_filter_hint

    cdef int GL_NV_multisample_filter_hint

    cdef int GL_MULTISAMPLE_FILTER_HINT_NV

    #GL_NV_occlusion_query

    cdef int GL_NV_occlusion_query

    cdef int GL_PIXEL_COUNTER_BITS_NV
    cdef int GL_CURRENT_OCCLUSION_QUERY_ID_NV
    cdef int GL_PIXEL_COUNT_NV
    cdef int GL_PIXEL_COUNT_AVAILABLE_NV

    void glBeginOcclusionQueryNV (GLuint id)
    void glDeleteOcclusionQueriesNV (GLsizei n, GLuint ids)
    void glEndOcclusionQueryNV ()
    void glGenOcclusionQueriesNV (GLsizei n, GLuint* ids)
    void glGetOcclusionQueryivNV (GLuint id, GLenum pname, GLint* params)
    void glGetOcclusionQueryuivNV (GLuint id, GLenum pname, GLuint* params)
    GLboolean glIsOcclusionQueryNV (GLuint id)

    #GL_NV_packed_depth_stencil

    cdef int GL_NV_packed_depth_stencil

    cdef int GL_DEPTH_STENCIL_NV
    cdef int GL_UNSIGNED_INT_24_8_NV

    #GL_NV_parameter_buffer_object

    cdef int GL_NV_parameter_buffer_object

    cdef int GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV
    cdef int GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV
    cdef int GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV
    cdef int GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV
    cdef int GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV

    void glProgramBufferParametersIivNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, GLint* params)
    void glProgramBufferParametersIuivNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, GLuint* params)
    void glProgramBufferParametersfvNV (GLenum target, GLuint buffer, GLuint index, GLsizei count, GLfloat* params)

    #GL_NV_parameter_buffer_object2

    cdef int GL_NV_parameter_buffer_object2

    #GL_NV_path_rendering

    cdef int GL_NV_path_rendering

    cdef int GL_CLOSE_PATH_NV
    cdef int GL_BOLD_BIT_NV
    cdef int GL_GLYPH_WIDTH_BIT_NV
    cdef int GL_MOVE_TO_NV
    cdef int GL_GLYPH_HEIGHT_BIT_NV
    cdef int GL_ITALIC_BIT_NV
    cdef int GL_RELATIVE_MOVE_TO_NV
    cdef int GL_LINE_TO_NV
    cdef int GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV
    cdef int GL_RELATIVE_LINE_TO_NV
    cdef int GL_HORIZONTAL_LINE_TO_NV
    cdef int GL_RELATIVE_HORIZONTAL_LINE_TO_NV
    cdef int GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV
    cdef int GL_VERTICAL_LINE_TO_NV
    cdef int GL_RELATIVE_VERTICAL_LINE_TO_NV
    cdef int GL_QUADRATIC_CURVE_TO_NV
    cdef int GL_RELATIVE_QUADRATIC_CURVE_TO_NV
    cdef int GL_CUBIC_CURVE_TO_NV
    cdef int GL_RELATIVE_CUBIC_CURVE_TO_NV
    cdef int GL_SMOOTH_QUADRATIC_CURVE_TO_NV
    cdef int GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV
    cdef int GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV
    cdef int GL_SMOOTH_CUBIC_CURVE_TO_NV
    cdef int GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV
    cdef int GL_SMALL_CCW_ARC_TO_NV
    cdef int GL_RELATIVE_SMALL_CCW_ARC_TO_NV
    cdef int GL_SMALL_CW_ARC_TO_NV
    cdef int GL_RELATIVE_SMALL_CW_ARC_TO_NV
    cdef int GL_LARGE_CCW_ARC_TO_NV
    cdef int GL_RELATIVE_LARGE_CCW_ARC_TO_NV
    cdef int GL_LARGE_CW_ARC_TO_NV
    cdef int GL_RELATIVE_LARGE_CW_ARC_TO_NV
    cdef int GL_GLYPH_VERTICAL_BEARING_X_BIT_NV
    cdef int GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV
    cdef int GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV
    cdef int GL_CIRCULAR_CCW_ARC_TO_NV
    cdef int GL_CIRCULAR_CW_ARC_TO_NV
    cdef int GL_CIRCULAR_TANGENT_ARC_TO_NV
    cdef int GL_ARC_TO_NV
    cdef int GL_RELATIVE_ARC_TO_NV
    cdef int GL_GLYPH_HAS_KERNING_NV
    cdef int GL_PRIMARY_COLOR_NV
    cdef int GL_SECONDARY_COLOR_NV
    cdef int GL_PRIMARY_COLOR
    cdef int GL_PATH_FORMAT_SVG_NV
    cdef int GL_PATH_FORMAT_PS_NV
    cdef int GL_STANDARD_FONT_NAME_NV
    cdef int GL_SYSTEM_FONT_NAME_NV
    cdef int GL_FILE_NAME_NV
    cdef int GL_PATH_STROKE_WIDTH_NV
    cdef int GL_PATH_END_CAPS_NV
    cdef int GL_PATH_INITIAL_END_CAP_NV
    cdef int GL_PATH_TERMINAL_END_CAP_NV
    cdef int GL_PATH_JOIN_STYLE_NV
    cdef int GL_PATH_MITER_LIMIT_NV
    cdef int GL_PATH_DASH_CAPS_NV
    cdef int GL_PATH_INITIAL_DASH_CAP_NV
    cdef int GL_PATH_TERMINAL_DASH_CAP_NV
    cdef int GL_PATH_DASH_OFFSET_NV
    cdef int GL_PATH_CLIENT_LENGTH_NV
    cdef int GL_PATH_FILL_MODE_NV
    cdef int GL_PATH_FILL_MASK_NV
    cdef int GL_PATH_FILL_COVER_MODE_NV
    cdef int GL_PATH_STROKE_COVER_MODE_NV
    cdef int GL_PATH_STROKE_MASK_NV
    cdef int GL_COUNT_UP_NV
    cdef int GL_COUNT_DOWN_NV
    cdef int GL_PATH_OBJECT_BOUNDING_BOX_NV
    cdef int GL_CONVEX_HULL_NV
    cdef int GL_BOUNDING_BOX_NV
    cdef int GL_TRANSLATE_X_NV
    cdef int GL_TRANSLATE_Y_NV
    cdef int GL_TRANSLATE_2D_NV
    cdef int GL_TRANSLATE_3D_NV
    cdef int GL_AFFINE_2D_NV
    cdef int GL_AFFINE_3D_NV
    cdef int GL_TRANSPOSE_AFFINE_2D_NV
    cdef int GL_TRANSPOSE_AFFINE_3D_NV
    cdef int GL_UTF8_NV
    cdef int GL_UTF16_NV
    cdef int GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV
    cdef int GL_PATH_COMMAND_COUNT_NV
    cdef int GL_PATH_COORD_COUNT_NV
    cdef int GL_PATH_DASH_ARRAY_COUNT_NV
    cdef int GL_PATH_COMPUTED_LENGTH_NV
    cdef int GL_PATH_FILL_BOUNDING_BOX_NV
    cdef int GL_PATH_STROKE_BOUNDING_BOX_NV
    cdef int GL_SQUARE_NV
    cdef int GL_ROUND_NV
    cdef int GL_TRIANGULAR_NV
    cdef int GL_BEVEL_NV
    cdef int GL_MITER_REVERT_NV
    cdef int GL_MITER_TRUNCATE_NV
    cdef int GL_SKIP_MISSING_GLYPH_NV
    cdef int GL_USE_MISSING_GLYPH_NV
    cdef int GL_PATH_ERROR_POSITION_NV
    cdef int GL_PATH_FOG_GEN_MODE_NV
    cdef int GL_ACCUM_ADJACENT_PAIRS_NV
    cdef int GL_ADJACENT_PAIRS_NV
    cdef int GL_FIRST_TO_REST_NV
    cdef int GL_PATH_GEN_MODE_NV
    cdef int GL_PATH_GEN_COEFF_NV
    cdef int GL_PATH_GEN_COLOR_FORMAT_NV
    cdef int GL_PATH_GEN_COMPONENTS_NV
    cdef int GL_PATH_DASH_OFFSET_RESET_NV
    cdef int GL_MOVE_TO_RESETS_NV
    cdef int GL_MOVE_TO_CONTINUES_NV
    cdef int GL_PATH_STENCIL_FUNC_NV
    cdef int GL_PATH_STENCIL_REF_NV
    cdef int GL_PATH_STENCIL_VALUE_MASK_NV
    cdef int GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV
    cdef int GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV
    cdef int GL_PATH_COVER_DEPTH_FUNC_NV
    cdef int GL_FONT_X_MIN_BOUNDS_NV
    cdef int GL_FONT_Y_MIN_BOUNDS_NV
    cdef int GL_FONT_X_MAX_BOUNDS_NV
    cdef int GL_FONT_Y_MAX_BOUNDS_NV
    cdef int GL_FONT_UNITS_PER_EM_NV
    cdef int GL_FONT_ASCENDER_NV
    cdef int GL_FONT_DESCENDER_NV
    cdef int GL_FONT_HEIGHT_NV
    cdef int GL_FONT_MAX_ADVANCE_WIDTH_NV
    cdef int GL_FONT_MAX_ADVANCE_HEIGHT_NV
    cdef int GL_FONT_UNDERLINE_POSITION_NV
    cdef int GL_FONT_UNDERLINE_THICKNESS_NV
    cdef int GL_FONT_HAS_KERNING_NV

    void glCopyPathNV (GLuint resultPath, GLuint srcPath)
    void glCoverFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const_void_ptr  paths, GLuint pathBase, GLenum coverMode, GLenum transformType, GLfloat* transformValues)
    void glCoverFillPathNV (GLuint path, GLenum coverMode)
    void glCoverStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const_void_ptr  paths, GLuint pathBase, GLenum coverMode, GLenum transformType, GLfloat* transformValues)
    void glCoverStrokePathNV (GLuint name, GLenum coverMode)
    void glDeletePathsNV (GLuint path, GLsizei range)
    GLuint glGenPathsNV (GLsizei range)
    void glGetPathColorGenfvNV (GLenum color, GLenum pname, GLfloat* value)
    void glGetPathColorGenivNV (GLenum color, GLenum pname, GLint* value)
    void glGetPathCommandsNV (GLuint name, GLubyte* commands)
    void glGetPathCoordsNV (GLuint name, GLfloat* coords)
    void glGetPathDashArrayNV (GLuint name, GLfloat* dashArray)
    GLfloat glGetPathLengthNV (GLuint path, GLsizei startSegment, GLsizei numSegments)
    void glGetPathMetricRangeNV (GLbitfield metricQueryMask, GLuint fistPathName, GLsizei numPaths, GLsizei stride, GLfloat* metrics)
    void glGetPathMetricsNV (GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, const_void_ptr  paths, GLuint pathBase, GLsizei stride, GLfloat *metrics)
    void glGetPathParameterfvNV (GLuint name, GLenum param, GLfloat* value)
    void glGetPathParameterivNV (GLuint name, GLenum param, GLint* value)
    void glGetPathSpacingNV (GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, const_void_ptr  paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat *returnedSpacing)
    void glGetPathTexGenfvNV (GLenum texCoordSet, GLenum pname, GLfloat* value)
    void glGetPathTexGenivNV (GLenum texCoordSet, GLenum pname, GLint* value)
    void glInterpolatePathsNV (GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight)
    GLboolean glIsPathNV (GLuint path)
    GLboolean glIsPointInFillPathNV (GLuint path, GLuint mask, GLfloat x, GLfloat y)
    GLboolean glIsPointInStrokePathNV (GLuint path, GLfloat x, GLfloat y)
    void glPathColorGenNV (GLenum color, GLenum genMode, GLenum colorFormat, GLfloat * coeffs)
    void glPathCommandsNV (GLuint path, GLsizei numCommands, GLubyte * commands, GLsizei numCoords, GLenum coordType, GLvoid *coords)
    void glPathCoordsNV (GLuint path, GLsizei numCoords, GLenum coordType, const_void_ptr  coords)
    void glPathCoverDepthFuncNV (GLenum zfunc)
    void glPathDashArrayNV (GLuint path, GLsizei dashCount, GLfloat*  dashArray)
    void glPathFogGenNV (GLenum genMode)
    void glPathGlyphRangeNV (GLuint firstPathName, GLenum fontTarget, const_void_ptr  fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale)
    void glPathGlyphsNV (GLuint firstPathName, GLenum fontTarget, const_void_ptr  fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, GLvoid *charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale)
    void glPathParameterfNV (GLuint path, GLenum pname, GLfloat value)
    void glPathParameterfvNV (GLuint path, GLenum pname, GLfloat*  value)
    void glPathParameteriNV (GLuint path, GLenum pname, GLint value)
    void glPathParameterivNV (GLuint path, GLenum pname, GLint*  value)
    void glPathStencilDepthOffsetNV (GLfloat factor, GLint units)
    void glPathStencilFuncNV (GLenum func, GLint ref, GLuint mask)
    void glPathStringNV (GLuint path, GLenum format, GLsizei length, const_void_ptr  pathString)
    void glPathSubCommandsNV (GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, GLubyte  *commands, GLsizei numCoords, GLenum coordType, GLvoid *coords)
    void glPathSubCoordsNV (GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, const_void_ptr  coords)
    void glPathTexGenNV (GLenum texCoordSet, GLenum genMode, GLint components, GLfloat*  coeffs)
    GLboolean glPointAlongPathNV (GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat* x, GLfloat *y, GLfloat *tangentX, GLfloat *tangentY)
    void glStencilFillPathInstancedNV (GLsizei numPaths, GLenum pathNameType, const_void_ptr  paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, GLfloat* transformValues)
    void glStencilFillPathNV (GLuint path, GLenum fillMode, GLuint mask)
    void glStencilStrokePathInstancedNV (GLsizei numPaths, GLenum pathNameType, const_void_ptr  paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, GLfloat* transformValues)
    void glStencilStrokePathNV (GLuint path, GLint reference, GLuint mask)
    void glTransformPathNV (GLuint resultPath, GLuint srcPath, GLenum transformType, GLfloat*  transformValues)
    void glWeightPathsNV (GLuint resultPath, GLsizei numPaths, GLint paths[], GLfloat weights[])

    #GL_NV_pixel_data_range

    cdef int GL_NV_pixel_data_range

    cdef int GL_WRITE_PIXEL_DATA_RANGE_NV
    cdef int GL_READ_PIXEL_DATA_RANGE_NV
    cdef int GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV
    cdef int GL_READ_PIXEL_DATA_RANGE_LENGTH_NV
    cdef int GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV
    cdef int GL_READ_PIXEL_DATA_RANGE_POINTER_NV

    void glFlushPixelDataRangeNV (GLenum target)
    void glPixelDataRangeNV (GLenum target, GLsizei length, void* pointer)

    #GL_NV_point_sprite

    cdef int GL_NV_point_sprite

    cdef int GL_POINT_SPRITE_NV
    cdef int GL_COORD_REPLACE_NV
    cdef int GL_POINT_SPRITE_R_MODE_NV

    void glPointParameteriNV (GLenum pname, GLint param)
    void glPointParameterivNV (GLenum pname, GLint*  params)

    #GL_NV_present_video

    cdef int GL_NV_present_video

    cdef int GL_FRAME_NV
    cdef int GL_FIELDS_NV
    cdef int GL_CURRENT_TIME_NV
    cdef int GL_NUM_FILL_STREAMS_NV
    cdef int GL_PRESENT_TIME_NV
    cdef int GL_PRESENT_DURATION_NV

    void glGetVideoi64vNV (GLuint video_slot, GLenum pname, GLint64EXT* params)
    void glGetVideoivNV (GLuint video_slot, GLenum pname, GLint* params)
    void glGetVideoui64vNV (GLuint video_slot, GLenum pname, GLuint64EXT* params)
    void glGetVideouivNV (GLuint video_slot, GLenum pname, GLuint* params)
    void glPresentFrameDualFillNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3)
    void glPresentFrameKeyedNV (GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1)

    #GL_NV_primitive_restart

    cdef int GL_NV_primitive_restart

    cdef int GL_PRIMITIVE_RESTART_NV
    cdef int GL_PRIMITIVE_RESTART_INDEX_NV

    void glPrimitiveRestartIndexNV (GLuint index)
    void glPrimitiveRestartNV ()

    #GL_NV_register_combiners

    cdef int GL_NV_register_combiners

    cdef int GL_REGISTER_COMBINERS_NV
    cdef int GL_VARIABLE_A_NV
    cdef int GL_VARIABLE_B_NV
    cdef int GL_VARIABLE_C_NV
    cdef int GL_VARIABLE_D_NV
    cdef int GL_VARIABLE_E_NV
    cdef int GL_VARIABLE_F_NV
    cdef int GL_VARIABLE_G_NV
    cdef int GL_CONSTANT_COLOR0_NV
    cdef int GL_CONSTANT_COLOR1_NV
    cdef int GL_PRIMARY_COLOR_NV
    cdef int GL_SECONDARY_COLOR_NV
    cdef int GL_SPARE0_NV
    cdef int GL_SPARE1_NV
    cdef int GL_DISCARD_NV
    cdef int GL_E_TIMES_F_NV
    cdef int GL_SPARE0_PLUS_SECONDARY_COLOR_NV
    cdef int GL_UNSIGNED_IDENTITY_NV
    cdef int GL_UNSIGNED_INVERT_NV
    cdef int GL_EXPAND_NORMAL_NV
    cdef int GL_EXPAND_NEGATE_NV
    cdef int GL_HALF_BIAS_NORMAL_NV
    cdef int GL_HALF_BIAS_NEGATE_NV
    cdef int GL_SIGNED_IDENTITY_NV
    cdef int GL_SIGNED_NEGATE_NV
    cdef int GL_SCALE_BY_TWO_NV
    cdef int GL_SCALE_BY_FOUR_NV
    cdef int GL_SCALE_BY_ONE_HALF_NV
    cdef int GL_BIAS_BY_NEGATIVE_ONE_HALF_NV
    cdef int GL_COMBINER_INPUT_NV
    cdef int GL_COMBINER_MAPPING_NV
    cdef int GL_COMBINER_COMPONENT_USAGE_NV
    cdef int GL_COMBINER_AB_DOT_PRODUCT_NV
    cdef int GL_COMBINER_CD_DOT_PRODUCT_NV
    cdef int GL_COMBINER_MUX_SUM_NV
    cdef int GL_COMBINER_SCALE_NV
    cdef int GL_COMBINER_BIAS_NV
    cdef int GL_COMBINER_AB_OUTPUT_NV
    cdef int GL_COMBINER_CD_OUTPUT_NV
    cdef int GL_COMBINER_SUM_OUTPUT_NV
    cdef int GL_MAX_GENERAL_COMBINERS_NV
    cdef int GL_NUM_GENERAL_COMBINERS_NV
    cdef int GL_COLOR_SUM_CLAMP_NV
    cdef int GL_COMBINER0_NV
    cdef int GL_COMBINER1_NV
    cdef int GL_COMBINER2_NV
    cdef int GL_COMBINER3_NV
    cdef int GL_COMBINER4_NV
    cdef int GL_COMBINER5_NV
    cdef int GL_COMBINER6_NV
    cdef int GL_COMBINER7_NV

    void glCombinerInputNV (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)
    void glCombinerOutputNV (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum)
    void glCombinerParameterfNV (GLenum pname, GLfloat param)
    void glCombinerParameterfvNV (GLenum pname, GLfloat*  params)
    void glCombinerParameteriNV (GLenum pname, GLint param)
    void glCombinerParameterivNV (GLenum pname, GLint*  params)
    void glFinalCombinerInputNV (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)
    void glGetCombinerInputParameterfvNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params)
    void glGetCombinerInputParameterivNV (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params)
    void glGetCombinerOutputParameterfvNV (GLenum stage, GLenum portion, GLenum pname, GLfloat* params)
    void glGetCombinerOutputParameterivNV (GLenum stage, GLenum portion, GLenum pname, GLint* params)
    void glGetFinalCombinerInputParameterfvNV (GLenum variable, GLenum pname, GLfloat* params)
    void glGetFinalCombinerInputParameterivNV (GLenum variable, GLenum pname, GLint* params)

    #GL_NV_register_combiners2

    cdef int GL_NV_register_combiners2

    cdef int GL_PER_STAGE_CONSTANTS_NV

    void glCombinerStageParameterfvNV (GLenum stage, GLenum pname, GLfloat*  params)
    void glGetCombinerStageParameterfvNV (GLenum stage, GLenum pname, GLfloat* params)

    #GL_NV_shader_buffer_load

    cdef int GL_NV_shader_buffer_load

    cdef int GL_BUFFER_GPU_ADDRESS_NV
    cdef int GL_GPU_ADDRESS_NV
    cdef int GL_MAX_SHADER_BUFFER_ADDRESS_NV

    void glGetBufferParameterui64vNV (GLenum target, GLenum pname, GLuint64EXT* params)
    void glGetIntegerui64vNV (GLenum value, GLuint64EXT* result)
    void glGetNamedBufferParameterui64vNV (GLuint buffer, GLenum pname, GLuint64EXT* params)
    GLboolean glIsBufferResidentNV (GLenum target)
    GLboolean glIsNamedBufferResidentNV (GLuint buffer)
    void glMakeBufferNonResidentNV (GLenum target)
    void glMakeBufferResidentNV (GLenum target, GLenum access)
    void glMakeNamedBufferNonResidentNV (GLuint buffer)
    void glMakeNamedBufferResidentNV (GLuint buffer, GLenum access)
    void glProgramUniformui64NV (GLuint program, GLint location, GLuint64EXT value)
    void glProgramUniformui64vNV (GLuint program, GLint location, GLsizei count, GLuint64EXT* value)
    void glUniformui64NV (GLint location, GLuint64EXT value)
    void glUniformui64vNV (GLint location, GLsizei count, GLuint64EXT* value)

    #GL_NV_tessellation_program5

    cdef int GL_NV_tessellation_program5

    cdef int GL_MAX_PROGRAM_PATCH_ATTRIBS_NV
    cdef int GL_TESS_CONTROL_PROGRAM_NV
    cdef int GL_TESS_EVALUATION_PROGRAM_NV
    cdef int GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV
    cdef int GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV

    #GL_NV_texgen_emboss

    cdef int GL_NV_texgen_emboss

    cdef int GL_EMBOSS_LIGHT_NV
    cdef int GL_EMBOSS_CONSTANT_NV
    cdef int GL_EMBOSS_MAP_NV

    #GL_NV_texgen_reflection

    cdef int GL_NV_texgen_reflection

    cdef int GL_NORMAL_MAP_NV
    cdef int GL_REFLECTION_MAP_NV

    #GL_NV_texture_barrier

    cdef int GL_NV_texture_barrier

    void glTextureBarrierNV ()

    #GL_NV_texture_compression_vtc

    cdef int GL_NV_texture_compression_vtc

    #GL_NV_texture_env_combine4

    cdef int GL_NV_texture_env_combine4

    cdef int GL_COMBINE4_NV
    cdef int GL_SOURCE3_RGB_NV
    cdef int GL_SOURCE3_ALPHA_NV
    cdef int GL_OPERAND3_RGB_NV
    cdef int GL_OPERAND3_ALPHA_NV

    #GL_NV_texture_expand_normal

    cdef int GL_NV_texture_expand_normal

    cdef int GL_TEXTURE_UNSIGNED_REMAP_MODE_NV

    #GL_NV_texture_multisample

    cdef int GL_NV_texture_multisample

    cdef int GL_TEXTURE_COVERAGE_SAMPLES_NV
    cdef int GL_TEXTURE_COLOR_SAMPLES_NV

    void glTexImage2DMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)
    void glTexImage3DMultisampleCoverageNV (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)
    void glTextureImage2DMultisampleCoverageNV (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)
    void glTextureImage2DMultisampleNV (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)
    void glTextureImage3DMultisampleCoverageNV (GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)
    void glTextureImage3DMultisampleNV (GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)

    #GL_NV_texture_rectangle

    cdef int GL_NV_texture_rectangle

    cdef int GL_TEXTURE_RECTANGLE_NV
    cdef int GL_TEXTURE_BINDING_RECTANGLE_NV
    cdef int GL_PROXY_TEXTURE_RECTANGLE_NV
    cdef int GL_MAX_RECTANGLE_TEXTURE_SIZE_NV

    #GL_NV_texture_shader

    cdef int GL_NV_texture_shader

    cdef int GL_OFFSET_TEXTURE_RECTANGLE_NV
    cdef int GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV
    cdef int GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV
    cdef int GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV
    cdef int GL_UNSIGNED_INT_S8_S8_8_8_NV
    cdef int GL_UNSIGNED_INT_8_8_S8_S8_REV_NV
    cdef int GL_DSDT_MAG_INTENSITY_NV
    cdef int GL_SHADER_CONSISTENT_NV
    cdef int GL_TEXTURE_SHADER_NV
    cdef int GL_SHADER_OPERATION_NV
    cdef int GL_CULL_MODES_NV
    cdef int GL_OFFSET_TEXTURE_2D_MATRIX_NV
    cdef int GL_OFFSET_TEXTURE_MATRIX_NV
    cdef int GL_OFFSET_TEXTURE_2D_SCALE_NV
    cdef int GL_OFFSET_TEXTURE_SCALE_NV
    cdef int GL_OFFSET_TEXTURE_BIAS_NV
    cdef int GL_OFFSET_TEXTURE_2D_BIAS_NV
    cdef int GL_PREVIOUS_TEXTURE_INPUT_NV
    cdef int GL_CONST_EYE_NV
    cdef int GL_PASS_THROUGH_NV
    cdef int GL_CULL_FRAGMENT_NV
    cdef int GL_OFFSET_TEXTURE_2D_NV
    cdef int GL_DEPENDENT_AR_TEXTURE_2D_NV
    cdef int GL_DEPENDENT_GB_TEXTURE_2D_NV
    cdef int GL_DOT_PRODUCT_NV
    cdef int GL_DOT_PRODUCT_DEPTH_REPLACE_NV
    cdef int GL_DOT_PRODUCT_TEXTURE_2D_NV
    cdef int GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV
    cdef int GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV
    cdef int GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV
    cdef int GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV
    cdef int GL_HILO_NV
    cdef int GL_DSDT_NV
    cdef int GL_DSDT_MAG_NV
    cdef int GL_DSDT_MAG_VIB_NV
    cdef int GL_HILO16_NV
    cdef int GL_SIGNED_HILO_NV
    cdef int GL_SIGNED_HILO16_NV
    cdef int GL_SIGNED_RGBA_NV
    cdef int GL_SIGNED_RGBA8_NV
    cdef int GL_SIGNED_RGB_NV
    cdef int GL_SIGNED_RGB8_NV
    cdef int GL_SIGNED_LUMINANCE_NV
    cdef int GL_SIGNED_LUMINANCE8_NV
    cdef int GL_SIGNED_LUMINANCE_ALPHA_NV
    cdef int GL_SIGNED_LUMINANCE8_ALPHA8_NV
    cdef int GL_SIGNED_ALPHA_NV
    cdef int GL_SIGNED_ALPHA8_NV
    cdef int GL_SIGNED_INTENSITY_NV
    cdef int GL_SIGNED_INTENSITY8_NV
    cdef int GL_DSDT8_NV
    cdef int GL_DSDT8_MAG8_NV
    cdef int GL_DSDT8_MAG8_INTENSITY8_NV
    cdef int GL_SIGNED_RGB_UNSIGNED_ALPHA_NV
    cdef int GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV
    cdef int GL_HI_SCALE_NV
    cdef int GL_LO_SCALE_NV
    cdef int GL_DS_SCALE_NV
    cdef int GL_DT_SCALE_NV
    cdef int GL_MAGNITUDE_SCALE_NV
    cdef int GL_VIBRANCE_SCALE_NV
    cdef int GL_HI_BIAS_NV
    cdef int GL_LO_BIAS_NV
    cdef int GL_DS_BIAS_NV
    cdef int GL_DT_BIAS_NV
    cdef int GL_MAGNITUDE_BIAS_NV
    cdef int GL_VIBRANCE_BIAS_NV
    cdef int GL_TEXTURE_BORDER_VALUES_NV
    cdef int GL_TEXTURE_HI_SIZE_NV
    cdef int GL_TEXTURE_LO_SIZE_NV
    cdef int GL_TEXTURE_DS_SIZE_NV
    cdef int GL_TEXTURE_DT_SIZE_NV
    cdef int GL_TEXTURE_MAG_SIZE_NV

    #GL_NV_texture_shader2

    cdef int GL_NV_texture_shader2

    cdef int GL_UNSIGNED_INT_S8_S8_8_8_NV
    cdef int GL_UNSIGNED_INT_8_8_S8_S8_REV_NV
    cdef int GL_DSDT_MAG_INTENSITY_NV
    cdef int GL_DOT_PRODUCT_TEXTURE_3D_NV
    cdef int GL_HILO_NV
    cdef int GL_DSDT_NV
    cdef int GL_DSDT_MAG_NV
    cdef int GL_DSDT_MAG_VIB_NV
    cdef int GL_HILO16_NV
    cdef int GL_SIGNED_HILO_NV
    cdef int GL_SIGNED_HILO16_NV
    cdef int GL_SIGNED_RGBA_NV
    cdef int GL_SIGNED_RGBA8_NV
    cdef int GL_SIGNED_RGB_NV
    cdef int GL_SIGNED_RGB8_NV
    cdef int GL_SIGNED_LUMINANCE_NV
    cdef int GL_SIGNED_LUMINANCE8_NV
    cdef int GL_SIGNED_LUMINANCE_ALPHA_NV
    cdef int GL_SIGNED_LUMINANCE8_ALPHA8_NV
    cdef int GL_SIGNED_ALPHA_NV
    cdef int GL_SIGNED_ALPHA8_NV
    cdef int GL_SIGNED_INTENSITY_NV
    cdef int GL_SIGNED_INTENSITY8_NV
    cdef int GL_DSDT8_NV
    cdef int GL_DSDT8_MAG8_NV
    cdef int GL_DSDT8_MAG8_INTENSITY8_NV
    cdef int GL_SIGNED_RGB_UNSIGNED_ALPHA_NV
    cdef int GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV

    #GL_NV_texture_shader3

    cdef int GL_NV_texture_shader3

    cdef int GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV
    cdef int GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV
    cdef int GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV
    cdef int GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV
    cdef int GL_OFFSET_HILO_TEXTURE_2D_NV
    cdef int GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV
    cdef int GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV
    cdef int GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV
    cdef int GL_DEPENDENT_HILO_TEXTURE_2D_NV
    cdef int GL_DEPENDENT_RGB_TEXTURE_3D_NV
    cdef int GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV
    cdef int GL_DOT_PRODUCT_PASS_THROUGH_NV
    cdef int GL_DOT_PRODUCT_TEXTURE_1D_NV
    cdef int GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV
    cdef int GL_HILO8_NV
    cdef int GL_SIGNED_HILO8_NV
    cdef int GL_FORCE_BLUE_TO_ONE_NV

    #GL_NV_transform_feedback

    cdef int GL_NV_transform_feedback

    cdef int GL_BACK_PRIMARY_COLOR_NV
    cdef int GL_BACK_SECONDARY_COLOR_NV
    cdef int GL_TEXTURE_COORD_NV
    cdef int GL_CLIP_DISTANCE_NV
    cdef int GL_VERTEX_ID_NV
    cdef int GL_PRIMITIVE_ID_NV
    cdef int GL_GENERIC_ATTRIB_NV
    cdef int GL_TRANSFORM_FEEDBACK_ATTRIBS_NV
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV
    cdef int GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV
    cdef int GL_ACTIVE_VARYINGS_NV
    cdef int GL_ACTIVE_VARYING_MAX_LENGTH_NV
    cdef int GL_TRANSFORM_FEEDBACK_VARYINGS_NV
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_START_NV
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV
    cdef int GL_TRANSFORM_FEEDBACK_RECORD_NV
    cdef int GL_PRIMITIVES_GENERATED_NV
    cdef int GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV
    cdef int GL_RASTERIZER_DISCARD_NV
    cdef int GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV
    cdef int GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV
    cdef int GL_INTERLEAVED_ATTRIBS_NV
    cdef int GL_SEPARATE_ATTRIBS_NV
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_NV
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV

    void glActiveVaryingNV (GLuint program, GLcharname)
    void glBeginTransformFeedbackNV (GLenum primitiveMode)
    void glBindBufferBaseNV (GLenum target, GLuint index, GLuint buffer)
    void glBindBufferOffsetNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset)
    void glBindBufferRangeNV (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)
    void glEndTransformFeedbackNV ()
    void glGetActiveVaryingNV (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name)
    void glGetTransformFeedbackVaryingNV (GLuint program, GLuint index, GLint *location)
    GLint glGetVaryingLocationNV (GLuint program, GLcharname)
    void glTransformFeedbackAttribsNV (GLuint count, GLint* attribs, GLenum bufferMode)
    void glTransformFeedbackVaryingsNV (GLuint program, GLsizei count, GLint* locations, GLenum bufferMode)

    #GL_NV_transform_feedback2

    cdef int GL_NV_transform_feedback2

    cdef int GL_TRANSFORM_FEEDBACK_NV
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV
    cdef int GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV
    cdef int GL_TRANSFORM_FEEDBACK_BINDING_NV

    void glBindTransformFeedbackNV (GLenum target, GLuint id)
    void glDeleteTransformFeedbacksNV (GLsizei n, GLuint* ids)
    void glDrawTransformFeedbackNV (GLenum mode, GLuint id)
    void glGenTransformFeedbacksNV (GLsizei n, GLuint* ids)
    GLboolean glIsTransformFeedbackNV (GLuint id)
    void glPauseTransformFeedbackNV ()
    void glResumeTransformFeedbackNV ()

    #GL_NV_vdpau_interop

    cdef int GL_NV_vdpau_interop

    cdef int GL_SURFACE_STATE_NV
    cdef int GL_SURFACE_REGISTERED_NV
    cdef int GL_SURFACE_MAPPED_NV
    cdef int GL_WRITE_DISCARD_NV

    ctypedef GLintptr GLvdpauSurfaceNV
    
    ctypedef GLvdpauSurfaceNV *const_GLvdpauSurfaceNV_ptr "const GLvdpauSurfaceNV*"

    void glVDPAUFiniNV ()
    void glVDPAUGetSurfaceivNV (GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint *values)
    void glVDPAUInitNV (const_void_ptr  vdpDevice, GLvoid *getProcAddress)
    void glVDPAUIsSurfaceNV (GLvdpauSurfaceNV surface)
    void glVDPAUMapSurfacesNV (GLsizei numSurfaces, const_GLvdpauSurfaceNV_ptr surfaces)
    GLvdpauSurfaceNV glVDPAURegisterOutputSurfaceNV (const_void_ptr  vdpSurface, GLenum target, GLsizei numTextureNames, GLuint* textureNames)
    GLvdpauSurfaceNV glVDPAURegisterVideoSurfaceNV (const_void_ptr  vdpSurface, GLenum target, GLsizei numTextureNames, GLuint* textureNames)
    void glVDPAUSurfaceAccessNV (GLvdpauSurfaceNV surface, GLenum access)
    void glVDPAUUnmapSurfacesNV (GLsizei numSurface, const_GLvdpauSurfaceNV_ptr surfaces)
    void glVDPAUUnregisterSurfaceNV (GLvdpauSurfaceNV surface)

    #GL_NV_vertex_array_range

    cdef int GL_NV_vertex_array_range

    cdef int GL_VERTEX_ARRAY_RANGE_NV
    cdef int GL_VERTEX_ARRAY_RANGE_LENGTH_NV
    cdef int GL_VERTEX_ARRAY_RANGE_VALID_NV
    cdef int GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV
    cdef int GL_VERTEX_ARRAY_RANGE_POINTER_NV

    void glFlushVertexArrayRangeNV ()
    void glVertexArrayRangeNV (GLsizei length, void* pointer)

    #GL_NV_vertex_array_range2

    cdef int GL_NV_vertex_array_range2

    cdef int GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV

    #GL_NV_vertex_attrib_integer_64bit

    cdef int GL_NV_vertex_attrib_integer_64bit

    cdef int GL_INT64_NV
    cdef int GL_UNSIGNED_INT64_NV

    void glGetVertexAttribLi64vNV (GLuint index, GLenum pname, GLint64EXT* params)
    void glGetVertexAttribLui64vNV (GLuint index, GLenum pname, GLuint64EXT* params)
    void glVertexAttribL1i64NV (GLuint index, GLint64EXT x)
    void glVertexAttribL1i64vNV (GLuint index, GLint64EXT* v)
    void glVertexAttribL1ui64NV (GLuint index, GLuint64EXT x)
    void glVertexAttribL1ui64vNV (GLuint index, GLuint64EXT* v)
    void glVertexAttribL2i64NV (GLuint index, GLint64EXT x, GLint64EXT y)
    void glVertexAttribL2i64vNV (GLuint index, GLint64EXT* v)
    void glVertexAttribL2ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y)
    void glVertexAttribL2ui64vNV (GLuint index, GLuint64EXT* v)
    void glVertexAttribL3i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z)
    void glVertexAttribL3i64vNV (GLuint index, GLint64EXT* v)
    void glVertexAttribL3ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)
    void glVertexAttribL3ui64vNV (GLuint index, GLuint64EXT* v)
    void glVertexAttribL4i64NV (GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)
    void glVertexAttribL4i64vNV (GLuint index, GLint64EXT* v)
    void glVertexAttribL4ui64NV (GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)
    void glVertexAttribL4ui64vNV (GLuint index, GLuint64EXT* v)
    void glVertexAttribLFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride)

    #GL_NV_vertex_buffer_unified_memory

    cdef int GL_NV_vertex_buffer_unified_memory

    cdef int GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV
    cdef int GL_ELEMENT_ARRAY_UNIFIED_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV
    cdef int GL_VERTEX_ARRAY_ADDRESS_NV
    cdef int GL_NORMAL_ARRAY_ADDRESS_NV
    cdef int GL_COLOR_ARRAY_ADDRESS_NV
    cdef int GL_INDEX_ARRAY_ADDRESS_NV
    cdef int GL_TEXTURE_COORD_ARRAY_ADDRESS_NV
    cdef int GL_EDGE_FLAG_ARRAY_ADDRESS_NV
    cdef int GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV
    cdef int GL_FOG_COORD_ARRAY_ADDRESS_NV
    cdef int GL_ELEMENT_ARRAY_ADDRESS_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV
    cdef int GL_VERTEX_ARRAY_LENGTH_NV
    cdef int GL_NORMAL_ARRAY_LENGTH_NV
    cdef int GL_COLOR_ARRAY_LENGTH_NV
    cdef int GL_INDEX_ARRAY_LENGTH_NV
    cdef int GL_TEXTURE_COORD_ARRAY_LENGTH_NV
    cdef int GL_EDGE_FLAG_ARRAY_LENGTH_NV
    cdef int GL_SECONDARY_COLOR_ARRAY_LENGTH_NV
    cdef int GL_FOG_COORD_ARRAY_LENGTH_NV
    cdef int GL_ELEMENT_ARRAY_LENGTH_NV
    cdef int GL_DRAW_INDIRECT_UNIFIED_NV
    cdef int GL_DRAW_INDIRECT_ADDRESS_NV
    cdef int GL_DRAW_INDIRECT_LENGTH_NV

    void glBufferAddressRangeNV (GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length)
    void glColorFormatNV (GLint size, GLenum type, GLsizei stride)
    void glEdgeFlagFormatNV (GLsizei stride)
    void glFogCoordFormatNV (GLenum type, GLsizei stride)
    void glGetIntegerui64i_vNV (GLenum value, GLuint index, GLuint64EXT result[])
    void glIndexFormatNV (GLenum type, GLsizei stride)
    void glNormalFormatNV (GLenum type, GLsizei stride)
    void glSecondaryColorFormatNV (GLint size, GLenum type, GLsizei stride)
    void glTexCoordFormatNV (GLint size, GLenum type, GLsizei stride)
    void glVertexAttribFormatNV (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride)
    void glVertexAttribIFormatNV (GLuint index, GLint size, GLenum type, GLsizei stride)
    void glVertexFormatNV (GLint size, GLenum type, GLsizei stride)

    #GL_NV_vertex_program

    cdef int GL_NV_vertex_program

    cdef int GL_VERTEX_PROGRAM_NV
    cdef int GL_VERTEX_STATE_PROGRAM_NV
    cdef int GL_ATTRIB_ARRAY_SIZE_NV
    cdef int GL_ATTRIB_ARRAY_STRIDE_NV
    cdef int GL_ATTRIB_ARRAY_TYPE_NV
    cdef int GL_CURRENT_ATTRIB_NV
    cdef int GL_PROGRAM_LENGTH_NV
    cdef int GL_PROGRAM_STRING_NV
    cdef int GL_MODELVIEW_PROJECTION_NV
    cdef int GL_IDENTITY_NV
    cdef int GL_INVERSE_NV
    cdef int GL_TRANSPOSE_NV
    cdef int GL_INVERSE_TRANSPOSE_NV
    cdef int GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV
    cdef int GL_MAX_TRACK_MATRICES_NV
    cdef int GL_MATRIX0_NV
    cdef int GL_MATRIX1_NV
    cdef int GL_MATRIX2_NV
    cdef int GL_MATRIX3_NV
    cdef int GL_MATRIX4_NV
    cdef int GL_MATRIX5_NV
    cdef int GL_MATRIX6_NV
    cdef int GL_MATRIX7_NV
    cdef int GL_CURRENT_MATRIX_STACK_DEPTH_NV
    cdef int GL_CURRENT_MATRIX_NV
    cdef int GL_VERTEX_PROGRAM_POINT_SIZE_NV
    cdef int GL_VERTEX_PROGRAM_TWO_SIDE_NV
    cdef int GL_PROGRAM_PARAMETER_NV
    cdef int GL_ATTRIB_ARRAY_POINTER_NV
    cdef int GL_PROGRAM_TARGET_NV
    cdef int GL_PROGRAM_RESIDENT_NV
    cdef int GL_TRACK_MATRIX_NV
    cdef int GL_TRACK_MATRIX_TRANSFORM_NV
    cdef int GL_VERTEX_PROGRAM_BINDING_NV
    cdef int GL_PROGRAM_ERROR_POSITION_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY0_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY1_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY2_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY3_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY4_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY5_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY6_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY7_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY8_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY9_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY10_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY11_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY12_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY13_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY14_NV
    cdef int GL_VERTEX_ATTRIB_ARRAY15_NV
    cdef int GL_MAP1_VERTEX_ATTRIB0_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB1_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB2_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB3_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB4_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB5_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB6_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB7_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB8_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB9_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB10_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB11_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB12_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB13_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB14_4_NV
    cdef int GL_MAP1_VERTEX_ATTRIB15_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB0_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB1_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB2_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB3_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB4_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB5_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB6_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB7_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB8_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB9_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB10_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB11_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB12_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB13_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB14_4_NV
    cdef int GL_MAP2_VERTEX_ATTRIB15_4_NV

    GLboolean glAreProgramsResidentNV (GLsizei n, GLuint* ids, GLboolean *residences)
    void glBindProgramNV (GLenum target, GLuint id)
    void glDeleteProgramsNV (GLsizei n, GLuint* ids)
    void glExecuteProgramNV (GLenum target, GLuint id, GLfloat* params)
    void glGenProgramsNV (GLsizei n, GLuint* ids)
    void glGetProgramParameterdvNV (GLenum target, GLuint index, GLenum pname, GLdouble* params)
    void glGetProgramParameterfvNV (GLenum target, GLuint index, GLenum pname, GLfloat* params)
    void glGetProgramStringNV (GLuint id, GLenum pname, GLubyte* program)
    void glGetProgramivNV (GLuint id, GLenum pname, GLint* params)
    void glGetTrackMatrixivNV (GLenum target, GLuint address, GLenum pname, GLint* params)
    void glGetVertexAttribPointervNV (GLuint index, GLenum pname, GLvoid** pointer)
    void glGetVertexAttribdvNV (GLuint index, GLenum pname, GLdouble* params)
    void glGetVertexAttribfvNV (GLuint index, GLenum pname, GLfloat* params)
    void glGetVertexAttribivNV (GLuint index, GLenum pname, GLint* params)
    GLboolean glIsProgramNV (GLuint id)
    void glLoadProgramNV (GLenum target, GLuint id, GLsizei len, GLubyte*  program)
    void glProgramParameter4dNV (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glProgramParameter4dvNV (GLenum target, GLuint index, GLdouble*  params)
    void glProgramParameter4fNV (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glProgramParameter4fvNV (GLenum target, GLuint index, GLfloat*  params)
    void glProgramParameters4dvNV (GLenum target, GLuint index, GLsizei num, GLdouble*  params)
    void glProgramParameters4fvNV (GLenum target, GLuint index, GLsizei num, GLfloat*  params)
    void glRequestResidentProgramsNV (GLsizei n, GLuint* ids)
    void glTrackMatrixNV (GLenum target, GLuint address, GLenum matrix, GLenum transform)
    void glVertexAttrib1dNV (GLuint index, GLdouble x)
    void glVertexAttrib1dvNV (GLuint index, GLdouble*  v)
    void glVertexAttrib1fNV (GLuint index, GLfloat x)
    void glVertexAttrib1fvNV (GLuint index, GLfloat*  v)
    void glVertexAttrib1sNV (GLuint index, GLshort x)
    void glVertexAttrib1svNV (GLuint index, GLshort*  v)
    void glVertexAttrib2dNV (GLuint index, GLdouble x, GLdouble y)
    void glVertexAttrib2dvNV (GLuint index, GLdouble*  v)
    void glVertexAttrib2fNV (GLuint index, GLfloat x, GLfloat y)
    void glVertexAttrib2fvNV (GLuint index, GLfloat*  v)
    void glVertexAttrib2sNV (GLuint index, GLshort x, GLshort y)
    void glVertexAttrib2svNV (GLuint index, GLshort*  v)
    void glVertexAttrib3dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z)
    void glVertexAttrib3dvNV (GLuint index, GLdouble*  v)
    void glVertexAttrib3fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z)
    void glVertexAttrib3fvNV (GLuint index, GLfloat*  v)
    void glVertexAttrib3sNV (GLuint index, GLshort x, GLshort y, GLshort z)
    void glVertexAttrib3svNV (GLuint index, GLshort*  v)
    void glVertexAttrib4dNV (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    void glVertexAttrib4dvNV (GLuint index, GLdouble*  v)
    void glVertexAttrib4fNV (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glVertexAttrib4fvNV (GLuint index, GLfloat*  v)
    void glVertexAttrib4sNV (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)
    void glVertexAttrib4svNV (GLuint index, GLshort*  v)
    void glVertexAttrib4ubNV (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)
    void glVertexAttrib4ubvNV (GLuint index, GLubyte*  v)
    void glVertexAttribPointerNV (GLuint index, GLint size, GLenum type, GLsizei stride, const_void_ptr  pointer)
    void glVertexAttribs1dvNV (GLuint index, GLsizei n, GLdouble*  v)
    void glVertexAttribs1fvNV (GLuint index, GLsizei n, GLfloat*  v)
    void glVertexAttribs1svNV (GLuint index, GLsizei n, GLshort*  v)
    void glVertexAttribs2dvNV (GLuint index, GLsizei n, GLdouble*  v)
    void glVertexAttribs2fvNV (GLuint index, GLsizei n, GLfloat*  v)
    void glVertexAttribs2svNV (GLuint index, GLsizei n, GLshort*  v)
    void glVertexAttribs3dvNV (GLuint index, GLsizei n, GLdouble*  v)
    void glVertexAttribs3fvNV (GLuint index, GLsizei n, GLfloat*  v)
    void glVertexAttribs3svNV (GLuint index, GLsizei n, GLshort*  v)
    void glVertexAttribs4dvNV (GLuint index, GLsizei n, GLdouble*  v)
    void glVertexAttribs4fvNV (GLuint index, GLsizei n, GLfloat*  v)
    void glVertexAttribs4svNV (GLuint index, GLsizei n, GLshort*  v)
    void glVertexAttribs4ubvNV (GLuint index, GLsizei n, GLubyte*  v)

    #GL_NV_vertex_program1_1

    cdef int GL_NV_vertex_program1_1

    #GL_NV_vertex_program2

    cdef int GL_NV_vertex_program2

    #GL_NV_vertex_program2_option

    cdef int GL_NV_vertex_program2_option

    cdef int GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
    cdef int GL_MAX_PROGRAM_CALL_DEPTH_NV

    #GL_NV_vertex_program3

    cdef int GL_NV_vertex_program3

    cdef int MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB

    #GL_NV_vertex_program4

    cdef int GL_NV_vertex_program4

    cdef int GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV

    #GL_NV_video_capture

    cdef int GL_NV_video_capture

    cdef int GL_VIDEO_BUFFER_NV
    cdef int GL_VIDEO_BUFFER_BINDING_NV
    cdef int GL_FIELD_UPPER_NV
    cdef int GL_FIELD_LOWER_NV
    cdef int GL_NUM_VIDEO_CAPTURE_STREAMS_NV
    cdef int GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV
    cdef int GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV
    cdef int GL_LAST_VIDEO_CAPTURE_STATUS_NV
    cdef int GL_VIDEO_BUFFER_PITCH_NV
    cdef int GL_VIDEO_COLOR_CONVERSION_MATRIX_NV
    cdef int GL_VIDEO_COLOR_CONVERSION_MAX_NV
    cdef int GL_VIDEO_COLOR_CONVERSION_MIN_NV
    cdef int GL_VIDEO_COLOR_CONVERSION_OFFSET_NV
    cdef int GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV
    cdef int GL_PARTIAL_SUCCESS_NV
    cdef int GL_SUCCESS_NV
    cdef int GL_FAILURE_NV
    cdef int GL_YCBYCR8_422_NV
    cdef int GL_YCBAYCR8A_4224_NV
    cdef int GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV
    cdef int GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV
    cdef int GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV
    cdef int GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV
    cdef int GL_Z4Y12Z4CB12Z4CR12_444_NV
    cdef int GL_VIDEO_CAPTURE_FRAME_WIDTH_NV
    cdef int GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV
    cdef int GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV
    cdef int GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV
    cdef int GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV

    void glBeginVideoCaptureNV (GLuint video_capture_slot)
    void glBindVideoCaptureStreamBufferNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset)
    void glBindVideoCaptureStreamTextureNV (GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture)
    void glEndVideoCaptureNV (GLuint video_capture_slot)
    void glGetVideoCaptureStreamdvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params)
    void glGetVideoCaptureStreamfvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params)
    void glGetVideoCaptureStreamivNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params)
    void glGetVideoCaptureivNV (GLuint video_capture_slot, GLenum pname, GLint* params)
    GLenum glVideoCaptureNV (GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT *capture_time)
    void glVideoCaptureStreamParameterdvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble*  params)
    void glVideoCaptureStreamParameterfvNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat*  params)
    void glVideoCaptureStreamParameterivNV (GLuint video_capture_slot, GLuint stream, GLenum pname, GLint*  params)

    #GL_OES_byte_coordinates

    cdef int GL_OES_byte_coordinates

    cdef int GL_BYTE

    #GL_OES_compressed_paletted_texture

    cdef int GL_OES_compressed_paletted_texture

    cdef int GL_PALETTE4_RGB8_OES
    cdef int GL_PALETTE4_RGBA8_OES
    cdef int GL_PALETTE4_R5_G6_B5_OES
    cdef int GL_PALETTE4_RGBA4_OES
    cdef int GL_PALETTE4_RGB5_A1_OES
    cdef int GL_PALETTE8_RGB8_OES
    cdef int GL_PALETTE8_RGBA8_OES
    cdef int GL_PALETTE8_R5_G6_B5_OES
    cdef int GL_PALETTE8_RGBA4_OES
    cdef int GL_PALETTE8_RGB5_A1_OES

    #GL_OES_read_format

    cdef int GL_OES_read_format

    cdef int GL_IMPLEMENTATION_COLOR_READ_TYPE_OES
    cdef int GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES

    #GL_OES_single_precision

    cdef int GL_OES_single_precision

    void glClearDepthfOES (GLclampd depth)
    void glClipPlanefOES (GLenum plane, GLfloat*  equation)
    void glDepthRangefOES (GLclampf n, GLclampf f)
    void glFrustumfOES (GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f)
    void glGetClipPlanefOES (GLenum plane, GLfloat* equation)
    void glOrthofOES (GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f)

    #GL_OML_interlace

    cdef int GL_OML_interlace

    cdef int GL_INTERLACE_OML
    cdef int GL_INTERLACE_READ_OML

    #GL_OML_resample

    cdef int GL_OML_resample

    cdef int GL_PACK_RESAMPLE_OML
    cdef int GL_UNPACK_RESAMPLE_OML
    cdef int GL_RESAMPLE_REPLICATE_OML
    cdef int GL_RESAMPLE_ZERO_FILL_OML
    cdef int GL_RESAMPLE_AVERAGE_OML
    cdef int GL_RESAMPLE_DECIMATE_OML

    #GL_OML_subsample

    cdef int GL_OML_subsample

    cdef int GL_FORMAT_SUBSAMPLE_24_24_OML
    cdef int GL_FORMAT_SUBSAMPLE_244_244_OML

    #GL_PGI_misc_hints

    cdef int GL_PGI_misc_hints

    cdef int GL_PREFER_DOUBLEBUFFER_HINT_PGI
    cdef int GL_CONSERVE_MEMORY_HINT_PGI
    cdef int GL_RECLAIM_MEMORY_HINT_PGI
    cdef int GL_NATIVE_GRAPHICS_HANDLE_PGI
    cdef int GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI
    cdef int GL_NATIVE_GRAPHICS_END_HINT_PGI
    cdef int GL_ALWAYS_FAST_HINT_PGI
    cdef int GL_ALWAYS_SOFT_HINT_PGI
    cdef int GL_ALLOW_DRAW_OBJ_HINT_PGI
    cdef int GL_ALLOW_DRAW_WIN_HINT_PGI
    cdef int GL_ALLOW_DRAW_FRG_HINT_PGI
    cdef int GL_ALLOW_DRAW_MEM_HINT_PGI
    cdef int GL_STRICT_DEPTHFUNC_HINT_PGI
    cdef int GL_STRICT_LIGHTING_HINT_PGI
    cdef int GL_STRICT_SCISSOR_HINT_PGI
    cdef int GL_FULL_STIPPLE_HINT_PGI
    cdef int GL_CLIP_NEAR_HINT_PGI
    cdef int GL_CLIP_FAR_HINT_PGI
    cdef int GL_WIDE_LINE_HINT_PGI
    cdef int GL_BACK_NORMALS_HINT_PGI

    #GL_PGI_vertex_hints

    cdef int GL_PGI_vertex_hints

    cdef int GL_VERTEX23_BIT_PGI
    cdef int GL_VERTEX4_BIT_PGI
    cdef int GL_COLOR3_BIT_PGI
    cdef int GL_COLOR4_BIT_PGI
    cdef int GL_EDGEFLAG_BIT_PGI
    cdef int GL_INDEX_BIT_PGI
    cdef int GL_MAT_AMBIENT_BIT_PGI
    cdef int GL_VERTEX_DATA_HINT_PGI
    cdef int GL_VERTEX_CONSISTENT_HINT_PGI
    cdef int GL_MATERIAL_SIDE_HINT_PGI
    cdef int GL_MAX_VERTEX_HINT_PGI
    cdef int GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI
    cdef int GL_MAT_DIFFUSE_BIT_PGI
    cdef int GL_MAT_EMISSION_BIT_PGI
    cdef int GL_MAT_COLOR_INDEXES_BIT_PGI
    cdef int GL_MAT_SHININESS_BIT_PGI
    cdef int GL_MAT_SPECULAR_BIT_PGI
    cdef int GL_NORMAL_BIT_PGI
    cdef int GL_TEXCOORD1_BIT_PGI
    cdef int GL_TEXCOORD2_BIT_PGI
    cdef int GL_TEXCOORD3_BIT_PGI
    cdef int GL_TEXCOORD4_BIT_PGI

    #GL_REND_screen_coordinates

    cdef int GL_REND_screen_coordinates

    cdef int GL_SCREEN_COORDINATES_REND
    cdef int GL_INVERTED_SCREEN_W_REND

    #GL_S3_s3tc

    cdef int GL_S3_s3tc

    cdef int GL_RGB_S3TC
    cdef int GL_RGB4_S3TC
    cdef int GL_RGBA_S3TC
    cdef int GL_RGBA4_S3TC
    cdef int GL_RGBA_DXT5_S3TC
    cdef int GL_RGBA4_DXT5_S3TC

    #GL_SGIS_color_range

    cdef int GL_SGIS_color_range

    cdef int GL_EXTENDED_RANGE_SGIS
    cdef int GL_MIN_RED_SGIS
    cdef int GL_MAX_RED_SGIS
    cdef int GL_MIN_GREEN_SGIS
    cdef int GL_MAX_GREEN_SGIS
    cdef int GL_MIN_BLUE_SGIS
    cdef int GL_MAX_BLUE_SGIS
    cdef int GL_MIN_ALPHA_SGIS
    cdef int GL_MAX_ALPHA_SGIS

    #GL_SGIS_detail_texture

    cdef int GL_SGIS_detail_texture

    void glDetailTexFuncSGIS (GLenum target, GLsizei n, GLfloat*  points)
    void glGetDetailTexFuncSGIS (GLenum target, GLfloat* points)

    #GL_SGIS_fog_function

    cdef int GL_SGIS_fog_function

    void glFogFuncSGIS (GLsizei n, GLfloat*  points)
    void glGetFogFuncSGIS (GLfloat* points)

    #GL_SGIS_generate_mipmap

    cdef int GL_SGIS_generate_mipmap

    cdef int GL_GENERATE_MIPMAP_SGIS
    cdef int GL_GENERATE_MIPMAP_HINT_SGIS

    #GL_SGIS_multisample

    cdef int GL_SGIS_multisample

    cdef int GL_MULTISAMPLE_SGIS
    cdef int GL_SAMPLE_ALPHA_TO_MASK_SGIS
    cdef int GL_SAMPLE_ALPHA_TO_ONE_SGIS
    cdef int GL_SAMPLE_MASK_SGIS
    cdef int GL_1PASS_SGIS
    cdef int GL_2PASS_0_SGIS
    cdef int GL_2PASS_1_SGIS
    cdef int GL_4PASS_0_SGIS
    cdef int GL_4PASS_1_SGIS
    cdef int GL_4PASS_2_SGIS
    cdef int GL_4PASS_3_SGIS
    cdef int GL_SAMPLE_BUFFERS_SGIS
    cdef int GL_SAMPLES_SGIS
    cdef int GL_SAMPLE_MASK_VALUE_SGIS
    cdef int GL_SAMPLE_MASK_INVERT_SGIS
    cdef int GL_SAMPLE_PATTERN_SGIS
    cdef int GL_MULTISAMPLE_BIT_EXT

    void glSampleMaskSGIS (GLclampf value, GLboolean invert)
    void glSamplePatternSGIS (GLenum pattern)

    #GL_SGIS_pixel_texture

    cdef int GL_SGIS_pixel_texture

    #GL_SGIS_point_line_texgen

    cdef int GL_SGIS_point_line_texgen

    cdef int GL_EYE_DISTANCE_TO_POINT_SGIS
    cdef int GL_OBJECT_DISTANCE_TO_POINT_SGIS
    cdef int GL_EYE_DISTANCE_TO_LINE_SGIS
    cdef int GL_OBJECT_DISTANCE_TO_LINE_SGIS
    cdef int GL_EYE_POINT_SGIS
    cdef int GL_OBJECT_POINT_SGIS
    cdef int GL_EYE_LINE_SGIS
    cdef int GL_OBJECT_LINE_SGIS

    #GL_SGIS_sharpen_texture

    cdef int GL_SGIS_sharpen_texture

    void glGetSharpenTexFuncSGIS (GLenum target, GLfloat* points)
    void glSharpenTexFuncSGIS (GLenum target, GLsizei n, GLfloat*  points)

    #GL_SGIS_texture4D

    cdef int GL_SGIS_texture4D

    void glTexImage4DSGIS (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei extent, GLint border, GLenum format, GLenum type, const_void_ptr  pixels)
    void glTexSubImage4DSGIS (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei extent, GLenum format, GLenum type, const_void_ptr  pixels)

    #GL_SGIS_texture_border_clamp

    cdef int GL_SGIS_texture_border_clamp

    cdef int GL_CLAMP_TO_BORDER_SGIS

    #GL_SGIS_texture_edge_clamp

    cdef int GL_SGIS_texture_edge_clamp

    cdef int GL_CLAMP_TO_EDGE_SGIS

    #GL_SGIS_texture_filter4

    cdef int GL_SGIS_texture_filter4

    void glGetTexFilterFuncSGIS (GLenum target, GLenum filter, GLfloat* weights)
    void glTexFilterFuncSGIS (GLenum target, GLenum filter, GLsizei n, GLfloat*  weights)

    #GL_SGIS_texture_lod

    cdef int GL_SGIS_texture_lod

    cdef int GL_TEXTURE_MIN_LOD_SGIS
    cdef int GL_TEXTURE_MAX_LOD_SGIS
    cdef int GL_TEXTURE_BASE_LEVEL_SGIS
    cdef int GL_TEXTURE_MAX_LEVEL_SGIS

    #GL_SGIS_texture_select

    cdef int GL_SGIS_texture_select

    #GL_SGIX_async

    cdef int GL_SGIX_async

    cdef int GL_ASYNC_MARKER_SGIX

    void glAsyncMarkerSGIX (GLuint marker)
    void glDeleteAsyncMarkersSGIX (GLuint marker, GLsizei range)
    GLint glFinishAsyncSGIX (GLuint* markerp)
    GLuint glGenAsyncMarkersSGIX (GLsizei range)
    GLboolean glIsAsyncMarkerSGIX (GLuint marker)
    GLint glPollAsyncSGIX (GLuint* markerp)

    #GL_SGIX_async_histogram

    cdef int GL_SGIX_async_histogram

    cdef int GL_ASYNC_HISTOGRAM_SGIX
    cdef int GL_MAX_ASYNC_HISTOGRAM_SGIX

    #GL_SGIX_async_pixel

    cdef int GL_SGIX_async_pixel

    cdef int GL_ASYNC_TEX_IMAGE_SGIX
    cdef int GL_ASYNC_DRAW_PIXELS_SGIX
    cdef int GL_ASYNC_READ_PIXELS_SGIX
    cdef int GL_MAX_ASYNC_TEX_IMAGE_SGIX
    cdef int GL_MAX_ASYNC_DRAW_PIXELS_SGIX
    cdef int GL_MAX_ASYNC_READ_PIXELS_SGIX

    #GL_SGIX_blend_alpha_minmax

    cdef int GL_SGIX_blend_alpha_minmax

    cdef int GL_ALPHA_MIN_SGIX
    cdef int GL_ALPHA_MAX_SGIX

    #GL_SGIX_clipmap

    cdef int GL_SGIX_clipmap

    #GL_SGIX_convolution_accuracy

    cdef int GL_SGIX_convolution_accuracy

    cdef int GL_CONVOLUTION_HINT_SGIX

    #GL_SGIX_depth_texture

    cdef int GL_SGIX_depth_texture

    cdef int GL_DEPTH_COMPONENT16_SGIX
    cdef int GL_DEPTH_COMPONENT24_SGIX
    cdef int GL_DEPTH_COMPONENT32_SGIX

    #GL_SGIX_flush_raster

    cdef int GL_SGIX_flush_raster

    void glFlushRasterSGIX ()

    #GL_SGIX_fog_offset

    cdef int GL_SGIX_fog_offset

    cdef int GL_FOG_OFFSET_SGIX
    cdef int GL_FOG_OFFSET_VALUE_SGIX

    #GL_SGIX_fog_texture

    cdef int GL_SGIX_fog_texture

    cdef int GL_TEXTURE_FOG_SGIX
    cdef int GL_FOG_PATCHY_FACTOR_SGIX
    cdef int GL_FRAGMENT_FOG_SGIX

    void glTextureFogSGIX (GLenum pname)

    #GL_SGIX_fragment_specular_lighting

    cdef int GL_SGIX_fragment_specular_lighting

    void glFragmentColorMaterialSGIX (GLenum face, GLenum mode)
    void glFragmentLightModelfSGIX (GLenum pname, GLfloat param)
    void glFragmentLightModelfvSGIX (GLenum pname, GLfloat* params)
    void glFragmentLightModeliSGIX (GLenum pname, GLint param)
    void glFragmentLightModelivSGIX (GLenum pname, GLint* params)
    void glFragmentLightfSGIX (GLenum light, GLenum pname, GLfloat param)
    void glFragmentLightfvSGIX (GLenum light, GLenum pname, GLfloat* params)
    void glFragmentLightiSGIX (GLenum light, GLenum pname, GLint param)
    void glFragmentLightivSGIX (GLenum light, GLenum pname, GLint* params)
    void glFragmentMaterialfSGIX (GLenum face, GLenum pname, GLfloat param)
    void glFragmentMaterialfvSGIX (GLenum face, GLenum pname, GLfloat*  params)
    void glFragmentMaterialiSGIX (GLenum face, GLenum pname, GLint param)
    void glFragmentMaterialivSGIX (GLenum face, GLenum pname, GLint*  params)
    void glGetFragmentLightfvSGIX (GLenum light, GLenum value, GLfloat* data)
    void glGetFragmentLightivSGIX (GLenum light, GLenum value, GLint* data)
    void glGetFragmentMaterialfvSGIX (GLenum face, GLenum pname, GLfloat*  data)
    void glGetFragmentMaterialivSGIX (GLenum face, GLenum pname, GLint*  data)

    #GL_SGIX_framezoom

    cdef int GL_SGIX_framezoom

    void glFrameZoomSGIX (GLint factor)

    #GL_SGIX_interlace

    cdef int GL_SGIX_interlace

    cdef int GL_INTERLACE_SGIX

    #GL_SGIX_ir_instrument1

    cdef int GL_SGIX_ir_instrument1

    #GL_SGIX_list_priority

    cdef int GL_SGIX_list_priority

    #GL_SGIX_pixel_texture

    cdef int GL_SGIX_pixel_texture

    void glPixelTexGenSGIX (GLenum mode)

    #GL_SGIX_pixel_texture_bits

    cdef int GL_SGIX_pixel_texture_bits

    #GL_SGIX_reference_plane

    cdef int GL_SGIX_reference_plane

    void glReferencePlaneSGIX (GLdouble*  equation)

    #GL_SGIX_resample

    cdef int GL_SGIX_resample

    cdef int GL_PACK_RESAMPLE_SGIX
    cdef int GL_UNPACK_RESAMPLE_SGIX
    cdef int GL_RESAMPLE_DECIMATE_SGIX
    cdef int GL_RESAMPLE_REPLICATE_SGIX
    cdef int GL_RESAMPLE_ZERO_FILL_SGIX

    #GL_SGIX_shadow

    cdef int GL_SGIX_shadow

    cdef int GL_TEXTURE_COMPARE_SGIX
    cdef int GL_TEXTURE_COMPARE_OPERATOR_SGIX
    cdef int GL_TEXTURE_LEQUAL_R_SGIX
    cdef int GL_TEXTURE_GEQUAL_R_SGIX

    #GL_SGIX_shadow_ambient

    cdef int GL_SGIX_shadow_ambient

    cdef int GL_SHADOW_AMBIENT_SGIX

    #GL_SGIX_sprite

    cdef int GL_SGIX_sprite

    void glSpriteParameterfSGIX (GLenum pname, GLfloat param)
    void glSpriteParameterfvSGIX (GLenum pname, GLfloat* params)
    void glSpriteParameteriSGIX (GLenum pname, GLint param)
    void glSpriteParameterivSGIX (GLenum pname, GLint* params)

    #GL_SGIX_tag_sample_buffer

    cdef int GL_SGIX_tag_sample_buffer

    void glTagSampleBufferSGIX ()

    #GL_SGIX_texture_add_env

    cdef int GL_SGIX_texture_add_env

    #GL_SGIX_texture_coordinate_clamp

    cdef int GL_SGIX_texture_coordinate_clamp

    cdef int GL_TEXTURE_MAX_CLAMP_S_SGIX
    cdef int GL_TEXTURE_MAX_CLAMP_T_SGIX
    cdef int GL_TEXTURE_MAX_CLAMP_R_SGIX

    #GL_SGIX_texture_lod_bias

    cdef int GL_SGIX_texture_lod_bias

    #GL_SGIX_texture_multi_buffer

    cdef int GL_SGIX_texture_multi_buffer

    cdef int GL_TEXTURE_MULTI_BUFFER_HINT_SGIX

    #GL_SGIX_texture_range

    cdef int GL_SGIX_texture_range

    cdef int GL_RGB_SIGNED_SGIX
    cdef int GL_RGBA_SIGNED_SGIX
    cdef int GL_ALPHA_SIGNED_SGIX
    cdef int GL_LUMINANCE_SIGNED_SGIX
    cdef int GL_INTENSITY_SIGNED_SGIX
    cdef int GL_LUMINANCE_ALPHA_SIGNED_SGIX
    cdef int GL_RGB16_SIGNED_SGIX
    cdef int GL_RGBA16_SIGNED_SGIX
    cdef int GL_ALPHA16_SIGNED_SGIX
    cdef int GL_LUMINANCE16_SIGNED_SGIX
    cdef int GL_INTENSITY16_SIGNED_SGIX
    cdef int GL_LUMINANCE16_ALPHA16_SIGNED_SGIX
    cdef int GL_RGB_EXTENDED_RANGE_SGIX
    cdef int GL_RGBA_EXTENDED_RANGE_SGIX
    cdef int GL_ALPHA_EXTENDED_RANGE_SGIX
    cdef int GL_LUMINANCE_EXTENDED_RANGE_SGIX
    cdef int GL_INTENSITY_EXTENDED_RANGE_SGIX
    cdef int GL_LUMINANCE_ALPHA_EXTENDED_RANGE_SGIX
    cdef int GL_RGB16_EXTENDED_RANGE_SGIX
    cdef int GL_RGBA16_EXTENDED_RANGE_SGIX
    cdef int GL_ALPHA16_EXTENDED_RANGE_SGIX
    cdef int GL_LUMINANCE16_EXTENDED_RANGE_SGIX
    cdef int GL_INTENSITY16_EXTENDED_RANGE_SGIX
    cdef int GL_LUMINANCE16_ALPHA16_EXTENDED_RANGE_SGIX
    cdef int GL_MIN_LUMINANCE_SGIS
    cdef int GL_MAX_LUMINANCE_SGIS
    cdef int GL_MIN_INTENSITY_SGIS
    cdef int GL_MAX_INTENSITY_SGIS

    #GL_SGIX_texture_scale_bias

    cdef int GL_SGIX_texture_scale_bias

    cdef int GL_POST_TEXTURE_FILTER_BIAS_SGIX
    cdef int GL_POST_TEXTURE_FILTER_SCALE_SGIX
    cdef int GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX
    cdef int GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX

    #GL_SGIX_vertex_preclip

    cdef int GL_SGIX_vertex_preclip

    cdef int GL_VERTEX_PRECLIP_SGIX
    cdef int GL_VERTEX_PRECLIP_HINT_SGIX

    #GL_SGIX_vertex_preclip_hint

    cdef int GL_SGIX_vertex_preclip_hint

    cdef int GL_VERTEX_PRECLIP_SGIX
    cdef int GL_VERTEX_PRECLIP_HINT_SGIX

    #GL_SGIX_ycrcb

    cdef int GL_SGIX_ycrcb

    #GL_SGI_color_matrix

    cdef int GL_SGI_color_matrix

    cdef int GL_COLOR_MATRIX_SGI
    cdef int GL_COLOR_MATRIX_STACK_DEPTH_SGI
    cdef int GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI
    cdef int GL_POST_COLOR_MATRIX_RED_SCALE_SGI
    cdef int GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI
    cdef int GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI
    cdef int GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI
    cdef int GL_POST_COLOR_MATRIX_RED_BIAS_SGI
    cdef int GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI
    cdef int GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI
    cdef int GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI

    #GL_SGI_color_table

    cdef int GL_SGI_color_table

    cdef int GL_COLOR_TABLE_SGI
    cdef int GL_POST_CONVOLUTION_COLOR_TABLE_SGI
    cdef int GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI
    cdef int GL_PROXY_COLOR_TABLE_SGI
    cdef int GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI
    cdef int GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI
    cdef int GL_COLOR_TABLE_SCALE_SGI
    cdef int GL_COLOR_TABLE_BIAS_SGI
    cdef int GL_COLOR_TABLE_FORMAT_SGI
    cdef int GL_COLOR_TABLE_WIDTH_SGI
    cdef int GL_COLOR_TABLE_RED_SIZE_SGI
    cdef int GL_COLOR_TABLE_GREEN_SIZE_SGI
    cdef int GL_COLOR_TABLE_BLUE_SIZE_SGI
    cdef int GL_COLOR_TABLE_ALPHA_SIZE_SGI
    cdef int GL_COLOR_TABLE_LUMINANCE_SIZE_SGI
    cdef int GL_COLOR_TABLE_INTENSITY_SIZE_SGI

    void glColorTableParameterfvSGI (GLenum target, GLenum pname, GLfloat*  params)
    void glColorTableParameterivSGI (GLenum target, GLenum pname, GLint*  params)
    void glColorTableSGI (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const_void_ptr  table)
    void glCopyColorTableSGI (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
    void glGetColorTableParameterfvSGI (GLenum target, GLenum pname, GLfloat* params)
    void glGetColorTableParameterivSGI (GLenum target, GLenum pname, GLint* params)
    void glGetColorTableSGI (GLenum target, GLenum format, GLenum type, void* table)

    #GL_SGI_texture_color_table

    cdef int GL_SGI_texture_color_table

    cdef int GL_TEXTURE_COLOR_TABLE_SGI
    cdef int GL_PROXY_TEXTURE_COLOR_TABLE_SGI

    #GL_SUNX_constant_data

    cdef int GL_SUNX_constant_data

    cdef int GL_UNPACK_CONSTANT_DATA_SUNX
    cdef int GL_TEXTURE_CONSTANT_DATA_SUNX

    void glFinishTextureSUNX ()

    #GL_SUN_convolution_border_modes

    cdef int GL_SUN_convolution_border_modes

    cdef int GL_WRAP_BORDER_SUN

    #GL_SUN_global_alpha

    cdef int GL_SUN_global_alpha

    cdef int GL_GLOBAL_ALPHA_SUN
    cdef int GL_GLOBAL_ALPHA_FACTOR_SUN

    void glGlobalAlphaFactorbSUN (GLbyte factor)
    void glGlobalAlphaFactordSUN (GLdouble factor)
    void glGlobalAlphaFactorfSUN (GLfloat factor)
    void glGlobalAlphaFactoriSUN (GLint factor)
    void glGlobalAlphaFactorsSUN (GLshort factor)
    void glGlobalAlphaFactorubSUN (GLubyte factor)
    void glGlobalAlphaFactoruiSUN (GLuint factor)
    void glGlobalAlphaFactorusSUN (GLushort factor)

    #GL_SUN_mesh_array

    cdef int GL_SUN_mesh_array

    cdef int GL_QUAD_MESH_SUN
    cdef int GL_TRIANGLE_MESH_SUN

    #GL_SUN_read_video_pixels

    cdef int GL_SUN_read_video_pixels

    void glReadVideoPixelsSUN (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels)

    #GL_SUN_slice_accum

    cdef int GL_SUN_slice_accum

    cdef int GL_SLICE_ACCUM_SUN

    #GL_SUN_triangle_list

    cdef int GL_SUN_triangle_list

    cdef int GL_RESTART_SUN
    cdef int GL_REPLACE_MIDDLE_SUN
    cdef int GL_REPLACE_OLDEST_SUN
    cdef int GL_TRIANGLE_LIST_SUN
    cdef int GL_REPLACEMENT_CODE_SUN
    cdef int GL_REPLACEMENT_CODE_ARRAY_SUN
    cdef int GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN
    cdef int GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN
    cdef int GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN
    cdef int GL_R1UI_V3F_SUN
    cdef int GL_R1UI_C4UB_V3F_SUN
    cdef int GL_R1UI_C3F_V3F_SUN
    cdef int GL_R1UI_N3F_V3F_SUN
    cdef int GL_R1UI_C4F_N3F_V3F_SUN
    cdef int GL_R1UI_T2F_V3F_SUN
    cdef int GL_R1UI_T2F_N3F_V3F_SUN
    cdef int GL_R1UI_T2F_C4F_N3F_V3F_SUN

    void glReplacementCodePointerSUN (GLenum type, GLsizei stride, const_void_ptr  pointer)
    void glReplacementCodeubSUN (GLubyte code)
    void glReplacementCodeubvSUN (GLubyte*  code)
    void glReplacementCodeuiSUN (GLuint code)
    void glReplacementCodeuivSUN (GLuint* code)
    void glReplacementCodeusSUN (GLushort code)
    void glReplacementCodeusvSUN (GLushort* code)

    #GL_SUN_vertex

    cdef int GL_SUN_vertex

    void glColor3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)
    void glColor3fVertex3fvSUN (GLfloat*  c, GLfloat* v)
    void glColor4fNormal3fVertex3fSUN (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
    void glColor4fNormal3fVertex3fvSUN (GLfloat*  c, GLfloat* n, GLfloat* v)
    void glColor4ubVertex2fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y)
    void glColor4ubVertex2fvSUN (GLubyte* c, GLfloat* v)
    void glColor4ubVertex3fSUN (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)
    void glColor4ubVertex3fvSUN (GLubyte* c, GLfloat* v)
    void glNormal3fVertex3fSUN (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
    void glNormal3fVertex3fvSUN (GLfloat*  n, GLfloat* v)
    void glReplacementCodeuiColor3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)
    void glReplacementCodeuiColor3fVertex3fvSUN (GLuint*  rc, GLfloat* c, GLfloat* v)
    void glReplacementCodeuiColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
    void glReplacementCodeuiColor4fNormal3fVertex3fvSUN (GLuint*  rc, GLfloat* c, GLfloat* n, GLfloat* v)
    void glReplacementCodeuiColor4ubVertex3fSUN (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)
    void glReplacementCodeuiColor4ubVertex3fvSUN (GLuint*  rc, GLubyte* c, GLfloat* v)
    void glReplacementCodeuiNormal3fVertex3fSUN (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
    void glReplacementCodeuiNormal3fVertex3fvSUN (GLuint*  rc, GLfloat* n, GLfloat* v)
    void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
    void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN (GLuint*  rc, GLfloat* tc, GLfloat* c, GLfloat* n, GLfloat* v)
    void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
    void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN (GLuint*  rc, GLfloat* tc, GLfloat* n, GLfloat* v)
    void glReplacementCodeuiTexCoord2fVertex3fSUN (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)
    void glReplacementCodeuiTexCoord2fVertex3fvSUN (GLuint*  rc, GLfloat* tc, GLfloat* v)
    void glReplacementCodeuiVertex3fSUN (GLuint rc, GLfloat x, GLfloat y, GLfloat z)
    void glReplacementCodeuiVertex3fvSUN (GLuint*  rc, GLfloat* v)
    void glTexCoord2fColor3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)
    void glTexCoord2fColor3fVertex3fvSUN (GLfloat*  tc, GLfloat* c, GLfloat* v)
    void glTexCoord2fColor4fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
    void glTexCoord2fColor4fNormal3fVertex3fvSUN (GLfloat*  tc, GLfloat* c, GLfloat* n, GLfloat* v)
    void glTexCoord2fColor4ubVertex3fSUN (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)
    void glTexCoord2fColor4ubVertex3fvSUN (GLfloat*  tc, GLubyte* c, GLfloat* v)
    void glTexCoord2fNormal3fVertex3fSUN (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)
    void glTexCoord2fNormal3fVertex3fvSUN (GLfloat*  tc, GLfloat* n, GLfloat* v)
    void glTexCoord2fVertex3fSUN (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)
    void glTexCoord2fVertex3fvSUN (GLfloat*  tc, GLfloat* v)
    void glTexCoord4fColor4fNormal3fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glTexCoord4fColor4fNormal3fVertex4fvSUN (GLfloat*  tc, GLfloat* c, GLfloat* n, GLfloat* v)
    void glTexCoord4fVertex4fSUN (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
    void glTexCoord4fVertex4fvSUN (GLfloat* tc, GLfloat* v)

    #GL_WIN_phong_shading

    cdef int GL_WIN_phong_shading

    cdef int GL_PHONG_WIN
    cdef int GL_PHONG_HINT_WIN

    #GL_WIN_specular_fog

    cdef int GL_WIN_specular_fog

    cdef int GL_FOG_SPECULAR_TEXTURE_WIN

    #GL_WIN_swap_hint

    cdef int GL_WIN_swap_hint

    void glAddSwapHintRectWIN (GLint x, GLint y, GLsizei width, GLsizei height)

    #-------------------------------------------------------------------------

    #error codes
    cdef int GLEW_OK
    cdef int GLEW_NO_ERROR
    cdef int GLEW_ERROR_NO_GL_VERSION    #missing GL ver
    cdef int GLEW_ERROR_GL_VERSION_10_ONLY    #Need at least OpenGL
    cdef int GLEW_ERROR_GLX_VERSION_11_ONLY    #Need at least GLX

    #string codes
    cdef int GLEW_VERSION
    cdef int GLEW_VERSION_MAJOR
    cdef int GLEW_VERSION_MINOR
    cdef int GLEW_VERSION_MICRO

    #API

    ctypedef struct GLEWContextStruct:
        pass
    ctypedef GLEWContextStruct GLEWContext
    ctypedef struct GLEWContext:
        pass
    
    ctypedef GLEWContext *const_GLEWContext_ptr "const GLEWContext*"
    
    GLenum glewContextInit (GLEWContext* ctx)
    GLboolean glewContextIsSupported (const_GLEWContext_ptr ctx, const_char_ptr  name)

    GLenum glewInit ()
    GLboolean glewIsSupported (const_char_ptr  name)
    cdef int glewIsExtensionSupported(x)

    GLboolean glewExperimental
    GLboolean glewGetExtension (const_char_ptr  name)
    GLubyte  glewGetErrorString (GLenum error)
    GLubyte  glewGetString (GLenum name)

    cdef GLboolean GLEW_VERSION_1_1
    cdef GLboolean GLEW_VERSION_1_2
    cdef GLboolean GLEW_VERSION_1_2_1
    cdef GLboolean GLEW_VERSION_1_3
    cdef GLboolean GLEW_VERSION_1_4
    cdef GLboolean GLEW_VERSION_1_5
    cdef GLboolean GLEW_VERSION_2_0
    cdef GLboolean GLEW_VERSION_2_1
    cdef GLboolean GLEW_VERSION_3_0
    cdef GLboolean GLEW_VERSION_3_1
    cdef GLboolean GLEW_VERSION_3_2
    cdef GLboolean GLEW_VERSION_3_3
    cdef GLboolean GLEW_VERSION_4_0
    cdef GLboolean GLEW_VERSION_4_1
    cdef GLboolean GLEW_VERSION_4_2
    cdef GLboolean GLEW_3DFX_multisample
    cdef GLboolean GLEW_3DFX_tbuffer
    cdef GLboolean GLEW_3DFX_texture_compression_FXT1
    cdef GLboolean GLEW_AMD_blend_minmax_factor
    cdef GLboolean GLEW_AMD_conservative_depth
    cdef GLboolean GLEW_AMD_debug_output
    cdef GLboolean GLEW_AMD_depth_clamp_separate
    cdef GLboolean GLEW_AMD_draw_buffers_blend
    cdef GLboolean GLEW_AMD_multi_draw_indirect
    cdef GLboolean GLEW_AMD_name_gen_delete
    cdef GLboolean GLEW_AMD_performance_monitor
    cdef GLboolean GLEW_AMD_sample_positions
    cdef GLboolean GLEW_AMD_seamless_cubemap_per_texture
    cdef GLboolean GLEW_AMD_shader_stencil_export
    cdef GLboolean GLEW_AMD_texture_texture4
    cdef GLboolean GLEW_AMD_transform_feedback3_lines_triangles
    cdef GLboolean GLEW_AMD_vertex_shader_tessellator
    cdef GLboolean GLEW_APPLE_aux_depth_stencil
    cdef GLboolean GLEW_APPLE_client_storage
    cdef GLboolean GLEW_APPLE_element_array
    cdef GLboolean GLEW_APPLE_fence
    cdef GLboolean GLEW_APPLE_float_pixels
    cdef GLboolean GLEW_APPLE_flush_buffer_range
    cdef GLboolean GLEW_APPLE_object_purgeable
    cdef GLboolean GLEW_APPLE_pixel_buffer
    cdef GLboolean GLEW_APPLE_rgb_422
    cdef GLboolean GLEW_APPLE_row_bytes
    cdef GLboolean GLEW_APPLE_specular_vector
    cdef GLboolean GLEW_APPLE_texture_range
    cdef GLboolean GLEW_APPLE_transform_hint
    cdef GLboolean GLEW_APPLE_vertex_array_object
    cdef GLboolean GLEW_APPLE_vertex_array_range
    cdef GLboolean GLEW_APPLE_vertex_program_evaluators
    cdef GLboolean GLEW_APPLE_ycbcr_422
    cdef GLboolean GLEW_ARB_ES2_compatibility
    cdef GLboolean GLEW_ARB_base_instance
    cdef GLboolean GLEW_ARB_blend_func_extended
    cdef GLboolean GLEW_ARB_cl_event
    cdef GLboolean GLEW_ARB_color_buffer_float
    cdef GLboolean GLEW_ARB_compatibility
    cdef GLboolean GLEW_ARB_compressed_texture_pixel_storage
    cdef GLboolean GLEW_ARB_conservative_depth
    cdef GLboolean GLEW_ARB_copy_buffer
    cdef GLboolean GLEW_ARB_debug_output
    cdef GLboolean GLEW_ARB_depth_buffer_float
    cdef GLboolean GLEW_ARB_depth_clamp
    cdef GLboolean GLEW_ARB_depth_texture
    cdef GLboolean GLEW_ARB_draw_buffers
    cdef GLboolean GLEW_ARB_draw_buffers_blend
    cdef GLboolean GLEW_ARB_draw_elements_base_vertex
    cdef GLboolean GLEW_ARB_draw_indirect
    cdef GLboolean GLEW_ARB_draw_instanced
    cdef GLboolean GLEW_ARB_explicit_attrib_location
    cdef GLboolean GLEW_ARB_fragment_coord_conventions
    cdef GLboolean GLEW_ARB_fragment_program
    cdef GLboolean GLEW_ARB_fragment_program_shadow
    cdef GLboolean GLEW_ARB_fragment_shader
    cdef GLboolean GLEW_ARB_framebuffer_object
    cdef GLboolean GLEW_ARB_framebuffer_sRGB
    cdef GLboolean GLEW_ARB_geometry_shader4
    cdef GLboolean GLEW_ARB_get_program_binary
    cdef GLboolean GLEW_ARB_gpu_shader5
    cdef GLboolean GLEW_ARB_gpu_shader_fp64
    cdef GLboolean GLEW_ARB_half_float_pixel
    cdef GLboolean GLEW_ARB_half_float_vertex
    cdef GLboolean GLEW_ARB_imaging
    cdef GLboolean GLEW_ARB_instanced_arrays
    cdef GLboolean GLEW_ARB_internalformat_query
    cdef GLboolean GLEW_ARB_map_buffer_alignment
    cdef GLboolean GLEW_ARB_map_buffer_range
    cdef GLboolean GLEW_ARB_matrix_palette
    cdef GLboolean GLEW_ARB_multisample
    cdef GLboolean GLEW_ARB_multitexture
    cdef GLboolean GLEW_ARB_occlusion_query
    cdef GLboolean GLEW_ARB_occlusion_query2
    cdef GLboolean GLEW_ARB_pixel_buffer_object
    cdef GLboolean GLEW_ARB_point_parameters
    cdef GLboolean GLEW_ARB_point_sprite
    cdef GLboolean GLEW_ARB_provoking_vertex
    cdef GLboolean GLEW_ARB_robustness
    cdef GLboolean GLEW_ARB_sample_shading
    cdef GLboolean GLEW_ARB_sampler_objects
    cdef GLboolean GLEW_ARB_seamless_cube_map
    cdef GLboolean GLEW_ARB_separate_shader_objects
    cdef GLboolean GLEW_ARB_shader_atomic_counters
    cdef GLboolean GLEW_ARB_shader_bit_encoding
    cdef GLboolean GLEW_ARB_shader_image_load_store
    cdef GLboolean GLEW_ARB_shader_objects
    cdef GLboolean GLEW_ARB_shader_precision
    cdef GLboolean GLEW_ARB_shader_stencil_export
    cdef GLboolean GLEW_ARB_shader_subroutine
    cdef GLboolean GLEW_ARB_shader_texture_lod
    cdef GLboolean GLEW_ARB_shading_language_100
    cdef GLboolean GLEW_ARB_shading_language_420pack
    cdef GLboolean GLEW_ARB_shading_language_include
    cdef GLboolean GLEW_ARB_shading_language_packing
    cdef GLboolean GLEW_ARB_shadow
    cdef GLboolean GLEW_ARB_shadow_ambient
    cdef GLboolean GLEW_ARB_sync
    cdef GLboolean GLEW_ARB_tessellation_shader
    cdef GLboolean GLEW_ARB_texture_border_clamp
    cdef GLboolean GLEW_ARB_texture_buffer_object
    cdef GLboolean GLEW_ARB_texture_buffer_object_rgb32
    cdef GLboolean GLEW_ARB_texture_compression
    cdef GLboolean GLEW_ARB_texture_compression_bptc
    cdef GLboolean GLEW_ARB_texture_compression_rgtc
    cdef GLboolean GLEW_ARB_texture_cube_map
    cdef GLboolean GLEW_ARB_texture_cube_map_array
    cdef GLboolean GLEW_ARB_texture_env_add
    cdef GLboolean GLEW_ARB_texture_env_combine
    cdef GLboolean GLEW_ARB_texture_env_crossbar
    cdef GLboolean GLEW_ARB_texture_env_dot3
    cdef GLboolean GLEW_ARB_texture_float
    cdef GLboolean GLEW_ARB_texture_gather
    cdef GLboolean GLEW_ARB_texture_mirrored_repeat
    cdef GLboolean GLEW_ARB_texture_multisample
    cdef GLboolean GLEW_ARB_texture_non_power_of_two
    cdef GLboolean GLEW_ARB_texture_query_lod
    cdef GLboolean GLEW_ARB_texture_rectangle
    cdef GLboolean GLEW_ARB_texture_rg
    cdef GLboolean GLEW_ARB_texture_rgb10_a2ui
    cdef GLboolean GLEW_ARB_texture_storage
    cdef GLboolean GLEW_ARB_texture_swizzle
    cdef GLboolean GLEW_ARB_timer_query
    cdef GLboolean GLEW_ARB_transform_feedback2
    cdef GLboolean GLEW_ARB_transform_feedback3
    cdef GLboolean GLEW_ARB_transform_feedback_instanced
    cdef GLboolean GLEW_ARB_transpose_matrix
    cdef GLboolean GLEW_ARB_uniform_buffer_object
    cdef GLboolean GLEW_ARB_vertex_array_bgra
    cdef GLboolean GLEW_ARB_vertex_array_object
    cdef GLboolean GLEW_ARB_vertex_attrib_64bit
    cdef GLboolean GLEW_ARB_vertex_blend
    cdef GLboolean GLEW_ARB_vertex_buffer_object
    cdef GLboolean GLEW_ARB_vertex_program
    cdef GLboolean GLEW_ARB_vertex_shader
    cdef GLboolean GLEW_ARB_vertex_type_2_10_10_10_rev
    cdef GLboolean GLEW_ARB_viewport_array
    cdef GLboolean GLEW_ARB_window_pos
    cdef GLboolean GLEW_ATIX_point_sprites
    cdef GLboolean GLEW_ATIX_texture_env_combine3
    cdef GLboolean GLEW_ATIX_texture_env_route
    cdef GLboolean GLEW_ATIX_vertex_shader_output_point_size
    cdef GLboolean GLEW_ATI_draw_buffers
    cdef GLboolean GLEW_ATI_element_array
    cdef GLboolean GLEW_ATI_envmap_bumpmap
    cdef GLboolean GLEW_ATI_fragment_shader
    cdef GLboolean GLEW_ATI_map_object_buffer
    cdef GLboolean GLEW_ATI_meminfo
    cdef GLboolean GLEW_ATI_pn_triangles
    cdef GLboolean GLEW_ATI_separate_stencil
    cdef GLboolean GLEW_ATI_shader_texture_lod
    cdef GLboolean GLEW_ATI_text_fragment_shader
    cdef GLboolean GLEW_ATI_texture_compression_3dc
    cdef GLboolean GLEW_ATI_texture_env_combine3
    cdef GLboolean GLEW_ATI_texture_float
    cdef GLboolean GLEW_ATI_texture_mirror_once
    cdef GLboolean GLEW_ATI_vertex_array_object
    cdef GLboolean GLEW_ATI_vertex_attrib_array_object
    cdef GLboolean GLEW_ATI_vertex_streams
    cdef GLboolean GLEW_EXT_422_pixels
    cdef GLboolean GLEW_EXT_Cg_shader
    cdef GLboolean GLEW_EXT_abgr
    cdef GLboolean GLEW_EXT_bgra
    cdef GLboolean GLEW_EXT_bindable_uniform
    cdef GLboolean GLEW_EXT_blend_color
    cdef GLboolean GLEW_EXT_blend_equation_separate
    cdef GLboolean GLEW_EXT_blend_func_separate
    cdef GLboolean GLEW_EXT_blend_logic_op
    cdef GLboolean GLEW_EXT_blend_minmax
    cdef GLboolean GLEW_EXT_blend_subtract
    cdef GLboolean GLEW_EXT_clip_volume_hint
    cdef GLboolean GLEW_EXT_cmyka
    cdef GLboolean GLEW_EXT_color_subtable
    cdef GLboolean GLEW_EXT_compiled_vertex_array
    cdef GLboolean GLEW_EXT_convolution
    cdef GLboolean GLEW_EXT_coordinate_frame
    cdef GLboolean GLEW_EXT_copy_texture
    cdef GLboolean GLEW_EXT_cull_vertex
    cdef GLboolean GLEW_EXT_depth_bounds_test
    cdef GLboolean GLEW_EXT_direct_state_access
    cdef GLboolean GLEW_EXT_draw_buffers2
    cdef GLboolean GLEW_EXT_draw_instanced
    cdef GLboolean GLEW_EXT_draw_range_elements
    cdef GLboolean GLEW_EXT_fog_coord
    cdef GLboolean GLEW_EXT_fragment_lighting
    cdef GLboolean GLEW_EXT_framebuffer_blit
    cdef GLboolean GLEW_EXT_framebuffer_multisample
    cdef GLboolean GLEW_EXT_framebuffer_multisample_blit_scaled
    cdef GLboolean GLEW_EXT_framebuffer_object
    cdef GLboolean GLEW_EXT_framebuffer_sRGB
    cdef GLboolean GLEW_EXT_geometry_shader4
    cdef GLboolean GLEW_EXT_gpu_program_parameters
    cdef GLboolean GLEW_EXT_gpu_shader4
    cdef GLboolean GLEW_EXT_histogram
    cdef GLboolean GLEW_EXT_index_array_formats
    cdef GLboolean GLEW_EXT_index_func
    cdef GLboolean GLEW_EXT_index_material
    cdef GLboolean GLEW_EXT_index_texture
    cdef GLboolean GLEW_EXT_light_texture
    cdef GLboolean GLEW_EXT_misc_attribute
    cdef GLboolean GLEW_EXT_multi_draw_arrays
    cdef GLboolean GLEW_EXT_multisample
    cdef GLboolean GLEW_EXT_packed_depth_stencil
    cdef GLboolean GLEW_EXT_packed_float
    cdef GLboolean GLEW_EXT_packed_pixels
    cdef GLboolean GLEW_EXT_paletted_texture
    cdef GLboolean GLEW_EXT_pixel_buffer_object
    cdef GLboolean GLEW_EXT_pixel_transform
    cdef GLboolean GLEW_EXT_pixel_transform_color_table
    cdef GLboolean GLEW_EXT_point_parameters
    cdef GLboolean GLEW_EXT_polygon_offset
    cdef GLboolean GLEW_EXT_provoking_vertex
    cdef GLboolean GLEW_EXT_rescale_normal
    cdef GLboolean GLEW_EXT_scene_marker
    cdef GLboolean GLEW_EXT_secondary_color
    cdef GLboolean GLEW_EXT_separate_shader_objects
    cdef GLboolean GLEW_EXT_separate_specular_color
    cdef GLboolean GLEW_EXT_shader_image_load_store
    cdef GLboolean GLEW_EXT_shadow_funcs
    cdef GLboolean GLEW_EXT_shared_texture_palette
    cdef GLboolean GLEW_EXT_stencil_clear_tag
    cdef GLboolean GLEW_EXT_stencil_two_side
    cdef GLboolean GLEW_EXT_stencil_wrap
    cdef GLboolean GLEW_EXT_subtexture
    cdef GLboolean GLEW_EXT_texture
    cdef GLboolean GLEW_EXT_texture3D
    cdef GLboolean GLEW_EXT_texture_array
    cdef GLboolean GLEW_EXT_texture_buffer_object
    cdef GLboolean GLEW_EXT_texture_compression_dxt1
    cdef GLboolean GLEW_EXT_texture_compression_latc
    cdef GLboolean GLEW_EXT_texture_compression_rgtc
    cdef GLboolean GLEW_EXT_texture_compression_s3tc
    cdef GLboolean GLEW_EXT_texture_cube_map
    cdef GLboolean GLEW_EXT_texture_edge_clamp
    cdef GLboolean GLEW_EXT_texture_env
    cdef GLboolean GLEW_EXT_texture_env_add
    cdef GLboolean GLEW_EXT_texture_env_combine
    cdef GLboolean GLEW_EXT_texture_env_dot3
    cdef GLboolean GLEW_EXT_texture_filter_anisotropic
    cdef GLboolean GLEW_EXT_texture_integer
    cdef GLboolean GLEW_EXT_texture_lod_bias
    cdef GLboolean GLEW_EXT_texture_mirror_clamp
    cdef GLboolean GLEW_EXT_texture_object
    cdef GLboolean GLEW_EXT_texture_perturb_normal
    cdef GLboolean GLEW_EXT_texture_rectangle
    cdef GLboolean GLEW_EXT_texture_sRGB
    cdef GLboolean GLEW_EXT_texture_sRGB_decode
    cdef GLboolean GLEW_EXT_texture_shared_exponent
    cdef GLboolean GLEW_EXT_texture_snorm
    cdef GLboolean GLEW_EXT_texture_swizzle
    cdef GLboolean GLEW_EXT_timer_query
    cdef GLboolean GLEW_EXT_transform_feedback
    cdef GLboolean GLEW_EXT_vertex_array
    cdef GLboolean GLEW_EXT_vertex_array_bgra
    cdef GLboolean GLEW_EXT_vertex_attrib_64bit
    cdef GLboolean GLEW_EXT_vertex_shader
    cdef GLboolean GLEW_EXT_vertex_weighting
    cdef GLboolean GLEW_EXT_x11_sync_object
    cdef GLboolean GLEW_GREMEDY_frame_terminator
    cdef GLboolean GLEW_GREMEDY_string_marker
    cdef GLboolean GLEW_HP_convolution_border_modes
    cdef GLboolean GLEW_HP_image_transform
    cdef GLboolean GLEW_HP_occlusion_test
    cdef GLboolean GLEW_HP_texture_lighting
    cdef GLboolean GLEW_IBM_cull_vertex
    cdef GLboolean GLEW_IBM_multimode_draw_arrays
    cdef GLboolean GLEW_IBM_rasterpos_clip
    cdef GLboolean GLEW_IBM_static_data
    cdef GLboolean GLEW_IBM_texture_mirrored_repeat
    cdef GLboolean GLEW_IBM_vertex_array_lists
    cdef GLboolean GLEW_INGR_color_clamp
    cdef GLboolean GLEW_INGR_interlace_read
    cdef GLboolean GLEW_INTEL_parallel_arrays
    cdef GLboolean GLEW_INTEL_texture_scissor
    cdef GLboolean GLEW_KTX_buffer_region
    cdef GLboolean GLEW_MESAX_texture_stack
    cdef GLboolean GLEW_MESA_pack_invert
    cdef GLboolean GLEW_MESA_resize_buffers
    cdef GLboolean GLEW_MESA_window_pos
    cdef GLboolean GLEW_MESA_ycbcr_texture
    cdef GLboolean GLEW_NVX_gpu_memory_info
    cdef GLboolean GLEW_NV_blend_square
    cdef GLboolean GLEW_NV_conditional_render
    cdef GLboolean GLEW_NV_copy_depth_to_color
    cdef GLboolean GLEW_NV_copy_image
    cdef GLboolean GLEW_NV_depth_buffer_float
    cdef GLboolean GLEW_NV_depth_clamp
    cdef GLboolean GLEW_NV_depth_range_unclamped
    cdef GLboolean GLEW_NV_evaluators
    cdef GLboolean GLEW_NV_explicit_multisample
    cdef GLboolean GLEW_NV_fence
    cdef GLboolean GLEW_NV_float_buffer
    cdef GLboolean GLEW_NV_fog_distance
    cdef GLboolean GLEW_NV_fragment_program
    cdef GLboolean GLEW_NV_fragment_program2
    cdef GLboolean GLEW_NV_fragment_program4
    cdef GLboolean GLEW_NV_fragment_program_option
    cdef GLboolean GLEW_NV_framebuffer_multisample_coverage
    cdef GLboolean GLEW_NV_geometry_program4
    cdef GLboolean GLEW_NV_geometry_shader4
    cdef GLboolean GLEW_NV_gpu_program4
    cdef GLboolean GLEW_NV_gpu_program5
    cdef GLboolean GLEW_NV_gpu_program_fp64
    cdef GLboolean GLEW_NV_gpu_shader5
    cdef GLboolean GLEW_NV_half_float
    cdef GLboolean GLEW_NV_light_max_exponent
    cdef GLboolean GLEW_NV_multisample_coverage
    cdef GLboolean GLEW_NV_multisample_filter_hint
    cdef GLboolean GLEW_NV_occlusion_query
    cdef GLboolean GLEW_NV_packed_depth_stencil
    cdef GLboolean GLEW_NV_parameter_buffer_object
    cdef GLboolean GLEW_NV_parameter_buffer_object2
    cdef GLboolean GLEW_NV_path_rendering
    cdef GLboolean GLEW_NV_pixel_data_range
    cdef GLboolean GLEW_NV_point_sprite
    cdef GLboolean GLEW_NV_present_video
    cdef GLboolean GLEW_NV_primitive_restart
    cdef GLboolean GLEW_NV_register_combiners
    cdef GLboolean GLEW_NV_register_combiners2
    cdef GLboolean GLEW_NV_shader_buffer_load
    cdef GLboolean GLEW_NV_tessellation_program5
    cdef GLboolean GLEW_NV_texgen_emboss
    cdef GLboolean GLEW_NV_texgen_reflection
    cdef GLboolean GLEW_NV_texture_barrier
    cdef GLboolean GLEW_NV_texture_compression_vtc
    cdef GLboolean GLEW_NV_texture_env_combine4
    cdef GLboolean GLEW_NV_texture_expand_normal
    cdef GLboolean GLEW_NV_texture_multisample
    cdef GLboolean GLEW_NV_texture_rectangle
    cdef GLboolean GLEW_NV_texture_shader
    cdef GLboolean GLEW_NV_texture_shader2
    cdef GLboolean GLEW_NV_texture_shader3
    cdef GLboolean GLEW_NV_transform_feedback
    cdef GLboolean GLEW_NV_transform_feedback2
    cdef GLboolean GLEW_NV_vdpau_interop
    cdef GLboolean GLEW_NV_vertex_array_range
    cdef GLboolean GLEW_NV_vertex_array_range2
    cdef GLboolean GLEW_NV_vertex_attrib_integer_64bit
    cdef GLboolean GLEW_NV_vertex_buffer_unified_memory
    cdef GLboolean GLEW_NV_vertex_program
    cdef GLboolean GLEW_NV_vertex_program1_1
    cdef GLboolean GLEW_NV_vertex_program2
    cdef GLboolean GLEW_NV_vertex_program2_option
    cdef GLboolean GLEW_NV_vertex_program3
    cdef GLboolean GLEW_NV_vertex_program4
    cdef GLboolean GLEW_NV_video_capture
    cdef GLboolean GLEW_OES_byte_coordinates
    cdef GLboolean GLEW_OES_compressed_paletted_texture
    cdef GLboolean GLEW_OES_read_format
    cdef GLboolean GLEW_OES_single_precision
    cdef GLboolean GLEW_OML_interlace
    cdef GLboolean GLEW_OML_resample
    cdef GLboolean GLEW_OML_subsample
    cdef GLboolean GLEW_PGI_misc_hints
    cdef GLboolean GLEW_PGI_vertex_hints
    cdef GLboolean GLEW_REND_screen_coordinates
    cdef GLboolean GLEW_S3_s3tc
    cdef GLboolean GLEW_SGIS_color_range
    cdef GLboolean GLEW_SGIS_detail_texture
    cdef GLboolean GLEW_SGIS_fog_function
    cdef GLboolean GLEW_SGIS_generate_mipmap
    cdef GLboolean GLEW_SGIS_multisample
    cdef GLboolean GLEW_SGIS_pixel_texture
    cdef GLboolean GLEW_SGIS_point_line_texgen
    cdef GLboolean GLEW_SGIS_sharpen_texture
    cdef GLboolean GLEW_SGIS_texture4D
    cdef GLboolean GLEW_SGIS_texture_border_clamp
    cdef GLboolean GLEW_SGIS_texture_edge_clamp
    cdef GLboolean GLEW_SGIS_texture_filter4
    cdef GLboolean GLEW_SGIS_texture_lod
    cdef GLboolean GLEW_SGIS_texture_select
    cdef GLboolean GLEW_SGIX_async
    cdef GLboolean GLEW_SGIX_async_histogram
    cdef GLboolean GLEW_SGIX_async_pixel
    cdef GLboolean GLEW_SGIX_blend_alpha_minmax
    cdef GLboolean GLEW_SGIX_clipmap
    cdef GLboolean GLEW_SGIX_convolution_accuracy
    cdef GLboolean GLEW_SGIX_depth_texture
    cdef GLboolean GLEW_SGIX_flush_raster
    cdef GLboolean GLEW_SGIX_fog_offset
    cdef GLboolean GLEW_SGIX_fog_texture
    cdef GLboolean GLEW_SGIX_fragment_specular_lighting
    cdef GLboolean GLEW_SGIX_framezoom
    cdef GLboolean GLEW_SGIX_interlace
    cdef GLboolean GLEW_SGIX_ir_instrument1
    cdef GLboolean GLEW_SGIX_list_priority
    cdef GLboolean GLEW_SGIX_pixel_texture
    cdef GLboolean GLEW_SGIX_pixel_texture_bits
    cdef GLboolean GLEW_SGIX_reference_plane
    cdef GLboolean GLEW_SGIX_resample
    cdef GLboolean GLEW_SGIX_shadow
    cdef GLboolean GLEW_SGIX_shadow_ambient
    cdef GLboolean GLEW_SGIX_sprite
    cdef GLboolean GLEW_SGIX_tag_sample_buffer
    cdef GLboolean GLEW_SGIX_texture_add_env
    cdef GLboolean GLEW_SGIX_texture_coordinate_clamp
    cdef GLboolean GLEW_SGIX_texture_lod_bias
    cdef GLboolean GLEW_SGIX_texture_multi_buffer
    cdef GLboolean GLEW_SGIX_texture_range
    cdef GLboolean GLEW_SGIX_texture_scale_bias
    cdef GLboolean GLEW_SGIX_vertex_preclip
    cdef GLboolean GLEW_SGIX_vertex_preclip_hint
    cdef GLboolean GLEW_SGIX_ycrcb
    cdef GLboolean GLEW_SGI_color_matrix
    cdef GLboolean GLEW_SGI_color_table
    cdef GLboolean GLEW_SGI_texture_color_table
    cdef GLboolean GLEW_SUNX_constant_data
    cdef GLboolean GLEW_SUN_convolution_border_modes
    cdef GLboolean GLEW_SUN_global_alpha
    cdef GLboolean GLEW_SUN_mesh_array
    cdef GLboolean GLEW_SUN_read_video_pixels
    cdef GLboolean GLEW_SUN_slice_accum
    cdef GLboolean GLEW_SUN_triangle_list
    cdef GLboolean GLEW_SUN_vertex
    cdef GLboolean GLEW_WIN_phong_shading
    cdef GLboolean GLEW_WIN_specular_fog
    cdef GLboolean GLEW_WIN_swap_hint
