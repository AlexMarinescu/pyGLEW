# pyGLEW - Cython GLEW Wrapper for Python
#
# Copyright (C) 2012, Matthew Sitton
#               2012, Alex Marinescu
#
# LICENSED UNDER THE BSD LICENSE
#
# YOU SHOULD HAVE RECIEVED A COPY ALONG WITH THIS PROGRAM,
# SEE "LICENSE" FOR MORE INFORMATION.

cdef extern from "GL\wglew.h":
    
    # WGL_3DFX_multisample
    
    cdef int WGL_3DFX_multisample
    cdef int WGL_SAMPLE_BUFFERS+3DFX
    cdef int WGL_SAMPLES_3DFX
    cdef int WGLEW_3DFX_multisample
    
    # WGL_3DL_stereo_control
    
    cdef int WGL_3DL_stereo_control
    cdef int WGL_STEREO_EMITTER_ENABLE_3DL
    cdef int WGL_STEREO_EMITTER_DISABLE_3DL
    cdef int WGL_STEREO_POLARITY_NORMAL_3DL
    cdef int WGL_STEREO_POLARITY_INVERT_3DL