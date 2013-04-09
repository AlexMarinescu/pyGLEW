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

#GL_GREMEDY_frame_terminator

GL_GREMEDY_frame_terminator = gl.GL_GREMEDY_frame_terminator

def glFrameTerminatorGREMEDY():
    gl.glFrameTerminatorGREMEDY()

#GL_GREMEDY_string_marker

GL_GREMEDY_string_marker = gl.GL_GREMEDY_string_marker

def glStringMarkerGREMEDY(len,  string):
    gl.glStringMarkerGREMEDY(len,  <void*>string)