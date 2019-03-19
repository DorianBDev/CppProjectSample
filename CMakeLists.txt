############################################################################################
####																					####
####   CppProjetSample																	####
####   Copyright (C) 2018-2019  BACHELOT Dorian											####
####																					####
####   Permission is hereby granted, free of charge, to any person obtaining a copy		####
####   of this software and associated documentation files (the "Software"), to deal	####
####   in the Software without restriction, including without limitation the rights		####
####   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell		####
####   copies of the Software, and to permit persons to whom the Software is			####
####   furnished to do so, subject to the following conditions:							####
####   																					####
####   The above copyright notice and this permission notice shall be included in all	####
####   copies or substantial portions of the Software.									####
####   																					####
####   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR		####
####   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,			####
####   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE		####
####   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER			####
####   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,	####
####   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE	####
####   SOFTWARE.																		####
####																					####
####	See LICENSE file for more.														####
####																					####
############################################################################################


cmake_minimum_required(VERSION 3.0)

############################################################################
############################################################################
###########################   CONFIG   #####################################
############################################################################
############################################################################

# project name
project (Sample_core)																																					# project name

############################################################################
############################################################################
############################################################################
############################################################################
############################################################################

# cxx flag
set(CMAKE_BUILD_TYPE Debug)																																		# choose language en flags
set(CMAKE_CXX_STANDARD 14)
if (MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHsc")
else()
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
endif(MSVC)

# property for folders
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

add_subdirectory(src)

if (CMAKE_SIZEOF_VOID_P MATCHES 8) # if x64
		message("-- x64 configuration")
	else()													# if x86
		message("-- x86 configuration")
endif()