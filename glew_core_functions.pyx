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

#GL_VERSION_1_1

GL_VERSION_1_1 = gl.GL_VERSION_1_1

GL_ZERO = gl.GL_ZERO
GL_FALSE = gl.GL_FALSE
GL_LOGIC_OP = gl.GL_LOGIC_OP
GL_NONE = gl.GL_NONE
GL_TEXTURE_COMPONENTS = gl.GL_TEXTURE_COMPONENTS
GL_NO_ERROR = gl.GL_NO_ERROR
GL_POINTS = gl.GL_POINTS
GL_CURRENT_BIT = gl.GL_CURRENT_BIT
GL_TRUE = gl.GL_TRUE
GL_ONE = gl.GL_ONE
GL_CLIENT_PIXEL_STORE_BIT = gl.GL_CLIENT_PIXEL_STORE_BIT
GL_LINES = gl.GL_LINES
GL_LINE_LOOP = gl.GL_LINE_LOOP
GL_POINT_BIT = gl.GL_POINT_BIT
GL_CLIENT_VERTEX_ARRAY_BIT = gl.GL_CLIENT_VERTEX_ARRAY_BIT
GL_LINE_STRIP = gl.GL_LINE_STRIP
GL_LINE_BIT = gl.GL_LINE_BIT
GL_TRIANGLES = gl.GL_TRIANGLES
GL_TRIANGLE_STRIP = gl.GL_TRIANGLE_STRIP
GL_TRIANGLE_FAN = gl.GL_TRIANGLE_FAN
GL_QUADS = gl.GL_QUADS
GL_QUAD_STRIP = gl.GL_QUAD_STRIP
GL_POLYGON_BIT = gl.GL_POLYGON_BIT
GL_POLYGON = gl.GL_POLYGON
GL_POLYGON_STIPPLE_BIT = gl.GL_POLYGON_STIPPLE_BIT
GL_PIXEL_MODE_BIT = gl.GL_PIXEL_MODE_BIT
GL_LIGHTING_BIT = gl.GL_LIGHTING_BIT
GL_FOG_BIT = gl.GL_FOG_BIT
GL_DEPTH_BUFFER_BIT = gl.GL_DEPTH_BUFFER_BIT
GL_ACCUM = gl.GL_ACCUM
GL_LOAD = gl.GL_LOAD
GL_RETURN = gl.GL_RETURN
GL_MULT = gl.GL_MULT
GL_ADD = gl.GL_ADD
GL_NEVER = gl.GL_NEVER
GL_ACCUM_BUFFER_BIT = gl.GL_ACCUM_BUFFER_BIT
GL_LESS = gl.GL_LESS
GL_EQUAL = gl.GL_EQUAL
GL_LEQUAL = gl.GL_LEQUAL
GL_GREATER = gl.GL_GREATER
GL_NOTEQUAL = gl.GL_NOTEQUAL
GL_GEQUAL = gl.GL_GEQUAL
GL_ALWAYS = gl.GL_ALWAYS
GL_SRC_COLOR = gl.GL_SRC_COLOR
GL_ONE_MINUS_SRC_COLOR = gl.GL_ONE_MINUS_SRC_COLOR
GL_SRC_ALPHA = gl.GL_SRC_ALPHA
GL_ONE_MINUS_SRC_ALPHA = gl.GL_ONE_MINUS_SRC_ALPHA
GL_DST_ALPHA = gl.GL_DST_ALPHA
GL_ONE_MINUS_DST_ALPHA = gl.GL_ONE_MINUS_DST_ALPHA
GL_DST_COLOR = gl.GL_DST_COLOR
GL_ONE_MINUS_DST_COLOR = gl.GL_ONE_MINUS_DST_COLOR
GL_SRC_ALPHA_SATURATE = gl.GL_SRC_ALPHA_SATURATE
GL_STENCIL_BUFFER_BIT = gl.GL_STENCIL_BUFFER_BIT
GL_FRONT_LEFT = gl.GL_FRONT_LEFT
GL_FRONT_RIGHT = gl.GL_FRONT_RIGHT
GL_BACK_LEFT = gl.GL_BACK_LEFT
GL_BACK_RIGHT = gl.GL_BACK_RIGHT
GL_FRONT = gl.GL_FRONT
GL_BACK = gl.GL_BACK
GL_LEFT = gl.GL_LEFT
GL_RIGHT = gl.GL_RIGHT
GL_FRONT_AND_BACK = gl.GL_FRONT_AND_BACK
GL_AUX0 = gl.GL_AUX0
GL_AUX1 = gl.GL_AUX1
GL_AUX2 = gl.GL_AUX2
GL_AUX3 = gl.GL_AUX3
GL_INVALID_ENUM = gl.GL_INVALID_ENUM
GL_INVALID_VALUE = gl.GL_INVALID_VALUE
GL_INVALID_OPERATION = gl.GL_INVALID_OPERATION
GL_STACK_OVERFLOW = gl.GL_STACK_OVERFLOW
GL_STACK_UNDERFLOW = gl.GL_STACK_UNDERFLOW
GL_OUT_OF_MEMORY = gl.GL_OUT_OF_MEMORY
GL_2D = gl.GL_2D
GL_3D = gl.GL_3D
GL_3D_COLOR = gl.GL_3D_COLOR
GL_3D_COLOR_TEXTURE = gl.GL_3D_COLOR_TEXTURE
GL_4D_COLOR_TEXTURE = gl.GL_4D_COLOR_TEXTURE
GL_PASS_THROUGH_TOKEN = gl.GL_PASS_THROUGH_TOKEN
GL_POINT_TOKEN = gl.GL_POINT_TOKEN
GL_LINE_TOKEN = gl.GL_LINE_TOKEN
GL_POLYGON_TOKEN = gl.GL_POLYGON_TOKEN
GL_BITMAP_TOKEN = gl.GL_BITMAP_TOKEN
GL_DRAW_PIXEL_TOKEN = gl.GL_DRAW_PIXEL_TOKEN
GL_COPY_PIXEL_TOKEN = gl.GL_COPY_PIXEL_TOKEN
GL_LINE_RESET_TOKEN = gl.GL_LINE_RESET_TOKEN
GL_EXP = gl.GL_EXP
GL_VIEWPORT_BIT = gl.GL_VIEWPORT_BIT
GL_EXP2 = gl.GL_EXP2
GL_CW = gl.GL_CW
GL_CCW = gl.GL_CCW
GL_COEFF = gl.GL_COEFF
GL_ORDER = gl.GL_ORDER
GL_DOMAIN = gl.GL_DOMAIN
GL_CURRENT_COLOR = gl.GL_CURRENT_COLOR
GL_CURRENT_INDEX = gl.GL_CURRENT_INDEX
GL_CURRENT_NORMAL = gl.GL_CURRENT_NORMAL
GL_CURRENT_TEXTURE_COORDS = gl.GL_CURRENT_TEXTURE_COORDS
GL_CURRENT_RASTER_COLOR = gl.GL_CURRENT_RASTER_COLOR
GL_CURRENT_RASTER_INDEX = gl.GL_CURRENT_RASTER_INDEX
GL_CURRENT_RASTER_TEXTURE_COORDS = gl.GL_CURRENT_RASTER_TEXTURE_COORDS
GL_CURRENT_RASTER_POSITION = gl.GL_CURRENT_RASTER_POSITION
GL_CURRENT_RASTER_POSITION_VALID = gl.GL_CURRENT_RASTER_POSITION_VALID
GL_CURRENT_RASTER_DISTANCE = gl.GL_CURRENT_RASTER_DISTANCE
GL_POINT_SMOOTH = gl.GL_POINT_SMOOTH
GL_POINT_SIZE = gl.GL_POINT_SIZE
GL_POINT_SIZE_RANGE = gl.GL_POINT_SIZE_RANGE
GL_POINT_SIZE_GRANULARITY = gl.GL_POINT_SIZE_GRANULARITY
GL_LINE_SMOOTH = gl.GL_LINE_SMOOTH
GL_LINE_WIDTH = gl.GL_LINE_WIDTH
GL_LINE_WIDTH_RANGE = gl.GL_LINE_WIDTH_RANGE
GL_LINE_WIDTH_GRANULARITY = gl.GL_LINE_WIDTH_GRANULARITY
GL_LINE_STIPPLE = gl.GL_LINE_STIPPLE
GL_LINE_STIPPLE_PATTERN = gl.GL_LINE_STIPPLE_PATTERN
GL_LINE_STIPPLE_REPEAT = gl.GL_LINE_STIPPLE_REPEAT
GL_LIST_MODE = gl.GL_LIST_MODE
GL_MAX_LIST_NESTING = gl.GL_MAX_LIST_NESTING
GL_LIST_BASE = gl.GL_LIST_BASE
GL_LIST_INDEX = gl.GL_LIST_INDEX
GL_POLYGON_MODE = gl.GL_POLYGON_MODE
GL_POLYGON_SMOOTH = gl.GL_POLYGON_SMOOTH
GL_POLYGON_STIPPLE = gl.GL_POLYGON_STIPPLE
GL_EDGE_FLAG = gl.GL_EDGE_FLAG
GL_CULL_FACE = gl.GL_CULL_FACE
GL_CULL_FACE_MODE = gl.GL_CULL_FACE_MODE
GL_FRONT_FACE = gl.GL_FRONT_FACE
GL_LIGHTING = gl.GL_LIGHTING
GL_LIGHT_MODEL_LOCAL_VIEWER = gl.GL_LIGHT_MODEL_LOCAL_VIEWER
GL_LIGHT_MODEL_TWO_SIDE = gl.GL_LIGHT_MODEL_TWO_SIDE
GL_LIGHT_MODEL_AMBIENT = gl.GL_LIGHT_MODEL_AMBIENT
GL_SHADE_MODEL = gl.GL_SHADE_MODEL
GL_COLOR_MATERIAL_FACE = gl.GL_COLOR_MATERIAL_FACE
GL_COLOR_MATERIAL_PARAMETER = gl.GL_COLOR_MATERIAL_PARAMETER
GL_COLOR_MATERIAL = gl.GL_COLOR_MATERIAL
GL_FOG = gl.GL_FOG
GL_FOG_INDEX = gl.GL_FOG_INDEX
GL_FOG_DENSITY = gl.GL_FOG_DENSITY
GL_FOG_START = gl.GL_FOG_START
GL_FOG_END = gl.GL_FOG_END
GL_FOG_MODE = gl.GL_FOG_MODE
GL_FOG_COLOR = gl.GL_FOG_COLOR
GL_DEPTH_RANGE = gl.GL_DEPTH_RANGE
GL_DEPTH_TEST = gl.GL_DEPTH_TEST
GL_DEPTH_WRITEMASK = gl.GL_DEPTH_WRITEMASK
GL_DEPTH_CLEAR_VALUE = gl.GL_DEPTH_CLEAR_VALUE
GL_DEPTH_FUNC = gl.GL_DEPTH_FUNC
GL_ACCUM_CLEAR_VALUE = gl.GL_ACCUM_CLEAR_VALUE
GL_STENCIL_TEST = gl.GL_STENCIL_TEST
GL_STENCIL_CLEAR_VALUE = gl.GL_STENCIL_CLEAR_VALUE
GL_STENCIL_FUNC = gl.GL_STENCIL_FUNC
GL_STENCIL_VALUE_MASK = gl.GL_STENCIL_VALUE_MASK
GL_STENCIL_FAIL = gl.GL_STENCIL_FAIL
GL_STENCIL_PASS_DEPTH_FAIL = gl.GL_STENCIL_PASS_DEPTH_FAIL
GL_STENCIL_PASS_DEPTH_PASS = gl.GL_STENCIL_PASS_DEPTH_PASS
GL_STENCIL_REF = gl.GL_STENCIL_REF
GL_STENCIL_WRITEMASK = gl.GL_STENCIL_WRITEMASK
GL_MATRIX_MODE = gl.GL_MATRIX_MODE
GL_NORMALIZE = gl.GL_NORMALIZE
GL_VIEWPORT = gl.GL_VIEWPORT
GL_MODELVIEW_STACK_DEPTH = gl.GL_MODELVIEW_STACK_DEPTH
GL_PROJECTION_STACK_DEPTH = gl.GL_PROJECTION_STACK_DEPTH
GL_TEXTURE_STACK_DEPTH = gl.GL_TEXTURE_STACK_DEPTH
GL_MODELVIEW_MATRIX = gl.GL_MODELVIEW_MATRIX
GL_PROJECTION_MATRIX = gl.GL_PROJECTION_MATRIX
GL_TEXTURE_MATRIX = gl.GL_TEXTURE_MATRIX
GL_ATTRIB_STACK_DEPTH = gl.GL_ATTRIB_STACK_DEPTH
GL_CLIENT_ATTRIB_STACK_DEPTH = gl.GL_CLIENT_ATTRIB_STACK_DEPTH
GL_ALPHA_TEST = gl.GL_ALPHA_TEST
GL_ALPHA_TEST_FUNC = gl.GL_ALPHA_TEST_FUNC
GL_ALPHA_TEST_REF = gl.GL_ALPHA_TEST_REF
GL_DITHER = gl.GL_DITHER
GL_BLEND_DST = gl.GL_BLEND_DST
GL_BLEND_SRC = gl.GL_BLEND_SRC
GL_BLEND = gl.GL_BLEND
GL_LOGIC_OP_MODE = gl.GL_LOGIC_OP_MODE
GL_INDEX_LOGIC_OP = gl.GL_INDEX_LOGIC_OP
GL_COLOR_LOGIC_OP = gl.GL_COLOR_LOGIC_OP
GL_AUX_BUFFERS = gl.GL_AUX_BUFFERS
GL_DRAW_BUFFER = gl.GL_DRAW_BUFFER
GL_READ_BUFFER = gl.GL_READ_BUFFER
GL_SCISSOR_BOX = gl.GL_SCISSOR_BOX
GL_SCISSOR_TEST = gl.GL_SCISSOR_TEST
GL_INDEX_CLEAR_VALUE = gl.GL_INDEX_CLEAR_VALUE
GL_INDEX_WRITEMASK = gl.GL_INDEX_WRITEMASK
GL_COLOR_CLEAR_VALUE = gl.GL_COLOR_CLEAR_VALUE
GL_COLOR_WRITEMASK = gl.GL_COLOR_WRITEMASK
GL_INDEX_MODE = gl.GL_INDEX_MODE
GL_RGBA_MODE = gl.GL_RGBA_MODE
GL_DOUBLEBUFFER = gl.GL_DOUBLEBUFFER
GL_STEREO = gl.GL_STEREO
GL_RENDER_MODE = gl.GL_RENDER_MODE
GL_PERSPECTIVE_CORRECTION_HINT = gl.GL_PERSPECTIVE_CORRECTION_HINT
GL_POINT_SMOOTH_HINT = gl.GL_POINT_SMOOTH_HINT
GL_LINE_SMOOTH_HINT = gl.GL_LINE_SMOOTH_HINT
GL_POLYGON_SMOOTH_HINT = gl.GL_POLYGON_SMOOTH_HINT
GL_FOG_HINT = gl.GL_FOG_HINT
GL_TEXTURE_GEN_S = gl.GL_TEXTURE_GEN_S
GL_TEXTURE_GEN_T = gl.GL_TEXTURE_GEN_T
GL_TEXTURE_GEN_R = gl.GL_TEXTURE_GEN_R
GL_TEXTURE_GEN_Q = gl.GL_TEXTURE_GEN_Q
GL_PIXEL_MAP_I_TO_I = gl.GL_PIXEL_MAP_I_TO_I
GL_PIXEL_MAP_S_TO_S = gl.GL_PIXEL_MAP_S_TO_S
GL_PIXEL_MAP_I_TO_R = gl.GL_PIXEL_MAP_I_TO_R
GL_PIXEL_MAP_I_TO_G = gl.GL_PIXEL_MAP_I_TO_G
GL_PIXEL_MAP_I_TO_B = gl.GL_PIXEL_MAP_I_TO_B
GL_PIXEL_MAP_I_TO_A = gl.GL_PIXEL_MAP_I_TO_A
GL_PIXEL_MAP_R_TO_R = gl.GL_PIXEL_MAP_R_TO_R
GL_PIXEL_MAP_G_TO_G = gl.GL_PIXEL_MAP_G_TO_G
GL_PIXEL_MAP_B_TO_B = gl.GL_PIXEL_MAP_B_TO_B
GL_PIXEL_MAP_A_TO_A = gl.GL_PIXEL_MAP_A_TO_A
GL_PIXEL_MAP_I_TO_I_SIZE = gl.GL_PIXEL_MAP_I_TO_I_SIZE
GL_PIXEL_MAP_S_TO_S_SIZE = gl.GL_PIXEL_MAP_S_TO_S_SIZE
GL_PIXEL_MAP_I_TO_R_SIZE = gl.GL_PIXEL_MAP_I_TO_R_SIZE
GL_PIXEL_MAP_I_TO_G_SIZE = gl.GL_PIXEL_MAP_I_TO_G_SIZE
GL_PIXEL_MAP_I_TO_B_SIZE = gl.GL_PIXEL_MAP_I_TO_B_SIZE
GL_PIXEL_MAP_I_TO_A_SIZE = gl.GL_PIXEL_MAP_I_TO_A_SIZE
GL_PIXEL_MAP_R_TO_R_SIZE = gl.GL_PIXEL_MAP_R_TO_R_SIZE
GL_PIXEL_MAP_G_TO_G_SIZE = gl.GL_PIXEL_MAP_G_TO_G_SIZE
GL_PIXEL_MAP_B_TO_B_SIZE = gl.GL_PIXEL_MAP_B_TO_B_SIZE
GL_PIXEL_MAP_A_TO_A_SIZE = gl.GL_PIXEL_MAP_A_TO_A_SIZE
GL_UNPACK_SWAP_BYTES = gl.GL_UNPACK_SWAP_BYTES
GL_UNPACK_LSB_FIRST = gl.GL_UNPACK_LSB_FIRST
GL_UNPACK_ROW_LENGTH = gl.GL_UNPACK_ROW_LENGTH
GL_UNPACK_SKIP_ROWS = gl.GL_UNPACK_SKIP_ROWS
GL_UNPACK_SKIP_PIXELS = gl.GL_UNPACK_SKIP_PIXELS
GL_UNPACK_ALIGNMENT = gl.GL_UNPACK_ALIGNMENT
GL_PACK_SWAP_BYTES = gl.GL_PACK_SWAP_BYTES
GL_PACK_LSB_FIRST = gl.GL_PACK_LSB_FIRST
GL_PACK_ROW_LENGTH = gl.GL_PACK_ROW_LENGTH
GL_PACK_SKIP_ROWS = gl.GL_PACK_SKIP_ROWS
GL_PACK_SKIP_PIXELS = gl.GL_PACK_SKIP_PIXELS
GL_PACK_ALIGNMENT = gl.GL_PACK_ALIGNMENT
GL_MAP_COLOR = gl.GL_MAP_COLOR
GL_MAP_STENCIL = gl.GL_MAP_STENCIL
GL_INDEX_SHIFT = gl.GL_INDEX_SHIFT
GL_INDEX_OFFSET = gl.GL_INDEX_OFFSET
GL_RED_SCALE = gl.GL_RED_SCALE
GL_RED_BIAS = gl.GL_RED_BIAS
GL_ZOOM_X = gl.GL_ZOOM_X
GL_ZOOM_Y = gl.GL_ZOOM_Y
GL_GREEN_SCALE = gl.GL_GREEN_SCALE
GL_GREEN_BIAS = gl.GL_GREEN_BIAS
GL_BLUE_SCALE = gl.GL_BLUE_SCALE
GL_BLUE_BIAS = gl.GL_BLUE_BIAS
GL_ALPHA_SCALE = gl.GL_ALPHA_SCALE
GL_ALPHA_BIAS = gl.GL_ALPHA_BIAS
GL_DEPTH_SCALE = gl.GL_DEPTH_SCALE
GL_DEPTH_BIAS = gl.GL_DEPTH_BIAS
GL_MAX_EVAL_ORDER = gl.GL_MAX_EVAL_ORDER
GL_MAX_LIGHTS = gl.GL_MAX_LIGHTS
GL_MAX_CLIP_PLANES = gl.GL_MAX_CLIP_PLANES
GL_MAX_TEXTURE_SIZE = gl.GL_MAX_TEXTURE_SIZE
GL_MAX_PIXEL_MAP_TABLE = gl.GL_MAX_PIXEL_MAP_TABLE
GL_MAX_ATTRIB_STACK_DEPTH = gl.GL_MAX_ATTRIB_STACK_DEPTH
GL_MAX_MODELVIEW_STACK_DEPTH = gl.GL_MAX_MODELVIEW_STACK_DEPTH
GL_MAX_NAME_STACK_DEPTH = gl.GL_MAX_NAME_STACK_DEPTH
GL_MAX_PROJECTION_STACK_DEPTH = gl.GL_MAX_PROJECTION_STACK_DEPTH
GL_MAX_TEXTURE_STACK_DEPTH = gl.GL_MAX_TEXTURE_STACK_DEPTH
GL_MAX_VIEWPORT_DIMS = gl.GL_MAX_VIEWPORT_DIMS
GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = gl.GL_MAX_CLIENT_ATTRIB_STACK_DEPTH
GL_SUBPIXEL_BITS = gl.GL_SUBPIXEL_BITS
GL_INDEX_BITS = gl.GL_INDEX_BITS
GL_RED_BITS = gl.GL_RED_BITS
GL_GREEN_BITS = gl.GL_GREEN_BITS
GL_BLUE_BITS = gl.GL_BLUE_BITS
GL_ALPHA_BITS = gl.GL_ALPHA_BITS
GL_DEPTH_BITS = gl.GL_DEPTH_BITS
GL_STENCIL_BITS = gl.GL_STENCIL_BITS
GL_ACCUM_RED_BITS = gl.GL_ACCUM_RED_BITS
GL_ACCUM_GREEN_BITS = gl.GL_ACCUM_GREEN_BITS
GL_ACCUM_BLUE_BITS = gl.GL_ACCUM_BLUE_BITS
GL_ACCUM_ALPHA_BITS = gl.GL_ACCUM_ALPHA_BITS
GL_NAME_STACK_DEPTH = gl.GL_NAME_STACK_DEPTH
GL_AUTO_NORMAL = gl.GL_AUTO_NORMAL
GL_MAP1_COLOR_4 = gl.GL_MAP1_COLOR_4
GL_MAP1_INDEX = gl.GL_MAP1_INDEX
GL_MAP1_NORMAL = gl.GL_MAP1_NORMAL
GL_MAP1_TEXTURE_COORD_1 = gl.GL_MAP1_TEXTURE_COORD_1
GL_MAP1_TEXTURE_COORD_2 = gl.GL_MAP1_TEXTURE_COORD_2
GL_MAP1_TEXTURE_COORD_3 = gl.GL_MAP1_TEXTURE_COORD_3
GL_MAP1_TEXTURE_COORD_4 = gl.GL_MAP1_TEXTURE_COORD_4
GL_MAP1_VERTEX_3 = gl.GL_MAP1_VERTEX_3
GL_MAP1_VERTEX_4 = gl.GL_MAP1_VERTEX_4
GL_MAP2_COLOR_4 = gl.GL_MAP2_COLOR_4
GL_MAP2_INDEX = gl.GL_MAP2_INDEX
GL_MAP2_NORMAL = gl.GL_MAP2_NORMAL
GL_MAP2_TEXTURE_COORD_1 = gl.GL_MAP2_TEXTURE_COORD_1
GL_MAP2_TEXTURE_COORD_2 = gl.GL_MAP2_TEXTURE_COORD_2
GL_MAP2_TEXTURE_COORD_3 = gl.GL_MAP2_TEXTURE_COORD_3
GL_MAP2_TEXTURE_COORD_4 = gl.GL_MAP2_TEXTURE_COORD_4
GL_MAP2_VERTEX_3 = gl.GL_MAP2_VERTEX_3
GL_MAP2_VERTEX_4 = gl.GL_MAP2_VERTEX_4
GL_MAP1_GRID_DOMAIN = gl.GL_MAP1_GRID_DOMAIN
GL_MAP1_GRID_SEGMENTS = gl.GL_MAP1_GRID_SEGMENTS
GL_MAP2_GRID_DOMAIN = gl.GL_MAP2_GRID_DOMAIN
GL_MAP2_GRID_SEGMENTS = gl.GL_MAP2_GRID_SEGMENTS
GL_TEXTURE_1D = gl.GL_TEXTURE_1D
GL_TEXTURE_2D = gl.GL_TEXTURE_2D
GL_FEEDBACK_BUFFER_POINTER = gl.GL_FEEDBACK_BUFFER_POINTER
GL_FEEDBACK_BUFFER_SIZE = gl.GL_FEEDBACK_BUFFER_SIZE
GL_FEEDBACK_BUFFER_TYPE = gl.GL_FEEDBACK_BUFFER_TYPE
GL_SELECTION_BUFFER_POINTER = gl.GL_SELECTION_BUFFER_POINTER
GL_SELECTION_BUFFER_SIZE = gl.GL_SELECTION_BUFFER_SIZE
GL_TEXTURE_WIDTH = gl.GL_TEXTURE_WIDTH
GL_TRANSFORM_BIT = gl.GL_TRANSFORM_BIT
GL_TEXTURE_HEIGHT = gl.GL_TEXTURE_HEIGHT
GL_TEXTURE_INTERNAL_FORMAT = gl.GL_TEXTURE_INTERNAL_FORMAT
GL_TEXTURE_BORDER_COLOR = gl.GL_TEXTURE_BORDER_COLOR
GL_TEXTURE_BORDER = gl.GL_TEXTURE_BORDER
GL_DONT_CARE = gl.GL_DONT_CARE
GL_FASTEST = gl.GL_FASTEST
GL_NICEST = gl.GL_NICEST
GL_AMBIENT = gl.GL_AMBIENT
GL_DIFFUSE = gl.GL_DIFFUSE
GL_SPECULAR = gl.GL_SPECULAR
GL_POSITION = gl.GL_POSITION
GL_SPOT_DIRECTION = gl.GL_SPOT_DIRECTION
GL_SPOT_EXPONENT = gl.GL_SPOT_EXPONENT
GL_SPOT_CUTOFF = gl.GL_SPOT_CUTOFF
GL_CONSTANT_ATTENUATION = gl.GL_CONSTANT_ATTENUATION
GL_LINEAR_ATTENUATION = gl.GL_LINEAR_ATTENUATION
GL_QUADRATIC_ATTENUATION = gl.GL_QUADRATIC_ATTENUATION
GL_COMPILE = gl.GL_COMPILE
GL_COMPILE_AND_EXECUTE = gl.GL_COMPILE_AND_EXECUTE
GL_BYTE = gl.GL_BYTE
GL_UNSIGNED_BYTE = gl.GL_UNSIGNED_BYTE
GL_SHORT = gl.GL_SHORT
GL_UNSIGNED_SHORT = gl.GL_UNSIGNED_SHORT
GL_INT = gl.GL_INT
GL_UNSIGNED_INT = gl.GL_UNSIGNED_INT
GL_FLOAT = gl.GL_FLOAT
GL_2_BYTES = gl.GL_2_BYTES
GL_3_BYTES = gl.GL_3_BYTES
GL_4_BYTES = gl.GL_4_BYTES
GL_DOUBLE = gl.GL_DOUBLE
GL_CLEAR = gl.GL_CLEAR
GL_AND = gl.GL_AND
GL_AND_REVERSE = gl.GL_AND_REVERSE
GL_COPY = gl.GL_COPY
GL_AND_INVERTED = gl.GL_AND_INVERTED
GL_NOOP = gl.GL_NOOP
GL_XOR = gl.GL_XOR
GL_OR = gl.GL_OR
GL_NOR = gl.GL_NOR
GL_EQUIV = gl.GL_EQUIV
GL_INVERT = gl.GL_INVERT
GL_OR_REVERSE = gl.GL_OR_REVERSE
GL_COPY_INVERTED = gl.GL_COPY_INVERTED
GL_OR_INVERTED = gl.GL_OR_INVERTED
GL_NAND = gl.GL_NAND
GL_SET = gl.GL_SET
GL_EMISSION = gl.GL_EMISSION
GL_SHININESS = gl.GL_SHININESS
GL_AMBIENT_AND_DIFFUSE = gl.GL_AMBIENT_AND_DIFFUSE
GL_COLOR_INDEXES = gl.GL_COLOR_INDEXES
GL_MODELVIEW = gl.GL_MODELVIEW
GL_PROJECTION = gl.GL_PROJECTION
GL_TEXTURE = gl.GL_TEXTURE
GL_COLOR = gl.GL_COLOR
GL_DEPTH = gl.GL_DEPTH
GL_STENCIL = gl.GL_STENCIL
GL_COLOR_INDEX = gl.GL_COLOR_INDEX
GL_STENCIL_INDEX = gl.GL_STENCIL_INDEX
GL_DEPTH_COMPONENT = gl.GL_DEPTH_COMPONENT
GL_RED = gl.GL_RED
GL_GREEN = gl.GL_GREEN
GL_BLUE = gl.GL_BLUE
GL_ALPHA = gl.GL_ALPHA
GL_RGB = gl.GL_RGB
GL_RGBA = gl.GL_RGBA
GL_LUMINANCE = gl.GL_LUMINANCE
GL_LUMINANCE_ALPHA = gl.GL_LUMINANCE_ALPHA
GL_BITMAP = gl.GL_BITMAP
GL_POINT = gl.GL_POINT
GL_LINE = gl.GL_LINE
GL_FILL = gl.GL_FILL
GL_RENDER = gl.GL_RENDER
GL_FEEDBACK = gl.GL_FEEDBACK
GL_SELECT = gl.GL_SELECT
GL_FLAT = gl.GL_FLAT
GL_SMOOTH = gl.GL_SMOOTH
GL_KEEP = gl.GL_KEEP
GL_REPLACE = gl.GL_REPLACE
GL_INCR = gl.GL_INCR
GL_DECR = gl.GL_DECR
GL_VENDOR = gl.GL_VENDOR
GL_RENDERER = gl.GL_RENDERER
GL_VERSION = gl.GL_VERSION
GL_EXTENSIONS = gl.GL_EXTENSIONS
GL_S = gl.GL_S
GL_ENABLE_BIT = gl.GL_ENABLE_BIT
GL_T = gl.GL_T
GL_R = gl.GL_R
GL_Q = gl.GL_Q
GL_MODULATE = gl.GL_MODULATE
GL_DECAL = gl.GL_DECAL
GL_TEXTURE_ENV_MODE = gl.GL_TEXTURE_ENV_MODE
GL_TEXTURE_ENV_COLOR = gl.GL_TEXTURE_ENV_COLOR
GL_TEXTURE_ENV = gl.GL_TEXTURE_ENV
GL_EYE_LINEAR = gl.GL_EYE_LINEAR
GL_OBJECT_LINEAR = gl.GL_OBJECT_LINEAR
GL_SPHERE_MAP = gl.GL_SPHERE_MAP
GL_TEXTURE_GEN_MODE = gl.GL_TEXTURE_GEN_MODE
GL_OBJECT_PLANE = gl.GL_OBJECT_PLANE
GL_EYE_PLANE = gl.GL_EYE_PLANE
GL_NEAREST = gl.GL_NEAREST
GL_LINEAR = gl.GL_LINEAR
GL_NEAREST_MIPMAP_NEAREST = gl.GL_NEAREST_MIPMAP_NEAREST
GL_LINEAR_MIPMAP_NEAREST = gl.GL_LINEAR_MIPMAP_NEAREST
GL_NEAREST_MIPMAP_LINEAR = gl.GL_NEAREST_MIPMAP_LINEAR
GL_LINEAR_MIPMAP_LINEAR = gl.GL_LINEAR_MIPMAP_LINEAR
GL_TEXTURE_MAG_FILTER = gl.GL_TEXTURE_MAG_FILTER
GL_TEXTURE_MIN_FILTER = gl.GL_TEXTURE_MIN_FILTER
GL_TEXTURE_WRAP_S = gl.GL_TEXTURE_WRAP_S
GL_TEXTURE_WRAP_T = gl.GL_TEXTURE_WRAP_T
GL_CLAMP = gl.GL_CLAMP
GL_REPEAT = gl.GL_REPEAT
GL_POLYGON_OFFSET_UNITS = gl.GL_POLYGON_OFFSET_UNITS
GL_POLYGON_OFFSET_POINT = gl.GL_POLYGON_OFFSET_POINT
GL_POLYGON_OFFSET_LINE = gl.GL_POLYGON_OFFSET_LINE
GL_R3_G3_B2 = gl.GL_R3_G3_B2
GL_V2F = gl.GL_V2F
GL_V3F = gl.GL_V3F
GL_C4UB_V2F = gl.GL_C4UB_V2F
GL_C4UB_V3F = gl.GL_C4UB_V3F
GL_C3F_V3F = gl.GL_C3F_V3F
GL_N3F_V3F = gl.GL_N3F_V3F
GL_C4F_N3F_V3F = gl.GL_C4F_N3F_V3F
GL_T2F_V3F = gl.GL_T2F_V3F
GL_T4F_V4F = gl.GL_T4F_V4F
GL_T2F_C4UB_V3F = gl.GL_T2F_C4UB_V3F
GL_T2F_C3F_V3F = gl.GL_T2F_C3F_V3F
GL_T2F_N3F_V3F = gl.GL_T2F_N3F_V3F
GL_T2F_C4F_N3F_V3F = gl.GL_T2F_C4F_N3F_V3F
GL_T4F_C4F_N3F_V4F = gl.GL_T4F_C4F_N3F_V4F
GL_CLIP_PLANE0 = gl.GL_CLIP_PLANE0
GL_CLIP_PLANE1 = gl.GL_CLIP_PLANE1
GL_CLIP_PLANE2 = gl.GL_CLIP_PLANE2
GL_CLIP_PLANE3 = gl.GL_CLIP_PLANE3
GL_CLIP_PLANE4 = gl.GL_CLIP_PLANE4
GL_CLIP_PLANE5 = gl.GL_CLIP_PLANE5
GL_LIGHT0 = gl.GL_LIGHT0
GL_COLOR_BUFFER_BIT = gl.GL_COLOR_BUFFER_BIT
GL_LIGHT1 = gl.GL_LIGHT1
GL_LIGHT2 = gl.GL_LIGHT2
GL_LIGHT3 = gl.GL_LIGHT3
GL_LIGHT4 = gl.GL_LIGHT4
GL_LIGHT5 = gl.GL_LIGHT5
GL_LIGHT6 = gl.GL_LIGHT6
GL_LIGHT7 = gl.GL_LIGHT7
GL_HINT_BIT = gl.GL_HINT_BIT
GL_POLYGON_OFFSET_FILL = gl.GL_POLYGON_OFFSET_FILL
GL_POLYGON_OFFSET_FACTOR = gl.GL_POLYGON_OFFSET_FACTOR
GL_ALPHA4 = gl.GL_ALPHA4
GL_ALPHA8 = gl.GL_ALPHA8
GL_ALPHA12 = gl.GL_ALPHA12
GL_ALPHA16 = gl.GL_ALPHA16
GL_LUMINANCE4 = gl.GL_LUMINANCE4
GL_LUMINANCE8 = gl.GL_LUMINANCE8
GL_LUMINANCE12 = gl.GL_LUMINANCE12
GL_LUMINANCE16 = gl.GL_LUMINANCE16
GL_LUMINANCE4_ALPHA4 = gl.GL_LUMINANCE4_ALPHA4
GL_LUMINANCE6_ALPHA2 = gl.GL_LUMINANCE6_ALPHA2
GL_LUMINANCE8_ALPHA8 = gl.GL_LUMINANCE8_ALPHA8
GL_LUMINANCE12_ALPHA4 = gl.GL_LUMINANCE12_ALPHA4
GL_LUMINANCE12_ALPHA12 = gl.GL_LUMINANCE12_ALPHA12
GL_LUMINANCE16_ALPHA16 = gl.GL_LUMINANCE16_ALPHA16
GL_INTENSITY = gl.GL_INTENSITY
GL_INTENSITY4 = gl.GL_INTENSITY4
GL_INTENSITY8 = gl.GL_INTENSITY8
GL_INTENSITY12 = gl.GL_INTENSITY12
GL_INTENSITY16 = gl.GL_INTENSITY16
GL_RGB4 = gl.GL_RGB4
GL_RGB5 = gl.GL_RGB5
GL_RGB8 = gl.GL_RGB8
GL_RGB10 = gl.GL_RGB10
GL_RGB12 = gl.GL_RGB12
GL_RGB16 = gl.GL_RGB16
GL_RGBA2 = gl.GL_RGBA2
GL_RGBA4 = gl.GL_RGBA4
GL_RGB5_A1 = gl.GL_RGB5_A1
GL_RGBA8 = gl.GL_RGBA8
GL_RGB10_A2 = gl.GL_RGB10_A2
GL_RGBA12 = gl.GL_RGBA12
GL_RGBA16 = gl.GL_RGBA16
GL_TEXTURE_RED_SIZE = gl.GL_TEXTURE_RED_SIZE
GL_TEXTURE_GREEN_SIZE = gl.GL_TEXTURE_GREEN_SIZE
GL_TEXTURE_BLUE_SIZE = gl.GL_TEXTURE_BLUE_SIZE
GL_TEXTURE_ALPHA_SIZE = gl.GL_TEXTURE_ALPHA_SIZE
GL_TEXTURE_LUMINANCE_SIZE = gl.GL_TEXTURE_LUMINANCE_SIZE
GL_TEXTURE_INTENSITY_SIZE = gl.GL_TEXTURE_INTENSITY_SIZE
GL_PROXY_TEXTURE_1D = gl.GL_PROXY_TEXTURE_1D
GL_PROXY_TEXTURE_2D = gl.GL_PROXY_TEXTURE_2D
GL_TEXTURE_PRIORITY = gl.GL_TEXTURE_PRIORITY
GL_TEXTURE_RESIDENT = gl.GL_TEXTURE_RESIDENT
GL_TEXTURE_BINDING_1D = gl.GL_TEXTURE_BINDING_1D
GL_TEXTURE_BINDING_2D = gl.GL_TEXTURE_BINDING_2D
GL_VERTEX_ARRAY = gl.GL_VERTEX_ARRAY
GL_NORMAL_ARRAY = gl.GL_NORMAL_ARRAY
GL_COLOR_ARRAY = gl.GL_COLOR_ARRAY
GL_INDEX_ARRAY = gl.GL_INDEX_ARRAY
GL_TEXTURE_COORD_ARRAY = gl.GL_TEXTURE_COORD_ARRAY
GL_EDGE_FLAG_ARRAY = gl.GL_EDGE_FLAG_ARRAY
GL_VERTEX_ARRAY_SIZE = gl.GL_VERTEX_ARRAY_SIZE
GL_VERTEX_ARRAY_TYPE = gl.GL_VERTEX_ARRAY_TYPE
GL_VERTEX_ARRAY_STRIDE = gl.GL_VERTEX_ARRAY_STRIDE
GL_NORMAL_ARRAY_TYPE = gl.GL_NORMAL_ARRAY_TYPE
GL_NORMAL_ARRAY_STRIDE = gl.GL_NORMAL_ARRAY_STRIDE
GL_COLOR_ARRAY_SIZE = gl.GL_COLOR_ARRAY_SIZE
GL_COLOR_ARRAY_TYPE = gl.GL_COLOR_ARRAY_TYPE
GL_COLOR_ARRAY_STRIDE = gl.GL_COLOR_ARRAY_STRIDE
GL_INDEX_ARRAY_TYPE = gl.GL_INDEX_ARRAY_TYPE
GL_INDEX_ARRAY_STRIDE = gl.GL_INDEX_ARRAY_STRIDE
GL_TEXTURE_COORD_ARRAY_SIZE = gl.GL_TEXTURE_COORD_ARRAY_SIZE
GL_TEXTURE_COORD_ARRAY_TYPE = gl.GL_TEXTURE_COORD_ARRAY_TYPE
GL_TEXTURE_COORD_ARRAY_STRIDE = gl.GL_TEXTURE_COORD_ARRAY_STRIDE
GL_EDGE_FLAG_ARRAY_STRIDE = gl.GL_EDGE_FLAG_ARRAY_STRIDE
GL_VERTEX_ARRAY_POINTER = gl.GL_VERTEX_ARRAY_POINTER
GL_NORMAL_ARRAY_POINTER = gl.GL_NORMAL_ARRAY_POINTER
GL_COLOR_ARRAY_POINTER = gl.GL_COLOR_ARRAY_POINTER
GL_INDEX_ARRAY_POINTER = gl.GL_INDEX_ARRAY_POINTER
GL_TEXTURE_COORD_ARRAY_POINTER = gl.GL_TEXTURE_COORD_ARRAY_POINTER
GL_EDGE_FLAG_ARRAY_POINTER = gl.GL_EDGE_FLAG_ARRAY_POINTER
GL_COLOR_INDEX1_EXT = gl.GL_COLOR_INDEX1_EXT
GL_COLOR_INDEX2_EXT = gl.GL_COLOR_INDEX2_EXT
GL_COLOR_INDEX4_EXT = gl.GL_COLOR_INDEX4_EXT
GL_COLOR_INDEX8_EXT = gl.GL_COLOR_INDEX8_EXT
GL_COLOR_INDEX12_EXT = gl.GL_COLOR_INDEX12_EXT
GL_COLOR_INDEX16_EXT = gl.GL_COLOR_INDEX16_EXT
GL_EVAL_BIT = gl.GL_EVAL_BIT
GL_LIST_BIT = gl.GL_LIST_BIT
GL_TEXTURE_BIT = gl.GL_TEXTURE_BIT
GL_SCISSOR_BIT = gl.GL_SCISSOR_BIT
GL_ALL_ATTRIB_BITS = gl.GL_ALL_ATTRIB_BITS
GL_CLIENT_ALL_ATTRIB_BITS = gl.GL_CLIENT_ALL_ATTRIB_BITS

def glAccum(op, value):
    gl.glAccum(op, value)

def glAlphaFunc(func, ref):
    gl.glAlphaFunc(func, ref)

def glAreTexturesResident(n, unsigned int textures, bint residences):
    cdef unsigned int* textures1 = &textures
    cdef bint* residences1 = &residences
    return gl.glAreTexturesResident(n, textures1, residences1)

def glArrayElement(i):
    gl.glArrayElement(i)

def glBegin(mode):
    gl.glBegin(mode)

def glBindTexture(target, texture):
    gl.glBindTexture(target, texture)

def glBitmap(width, height, xorig, yorig, xmove, ymove, unsigned char bitmap):
    cdef unsigned char* bitmap1 = &bitmap
    gl.glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap1)

def glBlendFunc(sfactor, dfactor):
    gl.glBlendFunc(sfactor, dfactor)

def glCallList(list):
    gl.glCallList(list)

def glCallLists(n, type, lists):
    gl.glCallLists(n, type, <void*>lists)

def glClear(mask):
    gl.glClear(mask)

def glClearAccum(red, green, blue, alpha):
    gl.glClearAccum(red, green, blue, alpha)

def glClearColor(red, green, blue, alpha):
    gl.glClearColor(red, green, blue, alpha)

def glClearDepth(depth):
    gl.glClearDepth(depth)

def glClearIndex(c):
    gl.glClearIndex(c)

def glClearStencil(s):
    gl.glClearStencil(s)

def glClipPlane(plane, double equation):
    cdef double* equation1 = &equation
    gl.glClipPlane(plane, equation1)

def glColor3b(red, green, blue):
    gl.glColor3b(red, green, blue)

def glColor3bv(signed char v):
    cdef signed char* v1 = &v
    gl.glColor3bv(v1)

def glColor3d(red, green, blue):
    gl.glColor3d(red, green, blue)

def glColor3dv(double v):
    cdef double* v1 = &v
    gl.glColor3dv(v1)

def glColor3f(red, green, blue):
    gl.glColor3f(red, green, blue)

def glColor3fv(float v):
    cdef float* v1 = &v
    gl.glColor3fv(v1)

def glColor3i(red, green, blue):
    gl.glColor3i(red, green, blue)

def glColor3iv(int v):
    cdef int* v1 = &v
    gl.glColor3iv(v1)

def glColor3s(red, green, blue):
    gl.glColor3s(red, green, blue)

def glColor3sv(short v):
    cdef short* v1 = &v
    gl.glColor3sv(v1)

def glColor3ub(red, green, blue):
    gl.glColor3ub(red, green, blue)

def glColor3ubv(unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glColor3ubv(v1)

def glColor3ui(red, green, blue):
    gl.glColor3ui(red, green, blue)

def glColor3uiv(unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glColor3uiv(v1)

def glColor3us(red, green, blue):
    gl.glColor3us(red, green, blue)

def glColor3usv(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glColor3usv(v1)

def glColor4b(red, green, blue, alpha):
    gl.glColor4b(red, green, blue, alpha)

def glColor4bv(signed char v):
    cdef signed char* v1 = &v
    gl.glColor4bv(v1)

def glColor4d(red, green, blue, alpha):
    gl.glColor4d(red, green, blue, alpha)

def glColor4dv(double v):
    cdef double* v1 = &v
    gl.glColor4dv(v1)

def glColor4f(red, green, blue, alpha):
    gl.glColor4f(red, green, blue, alpha)

def glColor4fv(float v):
    cdef float* v1 = &v
    gl.glColor4fv(v1)

def glColor4i(red, green, blue, alpha):
    gl.glColor4i(red, green, blue, alpha)

def glColor4iv(int v):
    cdef int* v1 = &v
    gl.glColor4iv(v1)

def glColor4s(red, green, blue, alpha):
    gl.glColor4s(red, green, blue, alpha)

def glColor4sv(short v):
    cdef short* v1 = &v
    gl.glColor4sv(v1)

def glColor4ub(red, green, blue, alpha):
    gl.glColor4ub(red, green, blue, alpha)

def glColor4ubv(unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glColor4ubv(v1)

def glColor4ui(red, green, blue, alpha):
    gl.glColor4ui(red, green, blue, alpha)

def glColor4uiv(unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glColor4uiv(v1)

def glColor4us(red, green, blue, alpha):
    gl.glColor4us(red, green, blue, alpha)

def glColor4usv(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glColor4usv(v1)

def glColorMask(red, green, blue, alpha):
    gl.glColorMask(red, green, blue, alpha)

def glColorMaterial(face, mode):
    gl.glColorMaterial(face, mode)

def glColorPointer(size, int type, stride, pointer):
    cdef float* array = <float*>malloc(len(pointer) * sizeof(float))
    
    for v,i in enumerate(pointer):
        array[v] = i
        
    gl.glColorPointer(size, type, stride, array)
    
    free(array)

def glCopyPixels(x, y, width, height, type):
    gl.glCopyPixels(x, y, width, height, type)

def glCopyTexImage1D(target, level, internalFormat, x, y, width, border):
    gl.glCopyTexImage1D(target, level, internalFormat, x, y, width, border)

def glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border):
    gl.glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border)

def glCopyTexSubImage1D(target, level, xoffset, x, y, width):
    gl.glCopyTexSubImage1D(target, level, xoffset, x, y, width)

def glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height):
    gl.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height)

def glCullFace(mode):
    gl.glCullFace(mode)

def glDeleteLists(list, range):
    gl.glDeleteLists(list, range)

def glDeleteTextures(n, unsigned int textures):
    cdef unsigned int* textures1 = &textures
    gl.glDeleteTextures(n, textures1)

def glDepthFunc(func):
    gl.glDepthFunc(func)

def glDepthMask(flag):
    gl.glDepthMask(flag)

def glDepthRange(zNear, zFar):
    gl.glDepthRange(zNear, zFar)

def glDisable(cap):
    gl.glDisable(cap)

def glDisableClientState(array):
    gl.glDisableClientState(array)

def glDrawArrays(int mode, first, count):
    gl.glDrawArrays(mode, first, count)
    
def testArr():
    gl.glDrawArrays(gl.GL_TRIANGLE_STRIP, 0, 4)

def glDrawBuffer(mode):
    gl.glDrawBuffer(mode)

def glDrawElements(mode, count, type, indices):
    gl.glDrawElements(mode, count, type, <void*>indices)

def glDrawPixels(width, height, format, type, pixels):
    gl.glDrawPixels(width, height, format, type, <void*>pixels)

def glEdgeFlag(flag):
    gl.glEdgeFlag(flag)

def glEdgeFlagPointer(stride, pointer):
    gl.glEdgeFlagPointer(stride, <void*>pointer)

def glEdgeFlagv(bint flag):
    cdef bint* flag1 = &flag
    gl.glEdgeFlagv(flag1)

def glEnable(cap):
    gl.glEnable(cap)

def glEnableClientState(array):
    gl.glEnableClientState(array)

def glEnd():
    gl.glEnd()

def glEndList():
    gl.glEndList()

def glEvalCoord1d(u):
    gl.glEvalCoord1d(u)

def glEvalCoord1dv(double u):
    cdef double* u1 = &u
    gl.glEvalCoord1dv(u1)

def glEvalCoord1f(u):
    gl.glEvalCoord1f(u)

def glEvalCoord1fv(float u):
    cdef float* u1 = &u
    gl.glEvalCoord1fv(u1)

def glEvalCoord2d(u, v):
    gl.glEvalCoord2d(u, v)

def glEvalCoord2dv(double u):
    cdef double* u1 = &u
    gl.glEvalCoord2dv(u1)

def glEvalCoord2f(u, v):
    gl.glEvalCoord2f(u, v)

def glEvalCoord2fv(float u):
    cdef float* u1 = &u
    gl.glEvalCoord2fv(u1)

def glEvalMesh1(mode, i1, i2):
    gl.glEvalMesh1(mode, i1, i2)

def glEvalMesh2(mode, i1, i2, j1, j2):
    gl.glEvalMesh2(mode, i1, i2, j1, j2)

def glEvalPoint1(i):
    gl.glEvalPoint1(i)

def glEvalPoint2(i, j):
    gl.glEvalPoint2(i, j)

def glFeedbackBuffer(size, type, float buffer):
    cdef float* buffer1 = &buffer
    gl.glFeedbackBuffer(size, type, buffer1)

def glFinish():
    gl.glFinish()

def glFlush():
    gl.glFlush()

def glFogf(pname, param):
    gl.glFogf(pname, param)

def glFogfv(pname, float params):
    cdef float* param1 = &params
    gl.glFogfv(pname, param1)

def glFogiv(pname, int params):
    cdef int* param1 = &params
    gl.glFogiv(pname, param1)

def glFogi(pname, param):
    gl.glFogi(pname, param)

def glFrontFace(mode):
    gl.glFrontFace(mode)

def glFrustum(left, right, bottom, top, zNear, zFar):
    gl.glFrustum(left, right, bottom, top, zNear, zFar)

def glGenLists(range):
    return gl.glGenLists(range)

def glGenTextures(n):
    cdef unsigned int test
    gl.glGenTextures(n, &test)
    return test

def glGetBooleanv(pname, bint params):
    gl.glGetBooleanv(pname, <bint*> params)

def glGetClipPlane(plane, double equation):
    cdef double* equation1 = &equation
    gl.glGetClipPlane(plane, equation1)

def glGetDoublev(pname, double params):
    cdef double* params1 = &params
    gl.glGetDoublev(pname, params1)

def glGetError():
    return gl.glGetError()

def glGetFloatv(pname, float params):
    cdef float* params1 = &params
    gl.glGetFloatv(pname, params1)

def glGetIntegerv(pname, int params):
    gl.glGetIntegerv(pname, <int*>params)

def glGetLightfv(light, pname, float params):
    cdef float* params1 = &params
    gl.glGetLightfv(light, pname, params1)

def glGetLightiv(light, pname, int params):
    gl.glGetLightiv(light, pname, <int*>params)

def glGetMapdv(target, query, double v):
    cdef double* v1 = &v
    gl.glGetMapdv(target, query, v1)

def glGetMapfv(target, query, float v):
    cdef float* v1 = &v
    gl.glGetMapfv(target, query, v1)

def glGetMapiv(target, query, int v):
    gl.glGetMapiv(target, query, <int*>v)

def glGetMaterialfv(face, pname, float params):
    cdef float* params1 = &params
    gl.glGetMaterialfv(face, pname, params1)

def glGetMaterialiv(face, pname, int params):
    gl.glGetMaterialiv(face, pname, <int*>params)

def glGetPixelMapfv(map, float values):
    cdef float* values1 = &values
    gl.glGetPixelMapfv(map, values1)

def glGetPixelMapuiv(map, unsigned int values):
    gl.glGetPixelMapuiv(map, <unsigned int*>values)

def glGetPixelMapusv(map, unsigned short values):
    gl.glGetPixelMapusv(map, <unsigned short*>values)

def glGetPointerv(pname, params):
    cdef void* t = <void*>params
    gl.glGetPointerv(pname, &t)

def glGetPolygonStipple(unsigned char mask):
    gl.glGetPolygonStipple(<unsigned char*>mask)

def glGetString(name):
    return gl.glGetString(name)

def glGetTexEnvfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetTexEnvfv(target, pname, params1)

def glGetTexEnviv(target, pname, int params):
    gl.glGetTexEnviv(target, pname, <int*>params)

def glGetTexGendv(coord, pname, double params):
    cdef double* params1 = &params
    gl.glGetTexGendv(coord, pname, params1)

def glGetTexGenfv(coord, pname, float params):
    cdef float* params1 = &params
    gl.glGetTexGenfv(coord, pname, params1)

def glGetTexGeniv(coord, pname, int params):
    gl.glGetTexGeniv(coord, pname, <int*>params)

def glGetTexImage(target, level, format, type, pixels):
    gl.glGetTexImage(target, level, format, type, <void*>pixels)

def glGetTexLevelParameterfv(target, level, pname, float params):
    cdef float* params1 = &params
    gl.glGetTexLevelParameterfv(target, level, pname, params1)

def glGetTexLevelParameteriv(target, level, pname, int params):
    gl.glGetTexLevelParameteriv(target, level, pname, <int*>params)

def glGetTexParameterfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glGetTexParameterfv(target, pname, params1)

def glGetTexParameteriv(target, pname, int params):
    gl.glGetTexParameteriv(target, pname, <int*>params)

def glHint(target, mode):
    gl.glHint(target, mode)

def glIndexMask(mask):
    gl.glIndexMask(mask)

def glIndexPointer(type, stride, pointer):
    gl.glIndexPointer(type, stride, <void*>pointer)

def glIndexd(c):
    gl.glIndexd(c)

def glIndexdv(double c):
    cdef double* c1 = &c
    gl.glIndexdv(c1)

def glIndexf(c):
    gl.glIndexf(c)

def glIndexfv(float c):
    cdef float* c1 = &c
    gl.glIndexfv(c1)

def glIndexi(c):
    gl.glIndexi(c)

def glIndexiv(int c):
    cdef int* c1 = &c
    gl.glIndexiv(c1)

def glIndexs(c):
    gl.glIndexs(c)

def glIndexsv(short c):
    cdef short* c1 = &c
    gl.glIndexsv(c1)

def glIndexub(c):
    gl.glIndexub(c)

def glIndexubv(unsigned char c):
    cdef unsigned char* c1 = &c
    gl.glIndexubv(c1)

def glInitNames():
    gl.glInitNames()

def glInterleavedArrays(format, stride, pointer):
    gl.glInterleavedArrays(format, stride, <void*>pointer)

def glIsEnabled(cap):
    return gl.glIsEnabled(cap)

def glIsList(list):
    return gl.glIsList(list)

def glIsTexture(texture):
    return gl.glIsTexture(texture)

def glLightModelf(pname, param):
    gl.glLightModelf(pname, param)

def glLightModelfv(pname, float params):
    cdef float* params1 = &params
    gl.glLightModelfv(pname, params1)

def glLightModeli(pname, param):
    gl.glLightModeli(pname, param)

def glLightModeliv(pname, int params):
    cdef int* params1 = &params
    gl.glLightModeliv(pname, params1)

def glLightf(light, pname, param):
    gl.glLightf(light, pname, param)

def glLightfv(light, pname, float params):
    cdef float* params1 = &params
    gl.glLightfv(light, pname, params1)

def glLighti(light, pname, param):
    gl.glLighti(light, pname, param)

def glLightiv(light, pname, int params):
    cdef int* params1 = &params
    gl.glLightiv(light, pname, params1)

def glLineStipple(factor, pattern):
    gl.glLineStipple(factor, pattern)

def glLineWidth(width):
    gl.glLineWidth(width)

def glListBase(base):
    gl.glListBase(base)

def glLoadIdentity():
    gl.glLoadIdentity()

def glLoadMatrixd(double m):
    cdef double* m1 = &m
    gl.glLoadMatrixd(m1)

def glLoadMatrixf(float m):
    cdef float* m1 = &m
    gl.glLoadMatrixf(m1)

def glLoadName(name):
    gl.glLoadName(name)

def glLogicOp(opcode):
    gl.glLogicOp(opcode)

def glMap1d(target, u1, u2, stride, order, double points):
    cdef double* points1 = &points
    gl.glMap1d(target, u1, u2, stride, order, points1)

def glMap1f(target, u1, u2, stride, order, float points):
    cdef float* points1 = &points
    gl.glMap1f(target, u1, u2, stride, order, points1)

def glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, double points):
    cdef double* points1 = &points
    gl.glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points1)

def glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, float points):
    cdef float* points1 = &points
    gl.glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points1)

def glMapGrid1d(un, u1, u2):
    gl.glMapGrid1d(un, u1, u2)

def glMapGrid1f(un, u1, u2):
    gl.glMapGrid1f(un, u1, u2)

def glMapGrid2d(un, u1, u2, vn, v1, v2):
    gl.glMapGrid2d(un, u1, u2, vn, v1, v2)

def glMapGrid2f(un, u1, u2, vn, v1, v2):
    gl.glMapGrid2f(un, u1, u2, vn, v1, v2)

def glMaterialf(face, pname, param):
    gl.glMaterialf(face, pname, param)

def glMaterialfv(face, pname, float params):
    cdef float* params1 = &params
    gl.glMaterialfv(face, pname, params1)

def glMateriali(face, pname, param):
    gl.glMateriali(face, pname, param)

def glMaterialiv(face, pname, int params):
    cdef int* params1 = &params
    gl.glMaterialiv(face, pname, params1)

def glMatrixMode(mode):
    gl.glMatrixMode(mode)

def glMultMatrixd(double m):
    cdef double* m1 = &m
    gl.glMultMatrixd(m1)

def glMultMatrixf(float m):
    cdef float* m1 =&m
    gl.glMultMatrixf(m1)

def glNewList(list, mode):
    gl.glNewList(list, mode)

def glNormal3b(nx, ny, nz):
    gl.glNormal3b(nx, ny, nz)

def glNormal3bv(signed char v):
    cdef signed char* v1 = &v
    gl.glNormal3bv(v1)

def glNormal3d(nx, ny, nz):
    gl.glNormal3d(nx, ny, nz)

def glNormal3dv(double v):
    cdef double* v1 = &v
    gl.glNormal3dv(v1)

def glNormal3f(nx, ny, nz):
    gl.glNormal3f(nx, ny, nz)

def glNormal3fv(float v):
    cdef float* v1 = &v
    gl.glNormal3fv(v1)

def glNormal3i(nx, ny, nz):
    gl.glNormal3i(nx, ny, nz)

def glNormal3iv(int v):
    cdef int* v1 = &v
    gl.glNormal3iv(v1)

def glNormal3s(nx, ny, nz):
    gl.glNormal3s(nx, ny, nz)

def glNormal3sv(short v):
    cdef short* v1 = &v
    gl.glNormal3sv(v1)

def glNormalPointer(type, stride, pointer):
    gl.glNormalPointer(type, stride, <void*>pointer)

def glOrtho(left, right, bottom, top, zNear, zFar):
    gl.glOrtho(left, right, bottom, top, zNear, zFar)

def glPassThrough(token):
    gl.glPassThrough(token)

def glPixelMapfv(map, mapsize, float values):
    cdef float* values1 = &values
    gl.glPixelMapfv(map, mapsize, values1)

def glPixelMapuiv(map, mapsize, unsigned int values):
    cdef unsigned int* values1 = &values
    gl.glPixelMapuiv(map, mapsize, values1)

def glPixelMapusv(map, mapsize, unsigned short values):
    cdef unsigned short* values1 = &values
    gl.glPixelMapusv(map, mapsize, values1)

def glPixelStoref(pname, param):
    gl.glPixelStoref(pname, param)

def glPixelStorei(pname, param):
    gl.glPixelStorei(pname, param)

def glPixelTransferf(pname, param):
    gl.glPixelTransferf(pname, param)

def glPixelTransferi(pname, param):
    gl.glPixelTransferi(pname, param)

def glPixelZoom(xfactor, yfactor):
    gl.glPixelZoom(xfactor, yfactor)

def glPointSize(size):
    gl.glPointSize(size)

def glPolygonMode(face, mode):
    gl.glPolygonMode(face, mode)

def glPolygonOffset(factor, units):
    gl.glPolygonOffset(factor, units)

def glPolygonStipple(unsigned char mask):
    cdef unsigned char* mask1 = &mask
    gl.glPolygonStipple(mask1)

def glPopAttrib():
    gl.glPopAttrib()

def glPopClientAttrib():
    gl.glPopClientAttrib()

def glPopMatrix():
    gl.glPopMatrix()

def glPopName():
    gl.glPopName()

def glPrioritizeTextures(n, unsigned int textures, float priorities):
    cdef unsigned int* textures1 = &textures
    cdef float* priorities1 = &priorities
    gl.glPrioritizeTextures(n, textures1, priorities1)

def glPushAttrib(mask):
    gl.glPushAttrib(mask)

def glPushClientAttrib(mask):
    gl.glPushClientAttrib(mask)

def glPushMatrix():
    gl.glPushMatrix()

def glPushName(name):
    gl.glPushName(name)

def glRasterPos2d(x, y):
    gl.glRasterPos2d(x, y)

def glRasterPos2dv(double v):
    cdef double* v1 = &v
    gl.glRasterPos2dv(v1)

def glRasterPos2f(x, y):
    gl.glRasterPos2f(x, y)

def glRasterPos2fv(float v):
    cdef float* v1 = &v
    gl.glRasterPos2fv(v1)

def glRasterPos2i(x, y):
    gl.glRasterPos2i(x, y)

def glRasterPos2iv(int v):
    cdef int* v1 = &v
    gl.glRasterPos2iv(v1)

def glRasterPos2s(x, y):
    gl.glRasterPos2s(x, y)

def glRasterPos2sv(short v):
    cdef short* v1 = &v
    gl.glRasterPos2sv(v1)

def glRasterPos3d(x, y, z):
    gl.glRasterPos3d(x, y, z)

def glRasterPos3dv(double v):
    cdef double* v1 = &v
    gl.glRasterPos3dv(v1)

def glRasterPos3f(x, y, z):
    gl.glRasterPos3f(x, y, z)

def glRasterPos3fv(float v):
    cdef float* v1 = &v
    gl.glRasterPos3fv(v1)

def glRasterPos3i(x, y, z):
    gl.glRasterPos3i(x, y, z)

def glRasterPos3iv(int v):
    cdef int* v1 = &v
    gl.glRasterPos3iv(v1)

def glRasterPos3s(x, y, z):
    gl.glRasterPos3s(x, y, z)

def glRasterPos3sv(short v):
    cdef short* v1 = &v
    gl.glRasterPos3sv(v1)

def glRasterPos4d(x, y, z, w):
    gl.glRasterPos4d(x, y, z, w)

def glRasterPos4dv(double v):
    cdef double* v1 = &v
    gl.glRasterPos4dv(v1)

def glRasterPos4f(x, y, z, w):
    gl.glRasterPos4f(x, y, z, w)

def glRasterPos4fv(float v):
    cdef float* v1 = &v
    gl.glRasterPos4fv(v1)

def glRasterPos4i(x, y, z, w):
    gl.glRasterPos4i(x, y, z, w)

def glRasterPos4iv(int v):
    cdef int* v1 = &v
    gl.glRasterPos4iv(v1)

def glRasterPos4s(x, y, z, w):
    gl.glRasterPos4s(x, y, z, w)

def glRasterPos4sv(short v):
    cdef short* v1 = &v
    gl.glRasterPos4sv(v1)

def glReadBuffer(mode):
    gl.glReadBuffer(mode)

def glReadPixels(x, y, width, height, format, type, pixels):
    gl.glReadPixels(x, y, width, height, format, type, <void*>pixels)

def glRectd(x1, y1, x2, y2):
    gl.glRectd(x1, y1, x2, y2)

def glRectdv(double v1, double v2):
    cdef double* v11 = &v1
    cdef double* v21 = &v2
    gl.glRectdv(v11, v21)

def glRectf(x1, y1, x2, y2):
    gl.glRectf(x1, y1, x2, y2)

def glRectfv(float v1, float v2):
    cdef float* v11 = &v1
    cdef float* v21 = &v2
    gl.glRectfv(v11, v21)

def glRecti(x1, y1, x2, y2):
    gl.glRecti(x1, y1, x2, y2)

def glRectiv(int v1, int v2):
    cdef int* v11 = &v1
    cdef int* v21 = &v2
    gl.glRectiv(v11, v21)

def glRects(x1, y1, x2, y2):
    gl.glRects(x1, y1, x2, y2)

def glRectsv(short v1, short v2):
    cdef short* v11 = &v1
    cdef short* v21 = &v2
    gl.glRectsv(v11, v21)

def glRenderMode(mode):
    return gl.glRenderMode(mode)

def glRotated(angle, x, y, z):
    gl.glRotated(angle, x, y, z)

def glRotatef(angle, x, y, z):
    gl.glRotatef(angle, x, y, z)

def glScaled(x, y, z):
    gl.glScaled(x, y, z)

def glScalef(x, y, z):
    gl.glScalef(x, y, z)

def glScissor(x, y, width, height):
    gl.glScissor(x, y, width, height)

def glSelectBuffer(size, unsigned int buffer):
    gl.glSelectBuffer(size, <unsigned int*>buffer)

def glShadeModel(mode):
    gl.glShadeModel(mode)

def glStencilFunc(func, ref, mask):
    gl.glStencilFunc(func, ref, mask)

def glStencilMask(mask):
    gl.glStencilMask(mask)

def glTexCoord1d(s):
    gl.glTexCoord1d(s)

def glTexCoord1dv(double v):
    cdef double* v1 = &v
    gl.glTexCoord1dv(v1)

def glTexCoord1f(s):
    gl.glTexCoord1f(s)

def glTexCoord1fv(float v):
    cdef float* v1 = &v
    gl.glTexCoord1fv(v1)

def glTexCoord1i(s):
    gl.glTexCoord1i(s)

def glTexCoord1iv(int v):
    cdef int* v1 = &v
    gl.glTexCoord1iv(v1)

def glTexCoord1s(s):
    gl.glTexCoord1s(s)

def glTexCoord1sv(short v):
    cdef short* v1 = &v
    gl.glTexCoord1sv(v1)

def glTexCoord2d(s, t):
    gl.glTexCoord2d(s, t)

def glTexCoord2dv(double v):
    cdef double* v1 = &v
    gl.glTexCoord2dv(v1)

def glTexCoord2f(s, t):
    gl.glTexCoord2f(s, t)

def glTexCoord2fv(float v):
    cdef float* v1 = &v
    gl.glTexCoord2fv(v1)

def glTexCoord2i(s, t):
    gl.glTexCoord2i(s, t)

def glTexCoord2iv(int v):
    cdef int* v1 = &v
    gl.glTexCoord2iv(v1)

def glTexCoord2s(s, t):
    gl.glTexCoord2s(s, t)

def glTexCoord2sv(short v):
    cdef short* v1 = &v
    gl.glTexCoord2sv(v1)

def glTexCoord3d(s, t, r):
    gl.glTexCoord3d(s, t, r)

def glTexCoord3dv(double v):
    cdef double* v1 = &v
    gl.glTexCoord3dv(v1)

def glTexCoord3f(s, t, r):
    gl.glTexCoord3f(s, t, r)

def glTexCoord3fv(float v):
    cdef float* v1 = &v
    gl.glTexCoord3fv(v1)

def glTexCoord3i(s, t, r):
    gl.glTexCoord3i(s, t, r)

def glTexCoord3iv(int v):
    cdef int* v1 = &v
    gl.glTexCoord3iv(v1)

def glTexCoord3s(s, t, r):
    gl.glTexCoord3s(s, t, r)

def glTexCoord3sv(short v):
    cdef short *v1 = &v
    gl.glTexCoord3sv(v1)

def glTexCoord4d(s, t, r, q):
    gl.glTexCoord4d(s, t, r, q)

def glTexCoord4dv(double v):
    cdef double *v1 = &v
    gl.glTexCoord4dv(v1)

def glTexCoord4f(s, t, r, q):
    gl.glTexCoord4f(s, t, r, q)

def glTexCoord4fv(float v):
    cdef float *v1 = &v
    gl.glTexCoord4fv(v1)

def glTexCoord4i(s, t, r, q):
    gl.glTexCoord4i(s, t, r, q)

def glTexCoord4iv(int v):
    cdef int* v1 = &v
    gl.glTexCoord4iv(v1)

def glTexCoord4s(s, t, r, q):
    gl.glTexCoord4s(s, t, r, q)

def glTexCoord4sv(short v):
    cdef short* v1 = &v
    gl.glTexCoord4sv(v1)

def glTexCoordPointer(size, type, stride, pointer):
    gl.glTexCoordPointer(size, type, stride, <void*>pointer)

def glTexEnvf(target, pname, param):
    gl.glTexEnvf(target, pname, param)

def glTexEnvfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glTexEnvfv(target, pname, params1)

def glTexEnvi(target, pname, param):
    gl.glTexEnvi(target, pname, param)

def glTexEnviv(target, pname, int params):
    cdef int* params1 = &params
    gl.glTexEnviv(target, pname, params1)

def glTexGend(coord, pname, param):
    gl.glTexGend(coord, pname, param)

def glTexGendv(coord, pname, double params):
    cdef double* params1 = &params
    gl.glTexGendv(coord, pname, params1)

def glTexGenf(coord, pname, param):
    gl.glTexGenf(coord, pname, param)

def glTexGenfv(coord, pname, float params):
    cdef float* params1 = &params
    gl.glTexGenfv(coord, pname, params1)

def glTexGeni(coord, pname, param):
    gl.glTexGeni(coord, pname, param)

def glTexGeniv(coord, pname, int params):
    cdef int* params1 = &params
    gl.glTexGeniv(coord, pname, params1)

def glTexImage1D(target, level, internalformat, width, border, format, type, pixels):
    cdef unsigned char* data = <unsigned char*>malloc(sizeof(unsigned char))
    data = pixels
    gl.glTexImage1D(target, level, internalformat, width, border, format, type, data)
    free(data)

def glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels):
    #cdef unsigned char* data = <unsigned char*>malloc(sizeof(unsigned char))
    #data = pixels
    gl.glTexImage2D(target, level, internalformat, width, height, border, format, type, <void*>pixels)
    #free(data)

def glTexParameterf(target, pname, param):
    gl.glTexParameterf(target, pname, param)

def glTexParameterfv(target, pname, float params):
    cdef float* params1 = &params
    gl.glTexParameterfv(target, pname, params1)

def glTexParameteri(target, pname, param):
    gl.glTexParameteri(target, pname, param)

def glTexParameteriv(target, pname, int params):
    cdef int* params1 = &params
    gl.glTexParameteriv(target, pname, params1)

def glTexSubImage1D(target, level, xoffset, width, format, type, pixels):
    gl.glTexSubImage1D(target, level, xoffset, width, format, type, <void*>pixels)

def glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels):
    gl.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, <void*>pixels)

def glTranslated(x, y, z):
    gl.glTranslated(x, y, z)

def glTranslatef(x, y, z):
    gl.glTranslatef(x, y, z)

def glVertex2d(x, y):
    gl.glVertex2d(x, y)

def glVertex2dv(double v):
    cdef double* v1 = &v
    gl.glVertex2dv(v1)

def glVertex2f(x, y):
    gl.glVertex2f(x, y)

def glVertex2fv(float v):
    cdef float* v1 = &v
    gl.glVertex2fv(v1)

def glVertex2i(x, y):
    gl.glVertex2i(x, y)

def glVertex2iv(int v):
    cdef int* v1 = &v
    gl.glVertex2iv(v1)

def glVertex2s(x, y):
    gl.glVertex2s(x, y)

def glVertex2sv(short v):
    cdef short* v1 = &v
    gl.glVertex2sv(v1)

def glVertex3d(x, y, z):
    gl.glVertex3d(x, y, z)

def glVertex3dv(double v):
    cdef double* v1 = &v
    gl.glVertex3dv(v1)

def glVertex3f(x, y, z):
    gl.glVertex3f(x, y, z)

def glVertex3fv(float v):
    cdef float* v1 = &v
    gl.glVertex3fv(v1)

def glVertex3i(x, y, z):
    gl.glVertex3i(x, y, z)

def glVertex3iv(int v):
    cdef int* v1 = &v
    gl.glVertex3iv(v1)

def glVertex3s(x, y, z):
    gl.glVertex3s(x, y, z)

def glVertex3sv(short v):
    cdef short* v1 = &v
    gl.glVertex3sv(v1)

def glVertex4d(x, y, z, w):
    gl.glVertex4d(x, y, z, w)

def glVertex4dv(double v):
    cdef double* v1 = &v
    gl.glVertex4dv(v1)

def glVertex4f(x, y, z, w):
    gl.glVertex4f(x, y, z, w)

def glVertex4fv(float v):
    cdef float* v1 = &v
    gl.glVertex4fv(v1)

def glVertex4i(x, y, z, w):
    gl.glVertex4i(x, y, z, w)

def glVertex4iv(int v):
    cdef int* v1 = &v
    gl.glVertex4iv(v1)

def glVertex4s(x, y, z, w):
    gl.glVertex4s(x, y, z, w)

def glVertex4sv(short v):
    cdef short* v1 = &v
    gl.glVertex4sv(v1)

def glVertexPointer(size, int type, stride, pointer):
    cdef float* array = <float*>malloc(len(pointer) * sizeof(float))
    
    for v,i in enumerate(pointer):
        array[v] = i
        
    gl.glVertexPointer(size, type, stride, array)
    
    free(array)

def glViewport(x, y, width, height):
    gl.glViewport(x, y, width, height)

#GLU

##

# Boolean
GLU_FALSE = gl.GLU_FALSE
GLU_TRUE = gl.GLU_TRUE

# Version
GLU_VERSION_1_1 = gl.GLU_VERSION_1_1
GLU_VERSION_1_2 = gl.GLU_VERSION_1_2

# StringName
GLU_VERSION = gl.GLU_VERSION
GLU_EXTENSIONS = gl.GLU_EXTENSIONS

# ErrorCode
GLU_INVALID_ENUM = gl.GLU_INVALID_ENUM
GLU_INVALID_VALUE = gl.GLU_INVALID_VALUE
GLU_OUT_OF_MEMORY = gl.GLU_OUT_OF_MEMORY
#GLU_INVALID_OPERATION = gl.GLU_INVALID_OPERATION

# NurbsDisplay
#      GLU_FILL
GLU_OUTLINE_POLYGON = gl.GLU_OUTLINE_POLYGON
GLU_OUTLINE_PATCH = gl.GLU_OUTLINE_PATCH

# NurbsError
GLU_NURBS_ERROR1 = gl.GLU_NURBS_ERROR1
GLU_NURBS_ERROR2 = gl.GLU_NURBS_ERROR2
GLU_NURBS_ERROR3 = gl.GLU_NURBS_ERROR3
GLU_NURBS_ERROR4 = gl.GLU_NURBS_ERROR4
GLU_NURBS_ERROR5 = gl.GLU_NURBS_ERROR5
GLU_NURBS_ERROR6 = gl.GLU_NURBS_ERROR6
GLU_NURBS_ERROR7 = gl.GLU_NURBS_ERROR7
GLU_NURBS_ERROR8 = gl.GLU_NURBS_ERROR8
GLU_NURBS_ERROR9 = gl.GLU_NURBS_ERROR9
GLU_NURBS_ERROR10 = gl.GLU_NURBS_ERROR10
GLU_NURBS_ERROR11 = gl.GLU_NURBS_ERROR11
GLU_NURBS_ERROR12 = gl.GLU_NURBS_ERROR12
GLU_NURBS_ERROR13 = gl.GLU_NURBS_ERROR13
GLU_NURBS_ERROR14 = gl.GLU_NURBS_ERROR14
GLU_NURBS_ERROR15 = gl.GLU_NURBS_ERROR15
GLU_NURBS_ERROR16 = gl.GLU_NURBS_ERROR16
GLU_NURBS_ERROR17 = gl.GLU_NURBS_ERROR17
GLU_NURBS_ERROR18 = gl.GLU_NURBS_ERROR18
GLU_NURBS_ERROR19 = gl.GLU_NURBS_ERROR19
GLU_NURBS_ERROR20 = gl.GLU_NURBS_ERROR20
GLU_NURBS_ERROR21 = gl.GLU_NURBS_ERROR21
GLU_NURBS_ERROR22 = gl.GLU_NURBS_ERROR22
GLU_NURBS_ERROR23 = gl.GLU_NURBS_ERROR23
GLU_NURBS_ERROR24 = gl.GLU_NURBS_ERROR24
GLU_NURBS_ERROR25 = gl.GLU_NURBS_ERROR25
GLU_NURBS_ERROR26 = gl.GLU_NURBS_ERROR26
GLU_NURBS_ERROR27 = gl.GLU_NURBS_ERROR27
GLU_NURBS_ERROR28 = gl.GLU_NURBS_ERROR28
GLU_NURBS_ERROR29 = gl.GLU_NURBS_ERROR29
GLU_NURBS_ERROR30 = gl.GLU_NURBS_ERROR30
GLU_NURBS_ERROR31 = gl.GLU_NURBS_ERROR31
GLU_NURBS_ERROR32 = gl.GLU_NURBS_ERROR32
GLU_NURBS_ERROR33 = gl.GLU_NURBS_ERROR33
GLU_NURBS_ERROR34 = gl.GLU_NURBS_ERROR34
GLU_NURBS_ERROR35 = gl.GLU_NURBS_ERROR35
GLU_NURBS_ERROR36 = gl.GLU_NURBS_ERROR36
GLU_NURBS_ERROR37 = gl.GLU_NURBS_ERROR37

# NurbsProperty
GLU_AUTO_LOAD_MATRIX = gl.GLU_AUTO_LOAD_MATRIX
GLU_CULLING = gl.GLU_CULLING
GLU_SAMPLING_TOLERANCE = gl.GLU_SAMPLING_TOLERANCE
GLU_DISPLAY_MODE = gl.GLU_DISPLAY_MODE
GLU_PARAMETRIC_TOLERANCE = gl.GLU_PARAMETRIC_TOLERANCE
GLU_SAMPLING_METHOD = gl.GLU_SAMPLING_METHOD
GLU_U_STEP = gl.GLU_U_STEP
GLU_V_STEP = gl.GLU_V_STEP

# NurbsSampling
GLU_PATH_LENGTH = gl.GLU_PATH_LENGTH
GLU_PARAMETRIC_ERROR = gl.GLU_PARAMETRIC_ERROR
GLU_DOMAIN_DISTANCE = gl.GLU_DOMAIN_DISTANCE

# NurbsTrim
GLU_MAP1_TRIM_2 = gl.GLU_MAP1_TRIM_2
GLU_MAP1_TRIM_3 = gl.GLU_MAP1_TRIM_3

# QuadricDrawStyle
GLU_POINT = gl.GLU_POINT
GLU_LINE = gl.GLU_LINE
GLU_FILL = gl.GLU_FILL
GLU_SILHOUETTE                      = gl.GLU_SILHOUETTE                     

# QuadricCallback
GLU_ERROR = gl.GLU_ERROR

# QuadricNormal
GLU_SMOOTH = gl.GLU_SMOOTH
GLU_FLAT = gl.GLU_FLAT
GLU_NONE = gl.GLU_NONE

# QuadricOrientation
GLU_OUTSIDE = gl.GLU_OUTSIDE
GLU_INSIDE = gl.GLU_INSIDE

# TessCallback
GLU_TESS_BEGIN = gl.GLU_TESS_BEGIN
GLU_BEGIN = gl.GLU_BEGIN
GLU_TESS_VERTEX = gl.GLU_TESS_VERTEX
GLU_VERTEX = gl.GLU_VERTEX
GLU_TESS_END = gl.GLU_TESS_END
GLU_END = gl.GLU_END
GLU_TESS_ERROR = gl.GLU_TESS_ERROR
GLU_TESS_EDGE_FLAG = gl.GLU_TESS_EDGE_FLAG
GLU_EDGE_FLAG = gl.GLU_EDGE_FLAG
GLU_TESS_COMBINE = gl.GLU_TESS_COMBINE
GLU_TESS_BEGIN_DATA = gl.GLU_TESS_BEGIN_DATA
GLU_TESS_VERTEX_DATA = gl.GLU_TESS_VERTEX_DATA
GLU_TESS_END_DATA = gl.GLU_TESS_END_DATA
GLU_TESS_ERROR_DATA = gl.GLU_TESS_ERROR_DATA
GLU_TESS_EDGE_FLAG_DATA = gl.GLU_TESS_EDGE_FLAG_DATA
GLU_TESS_COMBINE_DATA = gl.GLU_TESS_COMBINE_DATA

# TessContour
GLU_CW = gl.GLU_CW
GLU_CCW = gl.GLU_CCW
GLU_INTERIOR = gl.GLU_INTERIOR
GLU_EXTERIOR = gl.GLU_EXTERIOR
GLU_UNKNOWN = gl.GLU_UNKNOWN

# TessProperty
GLU_TESS_WINDING_RULE = gl.GLU_TESS_WINDING_RULE
GLU_TESS_BOUNDARY_ONLY = gl.GLU_TESS_BOUNDARY_ONLY
GLU_TESS_TOLERANCE = gl.GLU_TESS_TOLERANCE

# TessError
GLU_TESS_ERROR1 = gl.GLU_TESS_ERROR1
GLU_TESS_ERROR2 = gl.GLU_TESS_ERROR2
GLU_TESS_ERROR3 = gl.GLU_TESS_ERROR3
GLU_TESS_ERROR4 = gl.GLU_TESS_ERROR4
GLU_TESS_ERROR5 = gl.GLU_TESS_ERROR5
GLU_TESS_ERROR6 = gl.GLU_TESS_ERROR6
GLU_TESS_ERROR7 = gl.GLU_TESS_ERROR7
GLU_TESS_ERROR8 = gl.GLU_TESS_ERROR8
GLU_TESS_MISSING_BEGIN_POLYGON = gl.GLU_TESS_MISSING_BEGIN_POLYGON
GLU_TESS_MISSING_BEGIN_CONTOUR = gl.GLU_TESS_MISSING_BEGIN_CONTOUR
GLU_TESS_MISSING_END_POLYGON = gl.GLU_TESS_MISSING_END_POLYGON
GLU_TESS_MISSING_END_CONTOUR = gl.GLU_TESS_MISSING_END_CONTOUR
GLU_TESS_COORD_TOO_LARGE = gl.GLU_TESS_COORD_TOO_LARGE
GLU_TESS_NEED_COMBINE_CALLBACK = gl.GLU_TESS_NEED_COMBINE_CALLBACK

# TessWinding
GLU_TESS_WINDING_ODD = gl.GLU_TESS_WINDING_ODD
GLU_TESS_WINDING_NONZERO = gl.GLU_TESS_WINDING_NONZERO
GLU_TESS_WINDING_POSITIVE = gl.GLU_TESS_WINDING_POSITIVE
GLU_TESS_WINDING_NEGATIVE = gl.GLU_TESS_WINDING_NEGATIVE
GLU_TESS_WINDING_ABS_GEQ_TWO = gl.GLU_TESS_WINDING_ABS_GEQ_TWO

# Obsolete. For compatibility with previous Sun OpenGL versions
GLU_INCOMPATIBLE_GL_VERSION = gl.GLU_INCOMPATIBLE_GL_VERSION

    

GLU_TESS_MAX_COORD = gl.GLU_TESS_MAX_COORD

#Internal convenience typedefs

def gluBuild1DMipmaps(target, internalFormat, width, format, type, data):
    return gl.gluBuild1DMipmaps(target, internalFormat, width, format, type, <void*>data)

def gluBuild2DMipmaps(target, internalFormat, width, height, format, type, data):
    return gl.gluBuild2DMipmaps(target, internalFormat, width, height, format, type, <void*>data)

#def gluErrorString(error):
#    return gl.gluErrorString(error)

def gluErrorUnicodeStringEXT(error):
    return gl.gluErrorUnicodeStringEXT(error)

def gluGetString(name):
    return gl.gluGetString(name)

def gluLookAt(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ):
    gl.gluLookAt(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ)

def gluOrtho2D(left, right, bottom, top):
    gl.gluOrtho2D(left, right, bottom, top)

def gluPerspective(fovy, aspect, zNear, zFar):
    gl.gluPerspective(fovy, aspect, zNear, zFar)

def gluPickMatrix(x, y, delX, delY, int viewport):
    gl.gluPickMatrix(x, y, delX, delY, <int*>viewport)

def gluProject(objX, objY, objZ, double model, double proj, int view, double winX, double winY, double winZ):
    cdef double* winX1 = &winX
    cdef double* winY1 = &winY
    cdef double* winZ1 = &winZ
    cdef double* model1 = &model
    cdef double* proj1 = &proj
    cdef int* view1 = &view
    return gl.gluProject(objX, objY, objZ, model1, proj1, view1, winX1, winY1, winZ1)

def gluScaleImage(format, wIn, hIn, typeIn, dataIn, wOut, hOut, typeOut, dataOut):
    return gl.gluScaleImage(format, wIn, hIn, typeIn, <void*>dataIn, wOut, hOut, typeOut, <void*>dataOut)

def gluUnProject(winX, winY, winZ, double model, double proj, int view, double objX, double objY, double objZ):
    cdef double* objX1 = &objX
    cdef double* objY1 = &objY
    cdef double* objZ1 = &objZ
    cdef double* model1 = &model
    cdef double* proj1 = &proj
    cdef int* view1 = &view
    return gl.gluUnProject(winX, winY, winZ, model1, proj1, view1, objX1, objY1, objZ1)

#def gluUnProject4(winX, winY, winZ, clipW, model, proj, view, nearVal, farVal, double objX, double objY, double objZ, double objW):
#    return gl.gluUnProject4(winX, winY, winZ, clipW, model, proj, view, nearVal, farVal, <double*>objX, <double*>objY, <double*>objZ, <double*>objW)

#def gluErrorStringWIN(errCode):
#    return gl.gluErrorStringWIN(errCode)

    
##

#GL_VERSION_1_2

GL_VERSION_1_2 = gl.GL_VERSION_1_2

GL_SMOOTH_POINT_SIZE_RANGE = gl.GL_SMOOTH_POINT_SIZE_RANGE
GL_SMOOTH_POINT_SIZE_GRANULARITY = gl.GL_SMOOTH_POINT_SIZE_GRANULARITY
GL_SMOOTH_LINE_WIDTH_RANGE = gl.GL_SMOOTH_LINE_WIDTH_RANGE
GL_SMOOTH_LINE_WIDTH_GRANULARITY = gl.GL_SMOOTH_LINE_WIDTH_GRANULARITY
GL_UNSIGNED_BYTE_3_3_2 = gl.GL_UNSIGNED_BYTE_3_3_2
GL_UNSIGNED_SHORT_4_4_4_4 = gl.GL_UNSIGNED_SHORT_4_4_4_4
GL_UNSIGNED_SHORT_5_5_5_1 = gl.GL_UNSIGNED_SHORT_5_5_5_1
GL_UNSIGNED_INT_8_8_8_8 = gl.GL_UNSIGNED_INT_8_8_8_8
GL_UNSIGNED_INT_10_10_10_2 = gl.GL_UNSIGNED_INT_10_10_10_2
GL_RESCALE_NORMAL = gl.GL_RESCALE_NORMAL
GL_TEXTURE_BINDING_3D = gl.GL_TEXTURE_BINDING_3D
GL_PACK_SKIP_IMAGES = gl.GL_PACK_SKIP_IMAGES
GL_PACK_IMAGE_HEIGHT = gl.GL_PACK_IMAGE_HEIGHT
GL_UNPACK_SKIP_IMAGES = gl.GL_UNPACK_SKIP_IMAGES
GL_UNPACK_IMAGE_HEIGHT = gl.GL_UNPACK_IMAGE_HEIGHT
GL_TEXTURE_3D = gl.GL_TEXTURE_3D
GL_PROXY_TEXTURE_3D = gl.GL_PROXY_TEXTURE_3D
GL_TEXTURE_DEPTH = gl.GL_TEXTURE_DEPTH
GL_TEXTURE_WRAP_R = gl.GL_TEXTURE_WRAP_R
GL_MAX_3D_TEXTURE_SIZE = gl.GL_MAX_3D_TEXTURE_SIZE
GL_BGR = gl.GL_BGR
GL_BGRA = gl.GL_BGRA
GL_MAX_ELEMENTS_VERTICES = gl.GL_MAX_ELEMENTS_VERTICES
GL_MAX_ELEMENTS_INDICES = gl.GL_MAX_ELEMENTS_INDICES
GL_CLAMP_TO_EDGE = gl.GL_CLAMP_TO_EDGE
GL_TEXTURE_MIN_LOD = gl.GL_TEXTURE_MIN_LOD
GL_TEXTURE_MAX_LOD = gl.GL_TEXTURE_MAX_LOD
GL_TEXTURE_BASE_LEVEL = gl.GL_TEXTURE_BASE_LEVEL
GL_TEXTURE_MAX_LEVEL = gl.GL_TEXTURE_MAX_LEVEL
GL_LIGHT_MODEL_COLOR_CONTROL = gl.GL_LIGHT_MODEL_COLOR_CONTROL
GL_SINGLE_COLOR = gl.GL_SINGLE_COLOR
GL_SEPARATE_SPECULAR_COLOR = gl.GL_SEPARATE_SPECULAR_COLOR
GL_UNSIGNED_BYTE_2_3_3_REV = gl.GL_UNSIGNED_BYTE_2_3_3_REV
GL_UNSIGNED_SHORT_5_6_5 = gl.GL_UNSIGNED_SHORT_5_6_5
GL_UNSIGNED_SHORT_5_6_5_REV = gl.GL_UNSIGNED_SHORT_5_6_5_REV
GL_UNSIGNED_SHORT_4_4_4_4_REV = gl.GL_UNSIGNED_SHORT_4_4_4_4_REV
GL_UNSIGNED_SHORT_1_5_5_5_REV = gl.GL_UNSIGNED_SHORT_1_5_5_5_REV
GL_UNSIGNED_INT_8_8_8_8_REV = gl.GL_UNSIGNED_INT_8_8_8_8_REV
GL_UNSIGNED_INT_2_10_10_10_REV = gl.GL_UNSIGNED_INT_2_10_10_10_REV
GL_ALIASED_POINT_SIZE_RANGE = gl.GL_ALIASED_POINT_SIZE_RANGE
GL_ALIASED_LINE_WIDTH_RANGE = gl.GL_ALIASED_LINE_WIDTH_RANGE

def glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height):
    gl.glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height)

def glDrawRangeElements(mode, start, end, count, type, indices):
    gl.glDrawRangeElements(mode, start, end, count, type, <void*>indices)

def glTexImage3D(target, level, internalFormat, width, height, depth, border, format, type, pixels):
    gl.glTexImage3D(target, level, internalFormat, width, height, depth, border, format, type, <void*>pixels)

def glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels):
    gl.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, <void*>pixels)

#GL_VERSION_1_2_1

GL_VERSION_1_2_1 = gl.GL_VERSION_1_2_1

#GL_VERSION_1_3

GL_VERSION_1_3 = gl.GL_VERSION_1_3

GL_MULTISAMPLE = gl.GL_MULTISAMPLE
GL_SAMPLE_ALPHA_TO_COVERAGE = gl.GL_SAMPLE_ALPHA_TO_COVERAGE
GL_SAMPLE_ALPHA_TO_ONE = gl.GL_SAMPLE_ALPHA_TO_ONE
GL_SAMPLE_COVERAGE = gl.GL_SAMPLE_COVERAGE
GL_SAMPLE_BUFFERS = gl.GL_SAMPLE_BUFFERS
GL_SAMPLES = gl.GL_SAMPLES
GL_SAMPLE_COVERAGE_VALUE = gl.GL_SAMPLE_COVERAGE_VALUE
GL_SAMPLE_COVERAGE_INVERT = gl.GL_SAMPLE_COVERAGE_INVERT
GL_CLAMP_TO_BORDER = gl.GL_CLAMP_TO_BORDER
GL_TEXTURE0 = gl.GL_TEXTURE0
GL_TEXTURE1 = gl.GL_TEXTURE1
GL_TEXTURE2 = gl.GL_TEXTURE2
GL_TEXTURE3 = gl.GL_TEXTURE3
GL_TEXTURE4 = gl.GL_TEXTURE4
GL_TEXTURE5 = gl.GL_TEXTURE5
GL_TEXTURE6 = gl.GL_TEXTURE6
GL_TEXTURE7 = gl.GL_TEXTURE7
GL_TEXTURE8 = gl.GL_TEXTURE8
GL_TEXTURE9 = gl.GL_TEXTURE9
GL_TEXTURE10 = gl.GL_TEXTURE10
GL_TEXTURE11 = gl.GL_TEXTURE11
GL_TEXTURE12 = gl.GL_TEXTURE12
GL_TEXTURE13 = gl.GL_TEXTURE13
GL_TEXTURE14 = gl.GL_TEXTURE14
GL_TEXTURE15 = gl.GL_TEXTURE15
GL_TEXTURE16 = gl.GL_TEXTURE16
GL_TEXTURE17 = gl.GL_TEXTURE17
GL_TEXTURE18 = gl.GL_TEXTURE18
GL_TEXTURE19 = gl.GL_TEXTURE19
GL_TEXTURE20 = gl.GL_TEXTURE20
GL_TEXTURE21 = gl.GL_TEXTURE21
GL_TEXTURE22 = gl.GL_TEXTURE22
GL_TEXTURE23 = gl.GL_TEXTURE23
GL_TEXTURE24 = gl.GL_TEXTURE24
GL_TEXTURE25 = gl.GL_TEXTURE25
GL_TEXTURE26 = gl.GL_TEXTURE26
GL_TEXTURE27 = gl.GL_TEXTURE27
GL_TEXTURE28 = gl.GL_TEXTURE28
GL_TEXTURE29 = gl.GL_TEXTURE29
GL_TEXTURE30 = gl.GL_TEXTURE30
GL_TEXTURE31 = gl.GL_TEXTURE31
GL_ACTIVE_TEXTURE = gl.GL_ACTIVE_TEXTURE
GL_CLIENT_ACTIVE_TEXTURE = gl.GL_CLIENT_ACTIVE_TEXTURE
GL_MAX_TEXTURE_UNITS = gl.GL_MAX_TEXTURE_UNITS
GL_TRANSPOSE_MODELVIEW_MATRIX = gl.GL_TRANSPOSE_MODELVIEW_MATRIX
GL_TRANSPOSE_PROJECTION_MATRIX = gl.GL_TRANSPOSE_PROJECTION_MATRIX
GL_TRANSPOSE_TEXTURE_MATRIX = gl.GL_TRANSPOSE_TEXTURE_MATRIX
GL_TRANSPOSE_COLOR_MATRIX = gl.GL_TRANSPOSE_COLOR_MATRIX
GL_SUBTRACT = gl.GL_SUBTRACT
GL_COMPRESSED_ALPHA = gl.GL_COMPRESSED_ALPHA
GL_COMPRESSED_LUMINANCE = gl.GL_COMPRESSED_LUMINANCE
GL_COMPRESSED_LUMINANCE_ALPHA = gl.GL_COMPRESSED_LUMINANCE_ALPHA
GL_COMPRESSED_INTENSITY = gl.GL_COMPRESSED_INTENSITY
GL_COMPRESSED_RGB = gl.GL_COMPRESSED_RGB
GL_COMPRESSED_RGBA = gl.GL_COMPRESSED_RGBA
GL_TEXTURE_COMPRESSION_HINT = gl.GL_TEXTURE_COMPRESSION_HINT
GL_NORMAL_MAP = gl.GL_NORMAL_MAP
GL_REFLECTION_MAP = gl.GL_REFLECTION_MAP
GL_TEXTURE_CUBE_MAP = gl.GL_TEXTURE_CUBE_MAP
GL_TEXTURE_BINDING_CUBE_MAP = gl.GL_TEXTURE_BINDING_CUBE_MAP
GL_TEXTURE_CUBE_MAP_POSITIVE_X = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_X
GL_TEXTURE_CUBE_MAP_NEGATIVE_X = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_X
GL_TEXTURE_CUBE_MAP_POSITIVE_Y = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_Y
GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
GL_TEXTURE_CUBE_MAP_POSITIVE_Z = gl.GL_TEXTURE_CUBE_MAP_POSITIVE_Z
GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = gl.GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
GL_PROXY_TEXTURE_CUBE_MAP = gl.GL_PROXY_TEXTURE_CUBE_MAP
GL_MAX_CUBE_MAP_TEXTURE_SIZE = gl.GL_MAX_CUBE_MAP_TEXTURE_SIZE
GL_COMBINE = gl.GL_COMBINE
GL_COMBINE_RGB = gl.GL_COMBINE_RGB
GL_COMBINE_ALPHA = gl.GL_COMBINE_ALPHA
GL_RGB_SCALE = gl.GL_RGB_SCALE
GL_ADD_SIGNED = gl.GL_ADD_SIGNED
GL_INTERPOLATE = gl.GL_INTERPOLATE
GL_CONSTANT = gl.GL_CONSTANT
GL_PRIMARY_COLOR = gl.GL_PRIMARY_COLOR
GL_PREVIOUS = gl.GL_PREVIOUS
GL_SOURCE0_RGB = gl.GL_SOURCE0_RGB
GL_SOURCE1_RGB = gl.GL_SOURCE1_RGB
GL_SOURCE2_RGB = gl.GL_SOURCE2_RGB
GL_SOURCE0_ALPHA = gl.GL_SOURCE0_ALPHA
GL_SOURCE1_ALPHA = gl.GL_SOURCE1_ALPHA
GL_SOURCE2_ALPHA = gl.GL_SOURCE2_ALPHA
GL_OPERAND0_RGB = gl.GL_OPERAND0_RGB
GL_OPERAND1_RGB = gl.GL_OPERAND1_RGB
GL_OPERAND2_RGB = gl.GL_OPERAND2_RGB
GL_OPERAND0_ALPHA = gl.GL_OPERAND0_ALPHA
GL_OPERAND1_ALPHA = gl.GL_OPERAND1_ALPHA
GL_OPERAND2_ALPHA = gl.GL_OPERAND2_ALPHA
GL_TEXTURE_COMPRESSED_IMAGE_SIZE = gl.GL_TEXTURE_COMPRESSED_IMAGE_SIZE
GL_TEXTURE_COMPRESSED = gl.GL_TEXTURE_COMPRESSED
GL_NUM_COMPRESSED_TEXTURE_FORMATS = gl.GL_NUM_COMPRESSED_TEXTURE_FORMATS
GL_COMPRESSED_TEXTURE_FORMATS = gl.GL_COMPRESSED_TEXTURE_FORMATS
GL_DOT3_RGB = gl.GL_DOT3_RGB
GL_DOT3_RGBA = gl.GL_DOT3_RGBA
GL_MULTISAMPLE_BIT = gl.GL_MULTISAMPLE_BIT

def glActiveTexture(texture):
    gl.glActiveTexture(texture)

def glClientActiveTexture(texture):
    gl.glClientActiveTexture(texture)

def glCompressedTexImage1D(target, level, internalformat, width, border, imageSize, data):
    gl.glCompressedTexImage1D(target, level, internalformat, width, border, imageSize, <void*>data)

def glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data):
    gl.glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, <void*>data)

def glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, data):
    gl.glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, <void*>data)

def glCompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data):
    gl.glCompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, <void*>data)

def glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data):
    gl.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, <void*>data)

def glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data):
    gl.glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, <void*>data)

def glGetCompressedTexImage(target, lod, img):
    gl.glGetCompressedTexImage(target, lod, <void*>img)

def glLoadTransposeMatrixd(m):
    cdef double holder[16]
    
    for i, v in enumerate(m):
        holder[i] = v
        
    gl.glLoadTransposeMatrixd(holder)

def glLoadTransposeMatrixf(m):
    cdef float holder[16]
    
    for i, v in enumerate(m):
        holder[i] = v
        
    gl.glLoadTransposeMatrixf(holder)

def glMultTransposeMatrixd(m):
    cdef double holder[16]
    
    for i, v in enumerate(m):
        holder[i] = v
        
    gl.glMultTransposeMatrixd(holder)

def glMultTransposeMatrixf(m):
    cdef float holder[16]
    
    for i, v in enumerate(m):
        holder[i] = v
        
    gl.glMultTransposeMatrixf(holder)

def glMultiTexCoord1d(target, s):
    gl.glMultiTexCoord1d(target, s)

def glMultiTexCoord1dv(target,double v):
    cdef double* v1 = &v
    gl.glMultiTexCoord1dv(target, v1)

def glMultiTexCoord1f(target, s):
    gl.glMultiTexCoord1f(target, s)

def glMultiTexCoord1fv(target, float v):
    cdef float* v1 = &v
    gl.glMultiTexCoord1fv(target, v1)

def glMultiTexCoord1i(target, s):
    gl.glMultiTexCoord1i(target, s)

def glMultiTexCoord1iv(target,int v):
    cdef int* v1 = &v
    gl.glMultiTexCoord1iv(target, v1)

def glMultiTexCoord1s(target, s):
    gl.glMultiTexCoord1s(target, s)

def glMultiTexCoord1sv(target,short v):
    cdef short* v1 = &v
    gl.glMultiTexCoord1sv(target, v1)

def glMultiTexCoord2d(target, s, t):
    gl.glMultiTexCoord2d(target, s, t)

def glMultiTexCoord2dv(target,double v):
    cdef double* v1 = &v
    gl.glMultiTexCoord2dv(target, v1)

def glMultiTexCoord2f(target, s, t):
    gl.glMultiTexCoord2f(target, s, t)

def glMultiTexCoord2fv(target,float v):
    cdef float* v1 = &v
    gl.glMultiTexCoord2fv(target, v1)

def glMultiTexCoord2i(target, s, t):
    gl.glMultiTexCoord2i(target, s, t)

def glMultiTexCoord2iv(target,int v):
    cdef int* v1 = &v
    gl.glMultiTexCoord2iv(target, v1)

def glMultiTexCoord2s(target, s, t):
    gl.glMultiTexCoord2s(target, s, t)

def glMultiTexCoord2sv(target,short v):
    cdef short* v1 = &v
    gl.glMultiTexCoord2sv(target, v1)

def glMultiTexCoord3d(target, s, t, r):
    gl.glMultiTexCoord3d(target, s, t, r)

def glMultiTexCoord3dv(target,double v):
    cdef double* v1 = &v
    gl.glMultiTexCoord3dv(target, v1)

def glMultiTexCoord3f(target, s, t, r):
    gl.glMultiTexCoord3f(target, s, t, r)

def glMultiTexCoord3fv(target,float v):
    cdef float* v1 = &v
    gl.glMultiTexCoord3fv(target, v1)

def glMultiTexCoord3i(target, s, t, r):
    gl.glMultiTexCoord3i(target, s, t, r)

def glMultiTexCoord3iv(target,int v):
    cdef int* v1 = &v
    gl.glMultiTexCoord3iv(target, v1)

def glMultiTexCoord3s(target, s, t, r):
    gl.glMultiTexCoord3s(target, s, t, r)

def glMultiTexCoord3sv(target,short v):
    cdef short* v1 = &v
    gl.glMultiTexCoord3sv(target, v1)

def glMultiTexCoord4d(target, s, t, r, q):
    gl.glMultiTexCoord4d(target, s, t, r, q)

def glMultiTexCoord4dv(target,double v):
    cdef double* v1 = &v
    gl.glMultiTexCoord4dv(target, v1)

def glMultiTexCoord4f(target, s, t, r, q):
    gl.glMultiTexCoord4f(target, s, t, r, q)

def glMultiTexCoord4fv(target,float v):
    cdef float* v1 = &v
    gl.glMultiTexCoord4fv(target, v1)

def glMultiTexCoord4i(target, s, t, r, q):
    gl.glMultiTexCoord4i(target, s, t, r, q)

def glMultiTexCoord4iv(target,int v):
    cdef int* v1 = &v
    gl.glMultiTexCoord4iv(target, v1)

def glMultiTexCoord4s(target, s, t, r, q):
    gl.glMultiTexCoord4s(target, s, t, r, q)

def glMultiTexCoord4sv(target, short v):
    cdef short* v1 = &v
    gl.glMultiTexCoord4sv(target, v1)

def glSampleCoverage(value, invert):
    gl.glSampleCoverage(value, invert)

#GL_VERSION_1_4

GL_VERSION_1_4 = gl.GL_VERSION_1_4

GL_BLEND_DST_RGB = gl.GL_BLEND_DST_RGB
GL_BLEND_SRC_RGB = gl.GL_BLEND_SRC_RGB
GL_BLEND_DST_ALPHA = gl.GL_BLEND_DST_ALPHA
GL_BLEND_SRC_ALPHA = gl.GL_BLEND_SRC_ALPHA
GL_POINT_SIZE_MIN = gl.GL_POINT_SIZE_MIN
GL_POINT_SIZE_MAX = gl.GL_POINT_SIZE_MAX
GL_POINT_FADE_THRESHOLD_SIZE = gl.GL_POINT_FADE_THRESHOLD_SIZE
GL_POINT_DISTANCE_ATTENUATION = gl.GL_POINT_DISTANCE_ATTENUATION
GL_GENERATE_MIPMAP = gl.GL_GENERATE_MIPMAP
GL_GENERATE_MIPMAP_HINT = gl.GL_GENERATE_MIPMAP_HINT
GL_DEPTH_COMPONENT16 = gl.GL_DEPTH_COMPONENT16
GL_DEPTH_COMPONENT24 = gl.GL_DEPTH_COMPONENT24
GL_DEPTH_COMPONENT32 = gl.GL_DEPTH_COMPONENT32
GL_MIRRORED_REPEAT = gl.GL_MIRRORED_REPEAT
GL_FOG_COORDINATE_SOURCE = gl.GL_FOG_COORDINATE_SOURCE
GL_FOG_COORDINATE = gl.GL_FOG_COORDINATE
GL_FRAGMENT_DEPTH = gl.GL_FRAGMENT_DEPTH
GL_CURRENT_FOG_COORDINATE = gl.GL_CURRENT_FOG_COORDINATE
GL_FOG_COORDINATE_ARRAY_TYPE = gl.GL_FOG_COORDINATE_ARRAY_TYPE
GL_FOG_COORDINATE_ARRAY_STRIDE = gl.GL_FOG_COORDINATE_ARRAY_STRIDE
GL_FOG_COORDINATE_ARRAY_POINTER = gl.GL_FOG_COORDINATE_ARRAY_POINTER
GL_FOG_COORDINATE_ARRAY = gl.GL_FOG_COORDINATE_ARRAY
GL_COLOR_SUM = gl.GL_COLOR_SUM
GL_CURRENT_SECONDARY_COLOR = gl.GL_CURRENT_SECONDARY_COLOR
GL_SECONDARY_COLOR_ARRAY_SIZE = gl.GL_SECONDARY_COLOR_ARRAY_SIZE
GL_SECONDARY_COLOR_ARRAY_TYPE = gl.GL_SECONDARY_COLOR_ARRAY_TYPE
GL_SECONDARY_COLOR_ARRAY_STRIDE = gl.GL_SECONDARY_COLOR_ARRAY_STRIDE
GL_SECONDARY_COLOR_ARRAY_POINTER = gl.GL_SECONDARY_COLOR_ARRAY_POINTER
GL_SECONDARY_COLOR_ARRAY = gl.GL_SECONDARY_COLOR_ARRAY
GL_MAX_TEXTURE_LOD_BIAS = gl.GL_MAX_TEXTURE_LOD_BIAS
GL_TEXTURE_FILTER_CONTROL = gl.GL_TEXTURE_FILTER_CONTROL
GL_TEXTURE_LOD_BIAS = gl.GL_TEXTURE_LOD_BIAS
GL_INCR_WRAP = gl.GL_INCR_WRAP
GL_DECR_WRAP = gl.GL_DECR_WRAP
GL_TEXTURE_DEPTH_SIZE = gl.GL_TEXTURE_DEPTH_SIZE
GL_DEPTH_TEXTURE_MODE = gl.GL_DEPTH_TEXTURE_MODE
GL_TEXTURE_COMPARE_MODE = gl.GL_TEXTURE_COMPARE_MODE
GL_TEXTURE_COMPARE_FUNC = gl.GL_TEXTURE_COMPARE_FUNC
GL_COMPARE_R_TO_TEXTURE = gl.GL_COMPARE_R_TO_TEXTURE

def glBlendColor(red, green, blue, alpha):
    gl.glBlendColor(red, green, blue, alpha)

def glBlendEquation(mode):
    gl.glBlendEquation(mode)

def glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha):
    gl.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha)

def glFogCoordPointer(type, stride, pointer):
    gl.glFogCoordPointer(type, stride, <void*>pointer)

def glFogCoordd(coord):
    gl.glFogCoordd(coord)

def glFogCoorddv(double coord):
    cdef double* coord1 = &coord
    gl.glFogCoorddv(coord1)

def glFogCoordf(coord):
    gl.glFogCoordf(coord)

def glFogCoordfv(float coord):
    cdef float* coord1 = &coord
    gl.glFogCoordfv(coord1)

def glMultiDrawArrays(mode, int first, int count, primcount):
    cdef int* first1 = &first
    cdef int* count1 = &count
    gl.glMultiDrawArrays(mode, first1, count1, primcount)

def glMultiDrawElements(mode, int count, type, indices, primcount):
    cdef int* count1 = &count
    gl.glMultiDrawElements(mode, count1, type, <void*>indices, primcount)

def glPointParameterf(pname, param):
    gl.glPointParameterf(pname, param)

def glPointParameterfv(pname, float params):
    cdef float* params1 = &params
    gl.glPointParameterfv(pname, params1)

def glPointParameteri(pname, param):
    gl.glPointParameteri(pname, param)

def glPointParameteriv(pname, int params):
    cdef int* params1 = &params
    gl.glPointParameteriv(pname, params1)

def glSecondaryColor3b(red, green, blue):
    gl.glSecondaryColor3b(red, green, blue)

def glSecondaryColor3bv(signed char v):
    cdef signed char* v1 = &v
    gl.glSecondaryColor3bv(v1)

def glSecondaryColor3d(red, green, blue):
    gl.glSecondaryColor3d(red, green, blue)

def glSecondaryColor3dv(double v):
    cdef double* v1 = &v
    gl.glSecondaryColor3dv(v1)

def glSecondaryColor3f(red, green, blue):
    gl.glSecondaryColor3f(red, green, blue)

def glSecondaryColor3fv(float v):
    cdef float* v1 = &v
    gl.glSecondaryColor3fv(v1)

def glSecondaryColor3i(red, green, blue):
    gl.glSecondaryColor3i(red, green, blue)

def glSecondaryColor3iv(int v):
    cdef int* v1 = &v
    gl.glSecondaryColor3iv(v1)

def glSecondaryColor3s(red, green, blue):
    gl.glSecondaryColor3s(red, green, blue)

def glSecondaryColor3sv(short v):
    cdef short* v1 = &v
    gl.glSecondaryColor3sv(v1)

def glSecondaryColor3ub(red, green, blue):
    gl.glSecondaryColor3ub(red, green, blue)

def glSecondaryColor3ubv(unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glSecondaryColor3ubv(v1)

def glSecondaryColor3ui(red, green, blue):
    gl.glSecondaryColor3ui(red, green, blue)

def glSecondaryColor3uiv(unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glSecondaryColor3uiv(v1)

def glSecondaryColor3us(red, green, blue):
    gl.glSecondaryColor3us(red, green, blue)

def glSecondaryColor3usv(unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glSecondaryColor3usv(v1)

def glSecondaryColorPointer(size, type, stride, pointer):
    gl.glSecondaryColorPointer(size, type, stride, <void*>pointer)

def glWindowPos2d(x, y):
    gl.glWindowPos2d(x, y)

def glWindowPos2dv(double p):
    cdef double* p1 = &p
    gl.glWindowPos2dv(p1)

def glWindowPos2f(x, y):
    gl.glWindowPos2f(x, y)

def glWindowPos2fv(float p):
    cdef float* p1 = &p
    gl.glWindowPos2fv(p1)

def glWindowPos2i(x, y):
    gl.glWindowPos2i(x, y)

def glWindowPos2iv(int p):
    cdef int* p1 = &p
    gl.glWindowPos2iv(p1)

def glWindowPos2s(x, y):
    gl.glWindowPos2s(x, y)

def glWindowPos2sv(short p):
    cdef short* p1 = &p
    gl.glWindowPos2sv(p1)

def glWindowPos3d(x, y, z):
    gl.glWindowPos3d(x, y, z)

def glWindowPos3dv(double p):
    cdef double* p1 = &p
    gl.glWindowPos3dv(p1)

def glWindowPos3f(x, y, z):
    gl.glWindowPos3f(x, y, z)

def glWindowPos3fv(float p):
    cdef float* p1 = &p
    gl.glWindowPos3fv(p1)

def glWindowPos3i(x, y, z):
    gl.glWindowPos3i(x, y, z)

def glWindowPos3iv(int p):
    cdef int* p1 = &p
    gl.glWindowPos3iv(p1)

def glWindowPos3s(x, y, z):
    gl.glWindowPos3s(x, y, z)

def glWindowPos3sv(short p):
    cdef short* p1 = &p
    gl.glWindowPos3sv(p1)

#GL_VERSION_1_5

GL_VERSION_1_5 = gl.GL_VERSION_1_5

GL_FOG_COORD_SRC = gl.GL_FOG_COORD_SRC
GL_FOG_COORD = gl.GL_FOG_COORD
GL_FOG_COORD_ARRAY = gl.GL_FOG_COORD_ARRAY
GL_SRC0_RGB = gl.GL_SRC0_RGB
GL_FOG_COORD_ARRAY_POINTER = gl.GL_FOG_COORD_ARRAY_POINTER
GL_FOG_COORD_ARRAY_TYPE = gl.GL_FOG_COORD_ARRAY_TYPE
GL_SRC1_ALPHA = gl.GL_SRC1_ALPHA
GL_CURRENT_FOG_COORD = gl.GL_CURRENT_FOG_COORD
GL_FOG_COORD_ARRAY_STRIDE = gl.GL_FOG_COORD_ARRAY_STRIDE
GL_SRC0_ALPHA = gl.GL_SRC0_ALPHA
GL_SRC1_RGB = gl.GL_SRC1_RGB
GL_FOG_COORD_ARRAY_BUFFER_BINDING = gl.GL_FOG_COORD_ARRAY_BUFFER_BINDING
GL_SRC2_ALPHA = gl.GL_SRC2_ALPHA
GL_SRC2_RGB = gl.GL_SRC2_RGB
GL_BUFFER_SIZE = gl.GL_BUFFER_SIZE
GL_BUFFER_USAGE = gl.GL_BUFFER_USAGE
GL_QUERY_COUNTER_BITS = gl.GL_QUERY_COUNTER_BITS
GL_CURRENT_QUERY = gl.GL_CURRENT_QUERY
GL_QUERY_RESULT = gl.GL_QUERY_RESULT
GL_QUERY_RESULT_AVAILABLE = gl.GL_QUERY_RESULT_AVAILABLE
GL_ARRAY_BUFFER = gl.GL_ARRAY_BUFFER
GL_ELEMENT_ARRAY_BUFFER = gl.GL_ELEMENT_ARRAY_BUFFER
GL_ARRAY_BUFFER_BINDING = gl.GL_ARRAY_BUFFER_BINDING
GL_ELEMENT_ARRAY_BUFFER_BINDING = gl.GL_ELEMENT_ARRAY_BUFFER_BINDING
GL_VERTEX_ARRAY_BUFFER_BINDING = gl.GL_VERTEX_ARRAY_BUFFER_BINDING
GL_NORMAL_ARRAY_BUFFER_BINDING = gl.GL_NORMAL_ARRAY_BUFFER_BINDING
GL_COLOR_ARRAY_BUFFER_BINDING = gl.GL_COLOR_ARRAY_BUFFER_BINDING
GL_INDEX_ARRAY_BUFFER_BINDING = gl.GL_INDEX_ARRAY_BUFFER_BINDING
GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = gl.GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = gl.GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = gl.GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = gl.GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
GL_WEIGHT_ARRAY_BUFFER_BINDING = gl.GL_WEIGHT_ARRAY_BUFFER_BINDING
GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = gl.GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
GL_READ_ONLY = gl.GL_READ_ONLY
GL_WRITE_ONLY = gl.GL_WRITE_ONLY
GL_READ_WRITE = gl.GL_READ_WRITE
GL_BUFFER_ACCESS = gl.GL_BUFFER_ACCESS
GL_BUFFER_MAPPED = gl.GL_BUFFER_MAPPED
GL_BUFFER_MAP_POINTER = gl.GL_BUFFER_MAP_POINTER
GL_STREAM_DRAW = gl.GL_STREAM_DRAW
GL_STREAM_READ = gl.GL_STREAM_READ
GL_STREAM_COPY = gl.GL_STREAM_COPY
GL_STATIC_DRAW = gl.GL_STATIC_DRAW
GL_STATIC_READ = gl.GL_STATIC_READ
GL_STATIC_COPY = gl.GL_STATIC_COPY
GL_DYNAMIC_DRAW = gl.GL_DYNAMIC_DRAW
GL_DYNAMIC_READ = gl.GL_DYNAMIC_READ
GL_DYNAMIC_COPY = gl.GL_DYNAMIC_COPY
GL_SAMPLES_PASSED = gl.GL_SAMPLES_PASSED

def glBeginQuery(target, id):
    gl.glBeginQuery(target, id)

def glBindBuffer(target, buffer):
    gl.glBindBuffer(target, buffer)
	

def glBufferData(target, data, usage):
    cdef float* array = <float*>malloc(len(data) * sizeof(float))
	
    for v,i in enumerate(data):
        array[v] = i
		
    gl.glBufferData(target, sizeof(array), array, usage)
	
    free(array)

def glBufferSubData(target, offset, size, data):
    cdef float* array = <float*>malloc(len(data) * sizeof(float))
	
    for v,i in enumerate(data):
        array[v] = i
		
    gl.glBufferSubData(target, offset, size, array)
	
    free(array)

def glDeleteBuffers(n, unsigned int buffers):
    cdef unsigned int* buffers1 = &buffers
    gl.glDeleteBuffers(n, buffers1)

def glDeleteQueries(n, unsigned int ids):
    cdef unsigned int* ids1 = &ids
    gl.glDeleteQueries(n, ids1)

def glEndQuery(target):
    gl.glEndQuery(target)

def glGenBuffers(n):
    cdef unsigned int buffers
    gl.glGenBuffers(n, &buffers)
    return buffers

def glGenQueries(n, unsigned int ids):
    gl.glGenQueries(n, <unsigned int*>ids)

def glGetBufferParameteriv(target, pname, int params):
    gl.glGetBufferParameteriv(target, pname, <int*>params)

def glGetBufferPointerv(target, pname, params):
    cdef void* t = <void*>params
    gl.glGetBufferPointerv(target, pname, &t)

def glGetBufferSubData(target, offset, size, data):
    gl.glGetBufferSubData(target, offset, size, <void*>data)

def glGetQueryObjectiv(id, pname, int params):
    cdef int* params1 = &params
    gl.glGetQueryObjectiv(id, pname, params1)

def glGetQueryObjectuiv(id, pname, unsigned int params):
    cdef unsigned int* params1 = &params
    gl.glGetQueryObjectuiv(id, pname, params1)

def glGetQueryiv(target, pname, int params):
    cdef int* params1 = &params
    gl.glGetQueryiv(target, pname, params1)

def glIsBuffer(buffer):
    return gl.glIsBuffer(buffer)

def glIsQuery(id):
    return gl.glIsQuery(id)

def glMapBuffer(target, access):
    gl.glMapBuffer(target, access)

def glUnmapBuffer(target):
    return gl.glUnmapBuffer(target)

#GL_VERSION_2_0

GL_VERSION_2_0 = gl.GL_VERSION_2_0

GL_BLEND_EQUATION_RGB = gl.GL_BLEND_EQUATION_RGB
GL_VERTEX_ATTRIB_ARRAY_ENABLED = gl.GL_VERTEX_ATTRIB_ARRAY_ENABLED
GL_VERTEX_ATTRIB_ARRAY_SIZE = gl.GL_VERTEX_ATTRIB_ARRAY_SIZE
GL_VERTEX_ATTRIB_ARRAY_STRIDE = gl.GL_VERTEX_ATTRIB_ARRAY_STRIDE
GL_VERTEX_ATTRIB_ARRAY_TYPE = gl.GL_VERTEX_ATTRIB_ARRAY_TYPE
GL_CURRENT_VERTEX_ATTRIB = gl.GL_CURRENT_VERTEX_ATTRIB
GL_VERTEX_PROGRAM_POINT_SIZE = gl.GL_VERTEX_PROGRAM_POINT_SIZE
GL_VERTEX_PROGRAM_TWO_SIDE = gl.GL_VERTEX_PROGRAM_TWO_SIDE
GL_VERTEX_ATTRIB_ARRAY_POINTER = gl.GL_VERTEX_ATTRIB_ARRAY_POINTER
GL_STENCIL_BACK_FUNC = gl.GL_STENCIL_BACK_FUNC
GL_STENCIL_BACK_FAIL = gl.GL_STENCIL_BACK_FAIL
GL_STENCIL_BACK_PASS_DEPTH_FAIL = gl.GL_STENCIL_BACK_PASS_DEPTH_FAIL
GL_STENCIL_BACK_PASS_DEPTH_PASS = gl.GL_STENCIL_BACK_PASS_DEPTH_PASS
GL_MAX_DRAW_BUFFERS = gl.GL_MAX_DRAW_BUFFERS
GL_DRAW_BUFFER0 = gl.GL_DRAW_BUFFER0
GL_DRAW_BUFFER1 = gl.GL_DRAW_BUFFER1
GL_DRAW_BUFFER2 = gl.GL_DRAW_BUFFER2
GL_DRAW_BUFFER3 = gl.GL_DRAW_BUFFER3
GL_DRAW_BUFFER4 = gl.GL_DRAW_BUFFER4
GL_DRAW_BUFFER5 = gl.GL_DRAW_BUFFER5
GL_DRAW_BUFFER6 = gl.GL_DRAW_BUFFER6
GL_DRAW_BUFFER7 = gl.GL_DRAW_BUFFER7
GL_DRAW_BUFFER8 = gl.GL_DRAW_BUFFER8
GL_DRAW_BUFFER9 = gl.GL_DRAW_BUFFER9
GL_DRAW_BUFFER10 = gl.GL_DRAW_BUFFER10
GL_DRAW_BUFFER11 = gl.GL_DRAW_BUFFER11
GL_DRAW_BUFFER12 = gl.GL_DRAW_BUFFER12
GL_DRAW_BUFFER13 = gl.GL_DRAW_BUFFER13
GL_DRAW_BUFFER14 = gl.GL_DRAW_BUFFER14
GL_DRAW_BUFFER15 = gl.GL_DRAW_BUFFER15
GL_BLEND_EQUATION_ALPHA = gl.GL_BLEND_EQUATION_ALPHA
GL_POINT_SPRITE = gl.GL_POINT_SPRITE
GL_COORD_REPLACE = gl.GL_COORD_REPLACE
GL_MAX_VERTEX_ATTRIBS = gl.GL_MAX_VERTEX_ATTRIBS
GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = gl.GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
GL_MAX_TEXTURE_COORDS = gl.GL_MAX_TEXTURE_COORDS
GL_MAX_TEXTURE_IMAGE_UNITS = gl.GL_MAX_TEXTURE_IMAGE_UNITS
GL_FRAGMENT_SHADER = gl.GL_FRAGMENT_SHADER
GL_VERTEX_SHADER = gl.GL_VERTEX_SHADER
GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = gl.GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
GL_MAX_VERTEX_UNIFORM_COMPONENTS = gl.GL_MAX_VERTEX_UNIFORM_COMPONENTS
GL_MAX_VARYING_FLOATS = gl.GL_MAX_VARYING_FLOATS
GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = gl.GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = gl.GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
GL_SHADER_TYPE = gl.GL_SHADER_TYPE
GL_FLOAT_VEC2 = gl.GL_FLOAT_VEC2
GL_FLOAT_VEC3 = gl.GL_FLOAT_VEC3
GL_FLOAT_VEC4 = gl.GL_FLOAT_VEC4
GL_INT_VEC2 = gl.GL_INT_VEC2
GL_INT_VEC3 = gl.GL_INT_VEC3
GL_INT_VEC4 = gl.GL_INT_VEC4
GL_BOOL = gl.GL_BOOL
GL_BOOL_VEC2 = gl.GL_BOOL_VEC2
GL_BOOL_VEC3 = gl.GL_BOOL_VEC3
GL_BOOL_VEC4 = gl.GL_BOOL_VEC4
GL_FLOAT_MAT2 = gl.GL_FLOAT_MAT2
GL_FLOAT_MAT3 = gl.GL_FLOAT_MAT3
GL_FLOAT_MAT4 = gl.GL_FLOAT_MAT4
GL_SAMPLER_1D = gl.GL_SAMPLER_1D
GL_SAMPLER_2D = gl.GL_SAMPLER_2D
GL_SAMPLER_3D = gl.GL_SAMPLER_3D
GL_SAMPLER_CUBE = gl.GL_SAMPLER_CUBE
GL_SAMPLER_1D_SHADOW = gl.GL_SAMPLER_1D_SHADOW
GL_SAMPLER_2D_SHADOW = gl.GL_SAMPLER_2D_SHADOW
GL_DELETE_STATUS = gl.GL_DELETE_STATUS
GL_COMPILE_STATUS = gl.GL_COMPILE_STATUS
GL_LINK_STATUS = gl.GL_LINK_STATUS
GL_VALIDATE_STATUS = gl.GL_VALIDATE_STATUS
GL_INFO_LOG_LENGTH = gl.GL_INFO_LOG_LENGTH
GL_ATTACHED_SHADERS = gl.GL_ATTACHED_SHADERS
GL_ACTIVE_UNIFORMS = gl.GL_ACTIVE_UNIFORMS
GL_ACTIVE_UNIFORM_MAX_LENGTH = gl.GL_ACTIVE_UNIFORM_MAX_LENGTH
GL_SHADER_SOURCE_LENGTH = gl.GL_SHADER_SOURCE_LENGTH
GL_ACTIVE_ATTRIBUTES = gl.GL_ACTIVE_ATTRIBUTES
GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = gl.GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
GL_FRAGMENT_SHADER_DERIVATIVE_HINT = gl.GL_FRAGMENT_SHADER_DERIVATIVE_HINT
GL_SHADING_LANGUAGE_VERSION = gl.GL_SHADING_LANGUAGE_VERSION
GL_CURRENT_PROGRAM = gl.GL_CURRENT_PROGRAM
GL_POINT_SPRITE_COORD_ORIGIN = gl.GL_POINT_SPRITE_COORD_ORIGIN
GL_LOWER_LEFT = gl.GL_LOWER_LEFT
GL_UPPER_LEFT = gl.GL_UPPER_LEFT
GL_STENCIL_BACK_REF = gl.GL_STENCIL_BACK_REF
GL_STENCIL_BACK_VALUE_MASK = gl.GL_STENCIL_BACK_VALUE_MASK
GL_STENCIL_BACK_WRITEMASK = gl.GL_STENCIL_BACK_WRITEMASK

def glAttachShader(program, shader):
    gl.glAttachShader(program, shader)

def glBindAttribLocation(program, index,  name):
    gl.glBindAttribLocation(program, index,  <char*>name)

def glBlendEquationSeparate(A, B):
    gl.glBlendEquationSeparate(A, B)

def glCompileShader(shader):
    gl.glCompileShader(shader)

def glCreateProgram():
    return gl.glCreateProgram()

def glCreateShader(type):
    return gl.glCreateShader(type)

def glDeleteProgram(program):
    gl.glDeleteProgram(program)

def glDeleteShader(shader):
    gl.glDeleteShader(shader)

def glDetachShader(program, shader):
    gl.glDetachShader(program, shader)

def glDisableVertexAttribArray(A):
    gl.glDisableVertexAttribArray(A)

def glDrawBuffers(n, unsigned int bufs):
    cdef unsigned int* bufs1 = &bufs
    gl.glDrawBuffers(n, bufs1)

def glEnableVertexAttribArray(A):
    gl.glEnableVertexAttribArray(A)

def glGetActiveAttrib(program, index, maxLength, int length, int size, unsigned int type, name):
    cdef int* length1 = &length
    cdef int* size1 = &size
    cdef unsigned int* type1 = &type
    cdef char* name1 = name
    gl.glGetActiveAttrib(program, index, maxLength, length1, size1, type1, name1)

def glGetActiveUniform(program, index, maxLength, int length, int size, unsigned int type, name):
    cdef int* length1 = &length
    cdef int* size1 = &size
    cdef unsigned int* type1 = &type
    cdef char* name1 = name
    gl.glGetActiveUniform(program, index, maxLength, length1, size1, type1, name1)

def glGetAttachedShaders(program, maxCount, int count, unsigned int shaders):
    cdef int* count1 = &count
    cdef unsigned int* shaders1 = &shaders
    gl.glGetAttachedShaders(program, maxCount, count1, shaders1)

def glGetAttribLocation(program,  name):
    cdef char* name1 = <char*>name
    return gl.glGetAttribLocation(program,  name1)

def glGetProgramInfoLog(program, bufSize, int length, infoLog):
    cdef int* length1 = &length
    cdef char* infoLog1 = infoLog
    gl.glGetProgramInfoLog(program, bufSize, length1, infoLog1)

def glGetProgramiv(program, pname, int param):
    cdef int* param1 = &param
    gl.glGetProgramiv(program, pname, param1)

def glGetShaderInfoLog(shader, bufSize, int length, infoLog):
    cdef int* length1 = &length
    cdef char* infoLog1 = infoLog
    gl.glGetShaderInfoLog(shader, bufSize, length1, infoLog1)

def glGetShaderSource(obj, maxLength, int length, source):
    cdef int* length1 = &length
    cdef char* source1 = source
    gl.glGetShaderSource(obj, maxLength, length1, source1)

def glGetShaderiv(shader, pname, int param):
    cdef int* param1 = &param
    gl.glGetShaderiv(shader, pname, param1)

def glGetUniformLocation(program,  name):
    cdef char* name1 = name
    return gl.glGetUniformLocation(program,  name1)

def glGetUniformfv(program, location, float params):
    cdef float* params1 = &params
    gl.glGetUniformfv(program, location, params1)

def glGetUniformiv(program, location, int params):
    cdef int* params1 = &params
    gl.glGetUniformiv(program, location, params1)

def glGetVertexAttribPointerv(A, B, C):
    cdef void* t = <void*>C
    gl.glGetVertexAttribPointerv(A, B, &t)

def glGetVertexAttribdv(A, B, double C):
    cdef double* C1 = &C
    gl.glGetVertexAttribdv(A, B, C1)

def glGetVertexAttribfv(A, B, float C):
    cdef float* C1 = &C
    gl.glGetVertexAttribfv(A, B, C1)

def glGetVertexAttribiv(A, B, int C):
    cdef int* C1 = &C
    gl.glGetVertexAttribiv(A, B, C1)

def glIsProgram(program):
    return gl.glIsProgram(program)

def glIsShader(shader):
    return gl.glIsShader(shader)

def glLinkProgram(program):
    gl.glLinkProgram(program)

def glShaderSource(shader, count, strings, int lengths):
    cdef char* strings1 = <char*>strings
    cdef int* lengths1 = <int*>lengths
    gl.glShaderSource(shader, count, &strings1, lengths1)

def glStencilFuncSeparate(frontfunc, backfunc, ref, mask):
    gl.glStencilFuncSeparate(frontfunc, backfunc, ref, mask)

def glStencilMaskSeparate(A, B):
    gl.glStencilMaskSeparate(A, B)

def glUniform1f(location, v0):
    gl.glUniform1f(location, v0)

def glUniform1fv(location, count,  float value):
    cdef float* value1 = &value
    gl.glUniform1fv(location, count,  value1)

def glUniform1i(location, v0):
    gl.glUniform1i(location, v0)

def glUniform1iv(location, count, int value):
    cdef int* value1 = &value
    gl.glUniform1iv(location, count,  value1)

def glUniform2f(location, v0, v1):
    gl.glUniform2f(location, v0, v1)

def glUniform2fv(location, count, float value):
    cdef float* value1 = &value
    gl.glUniform2fv(location, count,  value1)

def glUniform2i(location, v0, v1):
    gl.glUniform2i(location, v0, v1)

def glUniform2iv(location, count, int value):
    cdef int* value1 = &value
    gl.glUniform2iv(location, count,  value1)

def glUniform3f(location, v0, v1, v2):
    gl.glUniform3f(location, v0, v1, v2)

def glUniform3fv(location, count, float value):
    cdef float* value1 = &value
    gl.glUniform3fv(location, count,  value1)

def glUniform3i(location, v0, v1, v2):
    gl.glUniform3i(location, v0, v1, v2)

def glUniform3iv(location, count, int value):
    cdef int* value1 = &value
    gl.glUniform3iv(location, count,  value1)

def glUniform4f(location, v0, v1, v2, v3):
    gl.glUniform4f(location, v0, v1, v2, v3)

def glUniform4fv(location, count, value):
    cdef float* value1 = <float*>malloc(len(value) * sizeof(float))
    
    for v,i in enumerate(value):
        value1[v] = i
	
    gl.glUniform4fv(location, count,  value1)
	
    free(value1)

def glUniform4i(location, v0, v1, v2, v3):
    gl.glUniform4i(location, v0, v1, v2, v3)

def glUniform4iv(location, count, int value):
    cdef int* value1 = &value
    gl.glUniform4iv(location, count,  value1)

def glUniformMatrix2fv(location, count, transpose,  float value):
    cdef float* value1 = &value
    gl.glUniformMatrix2fv(location, count, transpose,  value1)

def glUniformMatrix3fv(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix3fv(location, count, transpose,  value1)
    

def glUniformMatrix4fv(location, count, transpose, data):

    cdef float* array = <float*>malloc(len(data) * sizeof(float))
    
    for v,i in enumerate(data):
        array[v] = i
        
    gl.glUniformMatrix4fv(location, count, transpose,  &array[0])
    
    free(array)

def glUseProgram(program):
    gl.glUseProgram(program)

def glValidateProgram(program):
    gl.glValidateProgram(program)

def glVertexAttrib1d(index, x):
    gl.glVertexAttrib1d(index, x)

def glVertexAttrib1dv(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib1dv(index,  v1)

def glVertexAttrib1f(index, x):
    gl.glVertexAttrib1f(index, x)

def glVertexAttrib1fv(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib1fv(index,  v1)

def glVertexAttrib1s(index, x):
    gl.glVertexAttrib1s(index, x)

def glVertexAttrib1sv(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib1sv(index,  v1)

def glVertexAttrib2d(index, x, y):
    gl.glVertexAttrib2d(index, x, y)

def glVertexAttrib2dv(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib2dv(index,  v1)

def glVertexAttrib2f(index, x, y):
    gl.glVertexAttrib2f(index, x, y)

def glVertexAttrib2fv(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib2fv(index,  v1)

def glVertexAttrib2s(index, x, y):
    gl.glVertexAttrib2s(index, x, y)

def glVertexAttrib2sv(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib2sv(index,  v1)

def glVertexAttrib3d(index, x, y, z):
    gl.glVertexAttrib3d(index, x, y, z)

def glVertexAttrib3dv(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib3dv(index,  v1)

def glVertexAttrib3f(index, x, y, z):
    gl.glVertexAttrib3f(index, x, y, z)

def glVertexAttrib3fv(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib3fv(index,  v1)

def glVertexAttrib3s(index, x, y, z):
    gl.glVertexAttrib3s(index, x, y, z)

def glVertexAttrib3sv(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib3sv(index,  v1)

def glVertexAttrib4Nbv(index, signed char v):
    cdef signed char* v1 = &v
    gl.glVertexAttrib4Nbv(index,  v1)

def glVertexAttrib4Niv(index, int v):
    cdef int* v1 = &v
    gl.glVertexAttrib4Niv(index,  v1)

def glVertexAttrib4Nsv(index, short v): 
    cdef short* v1 = &v
    gl.glVertexAttrib4Nsv(index,  v1)

def glVertexAttrib4Nub(index, x, y, z, w):
    gl.glVertexAttrib4Nub(index, x, y, z, w)

def glVertexAttrib4Nubv(index, unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glVertexAttrib4Nubv(index,  v1)

def glVertexAttrib4Nuiv(index, unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glVertexAttrib4Nuiv(index, v1)

def glVertexAttrib4Nusv(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttrib4Nusv(index, v1)

def glVertexAttrib4bv(index, signed char v):
    cdef signed char* v1 = &v
    gl.glVertexAttrib4bv(index,  v1)

def glVertexAttrib4d(index, x, y, z, w):
    gl.glVertexAttrib4d(index, x, y, z, w)

def glVertexAttrib4dv(index, double v):
    cdef double* v1 = &v
    gl.glVertexAttrib4dv(index,  v1)

def glVertexAttrib4f(index, x, y, z, w):
    gl.glVertexAttrib4f(index, x, y, z, w)

def glVertexAttrib4fv(index, float v):
    cdef float* v1 = &v
    gl.glVertexAttrib4fv(index,  v1)

def glVertexAttrib4iv(index, int v):
    cdef int* v1 = &v
    gl.glVertexAttrib4iv(index,  v1)

def glVertexAttrib4s(index, x, y, z, w):
    gl.glVertexAttrib4s(index, x, y, z, w)

def glVertexAttrib4sv(index, short v):
    cdef short* v1 = &v
    gl.glVertexAttrib4sv(index,  v1)

def glVertexAttrib4ubv(index, unsigned char v):
    cdef unsigned char* v1 = &v
    gl.glVertexAttrib4ubv(index,  v1)

def glVertexAttrib4uiv(index, unsigned int v):
    cdef unsigned int* v1 = &v
    gl.glVertexAttrib4uiv(index, v1)

def glVertexAttrib4usv(index, unsigned short v):
    cdef unsigned short* v1 = &v
    gl.glVertexAttrib4usv(index, v1)

def glVertexAttribPointer(index, size, type, normalized, stride, pointer):
    gl.glVertexAttribPointer(index, size, type, normalized, stride, <void*>pointer)

#GL_VERSION_2_1

GL_VERSION_2_1 = gl.GL_VERSION_2_1

GL_CURRENT_RASTER_SECONDARY_COLOR = gl.GL_CURRENT_RASTER_SECONDARY_COLOR
GL_PIXEL_PACK_BUFFER = gl.GL_PIXEL_PACK_BUFFER
GL_PIXEL_UNPACK_BUFFER = gl.GL_PIXEL_UNPACK_BUFFER
GL_PIXEL_PACK_BUFFER_BINDING = gl.GL_PIXEL_PACK_BUFFER_BINDING
GL_PIXEL_UNPACK_BUFFER_BINDING = gl.GL_PIXEL_UNPACK_BUFFER_BINDING
GL_FLOAT_MAT2x3 = gl.GL_FLOAT_MAT2x3
GL_FLOAT_MAT2x4 = gl.GL_FLOAT_MAT2x4
GL_FLOAT_MAT3x2 = gl.GL_FLOAT_MAT3x2
GL_FLOAT_MAT3x4 = gl.GL_FLOAT_MAT3x4
GL_FLOAT_MAT4x2 = gl.GL_FLOAT_MAT4x2
GL_FLOAT_MAT4x3 = gl.GL_FLOAT_MAT4x3
GL_SRGB = gl.GL_SRGB
GL_SRGB8 = gl.GL_SRGB8
GL_SRGB_ALPHA = gl.GL_SRGB_ALPHA
GL_SRGB8_ALPHA8 = gl.GL_SRGB8_ALPHA8
GL_SLUMINANCE_ALPHA = gl.GL_SLUMINANCE_ALPHA
GL_SLUMINANCE8_ALPHA8 = gl.GL_SLUMINANCE8_ALPHA8
GL_SLUMINANCE = gl.GL_SLUMINANCE
GL_SLUMINANCE8 = gl.GL_SLUMINANCE8
GL_COMPRESSED_SRGB = gl.GL_COMPRESSED_SRGB
GL_COMPRESSED_SRGB_ALPHA = gl.GL_COMPRESSED_SRGB_ALPHA
GL_COMPRESSED_SLUMINANCE = gl.GL_COMPRESSED_SLUMINANCE
GL_COMPRESSED_SLUMINANCE_ALPHA = gl.GL_COMPRESSED_SLUMINANCE_ALPHA

def glUniformMatrix2x3fv(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix2x3fv(location, count, transpose, value1)

def glUniformMatrix2x4fv(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix2x4fv(location, count, transpose, value1)

def glUniformMatrix3x2fv(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix3x2fv(location, count, transpose, value1)

def glUniformMatrix3x4fv(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix3x4fv(location, count, transpose, value1)

def glUniformMatrix4x2fv(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix4x2fv(location, count, transpose, value1)

def glUniformMatrix4x3fv(location, count, transpose, float value):
    cdef float* value1 = &value
    gl.glUniformMatrix4x3fv(location, count, transpose, value1)

#GL_VERSION_3_0

GL_VERSION_3_0 = gl.GL_VERSION_3_0

GL_MAX_CLIP_DISTANCES = gl.GL_MAX_CLIP_DISTANCES
GL_CLIP_DISTANCE5 = gl.GL_CLIP_DISTANCE5
GL_CLIP_DISTANCE1 = gl.GL_CLIP_DISTANCE1
GL_CLIP_DISTANCE3 = gl.GL_CLIP_DISTANCE3
GL_COMPARE_REF_TO_TEXTURE = gl.GL_COMPARE_REF_TO_TEXTURE
GL_CLIP_DISTANCE0 = gl.GL_CLIP_DISTANCE0
GL_CLIP_DISTANCE4 = gl.GL_CLIP_DISTANCE4
GL_CLIP_DISTANCE2 = gl.GL_CLIP_DISTANCE2
GL_MAX_VARYING_COMPONENTS = gl.GL_MAX_VARYING_COMPONENTS
GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = gl.GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
GL_MAJOR_VERSION = gl.GL_MAJOR_VERSION
GL_MINOR_VERSION = gl.GL_MINOR_VERSION
GL_NUM_EXTENSIONS = gl.GL_NUM_EXTENSIONS
GL_CONTEXT_FLAGS = gl.GL_CONTEXT_FLAGS
GL_DEPTH_BUFFER = gl.GL_DEPTH_BUFFER
GL_STENCIL_BUFFER = gl.GL_STENCIL_BUFFER
GL_COMPRESSED_RED = gl.GL_COMPRESSED_RED
GL_COMPRESSED_RG = gl.GL_COMPRESSED_RG
GL_RGBA32F = gl.GL_RGBA32F
GL_RGB32F = gl.GL_RGB32F
GL_RGBA16F = gl.GL_RGBA16F
GL_RGB16F = gl.GL_RGB16F
GL_VERTEX_ATTRIB_ARRAY_INTEGER = gl.GL_VERTEX_ATTRIB_ARRAY_INTEGER
GL_MAX_ARRAY_TEXTURE_LAYERS = gl.GL_MAX_ARRAY_TEXTURE_LAYERS
GL_MIN_PROGRAM_TEXEL_OFFSET = gl.GL_MIN_PROGRAM_TEXEL_OFFSET
GL_MAX_PROGRAM_TEXEL_OFFSET = gl.GL_MAX_PROGRAM_TEXEL_OFFSET
GL_CLAMP_VERTEX_COLOR = gl.GL_CLAMP_VERTEX_COLOR
GL_CLAMP_FRAGMENT_COLOR = gl.GL_CLAMP_FRAGMENT_COLOR
GL_CLAMP_READ_COLOR = gl.GL_CLAMP_READ_COLOR
GL_FIXED_ONLY = gl.GL_FIXED_ONLY
GL_TEXTURE_RED_TYPE = gl.GL_TEXTURE_RED_TYPE
GL_TEXTURE_GREEN_TYPE = gl.GL_TEXTURE_GREEN_TYPE
GL_TEXTURE_BLUE_TYPE = gl.GL_TEXTURE_BLUE_TYPE
GL_TEXTURE_ALPHA_TYPE = gl.GL_TEXTURE_ALPHA_TYPE
GL_TEXTURE_LUMINANCE_TYPE = gl.GL_TEXTURE_LUMINANCE_TYPE
GL_TEXTURE_INTENSITY_TYPE = gl.GL_TEXTURE_INTENSITY_TYPE
GL_TEXTURE_DEPTH_TYPE = gl.GL_TEXTURE_DEPTH_TYPE
GL_UNSIGNED_NORMALIZED = gl.GL_UNSIGNED_NORMALIZED
GL_TEXTURE_1D_ARRAY = gl.GL_TEXTURE_1D_ARRAY
GL_PROXY_TEXTURE_1D_ARRAY = gl.GL_PROXY_TEXTURE_1D_ARRAY
GL_TEXTURE_2D_ARRAY = gl.GL_TEXTURE_2D_ARRAY
GL_PROXY_TEXTURE_2D_ARRAY = gl.GL_PROXY_TEXTURE_2D_ARRAY
GL_TEXTURE_BINDING_1D_ARRAY = gl.GL_TEXTURE_BINDING_1D_ARRAY
GL_TEXTURE_BINDING_2D_ARRAY = gl.GL_TEXTURE_BINDING_2D_ARRAY
GL_R11F_G11F_B10F = gl.GL_R11F_G11F_B10F
GL_UNSIGNED_INT_10F_11F_11F_REV = gl.GL_UNSIGNED_INT_10F_11F_11F_REV
GL_RGB9_E5 = gl.GL_RGB9_E5
GL_UNSIGNED_INT_5_9_9_9_REV = gl.GL_UNSIGNED_INT_5_9_9_9_REV
GL_TEXTURE_SHARED_SIZE = gl.GL_TEXTURE_SHARED_SIZE
GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = gl.GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
GL_TRANSFORM_FEEDBACK_BUFFER_MODE = gl.GL_TRANSFORM_FEEDBACK_BUFFER_MODE
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = gl.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
GL_TRANSFORM_FEEDBACK_VARYINGS = gl.GL_TRANSFORM_FEEDBACK_VARYINGS
GL_TRANSFORM_FEEDBACK_BUFFER_START = gl.GL_TRANSFORM_FEEDBACK_BUFFER_START
GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = gl.GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
GL_PRIMITIVES_GENERATED = gl.GL_PRIMITIVES_GENERATED
GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = gl.GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
GL_RASTERIZER_DISCARD = gl.GL_RASTERIZER_DISCARD
GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = gl.GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = gl.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
GL_INTERLEAVED_ATTRIBS = gl.GL_INTERLEAVED_ATTRIBS
GL_SEPARATE_ATTRIBS = gl.GL_SEPARATE_ATTRIBS
GL_TRANSFORM_FEEDBACK_BUFFER = gl.GL_TRANSFORM_FEEDBACK_BUFFER
GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = gl.GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
GL_RGBA32UI = gl.GL_RGBA32UI
GL_RGB32UI = gl.GL_RGB32UI
GL_RGBA16UI = gl.GL_RGBA16UI
GL_RGB16UI = gl.GL_RGB16UI
GL_RGBA8UI = gl.GL_RGBA8UI
GL_RGB8UI = gl.GL_RGB8UI
GL_RGBA32I = gl.GL_RGBA32I
GL_RGB32I = gl.GL_RGB32I
GL_RGBA16I = gl.GL_RGBA16I
GL_RGB16I = gl.GL_RGB16I
GL_RGBA8I = gl.GL_RGBA8I
GL_RGB8I = gl.GL_RGB8I
GL_RED_INTEGER = gl.GL_RED_INTEGER
GL_GREEN_INTEGER = gl.GL_GREEN_INTEGER
GL_BLUE_INTEGER = gl.GL_BLUE_INTEGER
GL_ALPHA_INTEGER = gl.GL_ALPHA_INTEGER
GL_RGB_INTEGER = gl.GL_RGB_INTEGER
GL_RGBA_INTEGER = gl.GL_RGBA_INTEGER
GL_BGR_INTEGER = gl.GL_BGR_INTEGER
GL_BGRA_INTEGER = gl.GL_BGRA_INTEGER
GL_SAMPLER_1D_ARRAY = gl.GL_SAMPLER_1D_ARRAY
GL_SAMPLER_2D_ARRAY = gl.GL_SAMPLER_2D_ARRAY
GL_SAMPLER_1D_ARRAY_SHADOW = gl.GL_SAMPLER_1D_ARRAY_SHADOW
GL_SAMPLER_2D_ARRAY_SHADOW = gl.GL_SAMPLER_2D_ARRAY_SHADOW
GL_SAMPLER_CUBE_SHADOW = gl.GL_SAMPLER_CUBE_SHADOW
GL_UNSIGNED_INT_VEC2 = gl.GL_UNSIGNED_INT_VEC2
GL_UNSIGNED_INT_VEC3 = gl.GL_UNSIGNED_INT_VEC3
GL_UNSIGNED_INT_VEC4 = gl.GL_UNSIGNED_INT_VEC4
GL_INT_SAMPLER_1D = gl.GL_INT_SAMPLER_1D
GL_INT_SAMPLER_2D = gl.GL_INT_SAMPLER_2D
GL_INT_SAMPLER_3D = gl.GL_INT_SAMPLER_3D
GL_INT_SAMPLER_CUBE = gl.GL_INT_SAMPLER_CUBE
GL_INT_SAMPLER_1D_ARRAY = gl.GL_INT_SAMPLER_1D_ARRAY
GL_INT_SAMPLER_2D_ARRAY = gl.GL_INT_SAMPLER_2D_ARRAY
GL_UNSIGNED_INT_SAMPLER_1D = gl.GL_UNSIGNED_INT_SAMPLER_1D
GL_UNSIGNED_INT_SAMPLER_2D = gl.GL_UNSIGNED_INT_SAMPLER_2D
GL_UNSIGNED_INT_SAMPLER_3D = gl.GL_UNSIGNED_INT_SAMPLER_3D
GL_UNSIGNED_INT_SAMPLER_CUBE = gl.GL_UNSIGNED_INT_SAMPLER_CUBE
GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = gl.GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = gl.GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
GL_QUERY_WAIT = gl.GL_QUERY_WAIT
GL_QUERY_NO_WAIT = gl.GL_QUERY_NO_WAIT
GL_QUERY_BY_REGION_WAIT = gl.GL_QUERY_BY_REGION_WAIT
GL_QUERY_BY_REGION_NO_WAIT = gl.GL_QUERY_BY_REGION_NO_WAIT

def glBeginConditionalRender(A, B):
    gl.glBeginConditionalRender(A, B)

def glBeginTransformFeedback(A):
    gl.glBeginTransformFeedback(A)

def glBindFragDataLocation(A, B, C):
    gl.glBindFragDataLocation(A, B, C)

def glClampColor(A, B):
    gl.glClampColor(A, B)

def glClearBufferfi(A, B, C, D):
    gl.glClearBufferfi(A, B, C, D)

def glClearBufferfv(A, B, float C):
    cdef float* C1 = &C
    gl.glClearBufferfv(A, B, C1)

def glClearBufferiv(A, B, int C):
    cdef int* C1 = &C
    gl.glClearBufferiv(A, B, C1)

def glClearBufferuiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glClearBufferuiv(A, B, C1)

def glColorMaski(A, B, C, D, E):
    gl.glColorMaski(A, B, C, D, E)

def glDisablei(A, B):
    gl.glDisablei(A, B)

def glEnablei(A, B):
    gl.glEnablei(A, B)

def glEndConditionalRender():
    gl.glEndConditionalRender()

def glEndTransformFeedback():
    gl.glEndTransformFeedback()

def glGetBooleani_v(A, B, bint C):
    cdef bint* C1 = &C
    gl.glGetBooleani_v(A, B, C1)

def glGetFragDataLocation(A, B):
    cdef char* B1 = B
    return gl.glGetFragDataLocation(A, B1)

def  glGetStringi(A, B):
    return gl. glGetStringi(A, B)

def glGetTexParameterIiv(A, B, int C):
    cdef int* C1 = &C
    gl.glGetTexParameterIiv(A, B, C1)

def glGetTexParameterIuiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glGetTexParameterIuiv(A, B, C1)

def glGetTransformFeedbackVarying(A, B, C, int D, int E, unsigned int F, G):
    cdef int* D1 = &D
    cdef int* E1 = &E
    cdef unsigned int* F1 = &F
    cdef char* G1 = G
    gl.glGetTransformFeedbackVarying(A, B, C, D1, E1, F1, G1)

def glGetUniformuiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glGetUniformuiv(A, B, C1)

def glGetVertexAttribIiv(A, B, int C):
    cdef int* C1 = &C
    gl.glGetVertexAttribIiv(A, B, C1)

def glGetVertexAttribIuiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glGetVertexAttribIuiv(A, B, C1)

def glIsEnabledi(A, B):
    return gl.glIsEnabledi(A, B)

def glTexParameterIiv(A, B, int C):
    cdef int* C1 = &C
    gl.glTexParameterIiv(A, B, C1)

def glTexParameterIuiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glTexParameterIuiv(A, B, C1)

def glTransformFeedbackVaryings(A, B, C, D):
    cdef char* C1 = C
    gl.glTransformFeedbackVaryings(A, B, &C1, D)

def glUniform1ui(A, B):
    gl.glUniform1ui(A, B)

def glUniform1uiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glUniform1uiv(A, B, C1)

def glUniform2ui(A, B, C):
    gl.glUniform2ui(A, B, C)

def glUniform2uiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glUniform2uiv(A, B, C1)

def glUniform3ui(A, B, C, D):
    gl.glUniform3ui(A, B, C, D)

def glUniform3uiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glUniform3uiv(A, B, C1)

def glUniform4ui(A, B, C, D, E):
    gl.glUniform4ui(A, B, C, D, E)

def glUniform4uiv(A, B, unsigned int C):
    cdef unsigned int* C1 = &C
    gl.glUniform4uiv(A, B, C1)

def glVertexAttribI1i(A, B):
    gl.glVertexAttribI1i(A, B)

def glVertexAttribI1iv(A, int B):
    cdef int* B1 = &B
    gl.glVertexAttribI1iv(A, B1)

def glVertexAttribI1ui(A, B):
    gl.glVertexAttribI1ui(A, B)

def glVertexAttribI1uiv(A, unsigned int B):
    cdef unsigned int* B1 = &B
    gl.glVertexAttribI1uiv(A, B1)

def glVertexAttribI2i(A, B, C):
    gl.glVertexAttribI2i(A, B, C)

def glVertexAttribI2iv(A, int B):
    cdef int* B1 = &B
    gl.glVertexAttribI2iv(A, B1)

def glVertexAttribI2ui(A, B, C):
    gl.glVertexAttribI2ui(A, B, C)

def glVertexAttribI2uiv(A, unsigned int B):
    cdef unsigned int* B1 = &B
    gl.glVertexAttribI2uiv(A, B1)

def glVertexAttribI3i(A, B, C, D):
    gl.glVertexAttribI3i(A, B, C, D)

def glVertexAttribI3iv(A, int B):
    cdef int* B1 = &B
    gl.glVertexAttribI3iv(A, B1)

def glVertexAttribI3ui(A, B, C, D):
    gl.glVertexAttribI3ui(A, B, C, D)

def glVertexAttribI3uiv(A, unsigned int B):
    cdef unsigned int* B1 = &B
    gl.glVertexAttribI3uiv(A, B1)

def glVertexAttribI4bv(A, signed char B):
    cdef signed char* B1 = &B
    gl.glVertexAttribI4bv(A, B1)

def glVertexAttribI4i(A, B, C, D, E):
    gl.glVertexAttribI4i(A, B, C, D, E)

def glVertexAttribI4iv(A, int B):
    cdef int* B1 = &B
    gl.glVertexAttribI4iv(A, B1)

def glVertexAttribI4sv(A, short B):
    cdef short* B1 = &B
    gl.glVertexAttribI4sv(A, B1)

def glVertexAttribI4ubv(A, unsigned char B):
    cdef unsigned char* B1 = &B
    gl.glVertexAttribI4ubv(A, B1)

def glVertexAttribI4ui(A, B, C, D, E):
    gl.glVertexAttribI4ui(A, B, C, D, E)

def glVertexAttribI4uiv(A, unsigned int B):
    cdef unsigned int* B1 = &B
    gl.glVertexAttribI4uiv(A, B1)

def glVertexAttribI4usv(A, unsigned short B):
    cdef unsigned short* B1 = &B
    gl.glVertexAttribI4usv(A, B1)

def glVertexAttribIPointer(A, B, C, D, E):
    gl.glVertexAttribIPointer(A, B, C, D, <void*>E)

#GL_VERSION_3_1

GL_VERSION_3_1 = gl.GL_VERSION_3_1

GL_TEXTURE_RECTANGLE = gl.GL_TEXTURE_RECTANGLE
GL_TEXTURE_BINDING_RECTANGLE = gl.GL_TEXTURE_BINDING_RECTANGLE
GL_PROXY_TEXTURE_RECTANGLE = gl.GL_PROXY_TEXTURE_RECTANGLE
GL_MAX_RECTANGLE_TEXTURE_SIZE = gl.GL_MAX_RECTANGLE_TEXTURE_SIZE
GL_SAMPLER_2D_RECT = gl.GL_SAMPLER_2D_RECT
GL_SAMPLER_2D_RECT_SHADOW = gl.GL_SAMPLER_2D_RECT_SHADOW
GL_TEXTURE_BUFFER = gl.GL_TEXTURE_BUFFER
GL_MAX_TEXTURE_BUFFER_SIZE = gl.GL_MAX_TEXTURE_BUFFER_SIZE
GL_TEXTURE_BINDING_BUFFER = gl.GL_TEXTURE_BINDING_BUFFER
GL_TEXTURE_BUFFER_DATA_STORE_BINDING = gl.GL_TEXTURE_BUFFER_DATA_STORE_BINDING
GL_TEXTURE_BUFFER_FORMAT = gl.GL_TEXTURE_BUFFER_FORMAT
GL_SAMPLER_BUFFER = gl.GL_SAMPLER_BUFFER
GL_INT_SAMPLER_2D_RECT = gl.GL_INT_SAMPLER_2D_RECT
GL_INT_SAMPLER_BUFFER = gl.GL_INT_SAMPLER_BUFFER
GL_UNSIGNED_INT_SAMPLER_2D_RECT = gl.GL_UNSIGNED_INT_SAMPLER_2D_RECT
GL_UNSIGNED_INT_SAMPLER_BUFFER = gl.GL_UNSIGNED_INT_SAMPLER_BUFFER
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
GL_PRIMITIVE_RESTART = gl.GL_PRIMITIVE_RESTART
GL_PRIMITIVE_RESTART_INDEX = gl.GL_PRIMITIVE_RESTART_INDEX
GL_BUFFER_ACCESS_FLAGS = gl.GL_BUFFER_ACCESS_FLAGS
GL_BUFFER_MAP_LENGTH = gl.GL_BUFFER_MAP_LENGTH
GL_BUFFER_MAP_OFFSET = gl.GL_BUFFER_MAP_OFFSET

def glDrawArraysInstanced(A, B, C, D):
    gl.glDrawArraysInstanced(A, B, C, D)

def glDrawElementsInstanced(A, B, C, D, E):
    gl.glDrawElementsInstanced(A, B, C, <void*>D, E)

def glPrimitiveRestartIndex(A):
    gl.glPrimitiveRestartIndex(A)

def glTexBuffer(A, B, C):
    gl.glTexBuffer(A, B, C)

#GL_VERSION_3_2

GL_VERSION_3_2 = gl.GL_VERSION_3_2

GL_CONTEXT_CORE_PROFILE_BIT = gl.GL_CONTEXT_CORE_PROFILE_BIT
GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = gl.GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
GL_LINES_ADJACENCY = gl.GL_LINES_ADJACENCY
GL_LINE_STRIP_ADJACENCY = gl.GL_LINE_STRIP_ADJACENCY
GL_TRIANGLES_ADJACENCY = gl.GL_TRIANGLES_ADJACENCY
GL_TRIANGLE_STRIP_ADJACENCY = gl.GL_TRIANGLE_STRIP_ADJACENCY
GL_PROGRAM_POINT_SIZE = gl.GL_PROGRAM_POINT_SIZE
GL_GEOMETRY_VERTICES_OUT = gl.GL_GEOMETRY_VERTICES_OUT
GL_GEOMETRY_INPUT_TYPE = gl.GL_GEOMETRY_INPUT_TYPE
GL_GEOMETRY_OUTPUT_TYPE = gl.GL_GEOMETRY_OUTPUT_TYPE
GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = gl.GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
GL_FRAMEBUFFER_ATTACHMENT_LAYERED = gl.GL_FRAMEBUFFER_ATTACHMENT_LAYERED
GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = gl.GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
GL_GEOMETRY_SHADER = gl.GL_GEOMETRY_SHADER
GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = gl.GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
GL_MAX_GEOMETRY_OUTPUT_VERTICES = gl.GL_MAX_GEOMETRY_OUTPUT_VERTICES
GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = gl.GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
GL_MAX_VERTEX_OUTPUT_COMPONENTS = gl.GL_MAX_VERTEX_OUTPUT_COMPONENTS
GL_MAX_GEOMETRY_INPUT_COMPONENTS = gl.GL_MAX_GEOMETRY_INPUT_COMPONENTS
GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = gl.GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
GL_MAX_FRAGMENT_INPUT_COMPONENTS = gl.GL_MAX_FRAGMENT_INPUT_COMPONENTS
GL_CONTEXT_PROFILE_MASK = gl.GL_CONTEXT_PROFILE_MASK

def glFramebufferTexture(A, B, C, D):
    gl.glFramebufferTexture(A, B, C, D)

def glGetBufferParameteri64v(A, B, signed long long C):
    cdef signed long long* C1 = &C
    gl.glGetBufferParameteri64v(A, B, C1)

def glGetInteger64i_v(A, B, signed long long C):
    cdef signed long long* C1 = &C
    gl.glGetInteger64i_v(A, B, C1)

#GL_VERSION_3_3

GL_VERSION_3_3 = gl.GL_VERSION_3_3

GL_VERTEX_ATTRIB_ARRAY_DIVISOR = gl.GL_VERTEX_ATTRIB_ARRAY_DIVISOR
GL_ANY_SAMPLES_PASSED = gl.GL_ANY_SAMPLES_PASSED
GL_TEXTURE_SWIZZLE_R = gl.GL_TEXTURE_SWIZZLE_R
GL_TEXTURE_SWIZZLE_G = gl.GL_TEXTURE_SWIZZLE_G
GL_TEXTURE_SWIZZLE_B = gl.GL_TEXTURE_SWIZZLE_B
GL_TEXTURE_SWIZZLE_A = gl.GL_TEXTURE_SWIZZLE_A
GL_TEXTURE_SWIZZLE_RGBA = gl.GL_TEXTURE_SWIZZLE_RGBA
GL_RGB10_A2UI = gl.GL_RGB10_A2UI

def glVertexAttribDivisor(index, divisor):
    gl.glVertexAttribDivisor(index, divisor)

#GL_VERSION_4_0

GL_VERSION_4_0 = gl.GL_VERSION_4_0

GL_GEOMETRY_SHADER_INVOCATIONS = gl.GL_GEOMETRY_SHADER_INVOCATIONS
GL_SAMPLE_SHADING = gl.GL_SAMPLE_SHADING
GL_MIN_SAMPLE_SHADING_VALUE = gl.GL_MIN_SAMPLE_SHADING_VALUE
GL_MAX_GEOMETRY_SHADER_INVOCATIONS = gl.GL_MAX_GEOMETRY_SHADER_INVOCATIONS
GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = gl.GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = gl.GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = gl.GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = gl.GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = gl.GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS = gl.GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS
GL_TEXTURE_CUBE_MAP_ARRAY = gl.GL_TEXTURE_CUBE_MAP_ARRAY
GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = gl.GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = gl.GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
GL_SAMPLER_CUBE_MAP_ARRAY = gl.GL_SAMPLER_CUBE_MAP_ARRAY
GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = gl.GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
GL_INT_SAMPLER_CUBE_MAP_ARRAY = gl.GL_INT_SAMPLER_CUBE_MAP_ARRAY
GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = gl.GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY

def glBlendEquationSeparatei(buf, modeRGB, modeAlpha):
    gl.glBlendEquationSeparatei(buf, modeRGB, modeAlpha)

def glBlendEquationi(buf, mode):
    gl.glBlendEquationi(buf, mode)

def glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha):
    gl.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha)

def glBlendFunci(buf, src, dst):
    gl.glBlendFunci(buf, src, dst)

def glMinSampleShading(value):
    gl.glMinSampleShading(value)

#GL_VERSION_4_1

GL_VERSION_4_1 = gl.GL_VERSION_4_1

#GL_VERSION_4_2

GL_VERSION_4_2 = gl.GL_VERSION_4_2