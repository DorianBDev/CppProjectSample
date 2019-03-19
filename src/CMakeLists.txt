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

# get all sub directory <=> sub projects
file(GLOB SUB_PROJECTS_LIST RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}/" LIST_DIRECTORIES true 
	"*"
)

foreach(SUB_PROJECTS ${SUB_PROJECTS_LIST})
	if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${SUB_PROJECTS})
		add_subdirectory("${SUB_PROJECTS}")
	endif()
endforeach()