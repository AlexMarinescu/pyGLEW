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

#GL_INTEL_parallel_arrays

GL_INTEL_parallel_arrays = gl.GL_INTEL_parallel_arrays

GL_PARALLEL_ARRAYS_INTEL = gl.GL_PARALLEL_ARRAYS_INTEL
GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL = gl.GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL
GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL = gl.GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL
GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL = gl.GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL
GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL = gl.GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL

def glColorPointervINTEL(size, type,  pointer):
    cdef void* t = <void*>pointer
    gl.glColorPointervINTEL(size, type,  &t)

def glNormalPointervINTEL(type,  pointer):
    cdef void* t = <void*>pointer
    gl.glNormalPointervINTEL(type,  &t)

def glTexCoordPointervINTEL(size, type,  pointer):
    cdef void* t = <void*>pointer
    gl.glTexCoordPointervINTEL(size, type,  &t)

def glVertexPointervINTEL(size, type,  pointer):
    cdef void* t = <void*>pointer
    gl.glVertexPointervINTEL(size, type,  &t)

#GL_INTEL_texture_scissor

GL_INTEL_texture_scissor = gl.GL_INTEL_texture_scissor

def glTexScissorFuncINTEL(target, lfunc, hfunc):
    gl.glTexScissorFuncINTEL(target, lfunc, hfunc)

def glTexScissorINTEL(target, tlow, thigh):
    gl.glTexScissorINTEL(target, tlow, thigh)