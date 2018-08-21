

# C/C++ Project Sample (with CMake)
This is a sample *C/C++* project that use CMake with a **in module** organization.

## Wiki

### Add dependencies
To add a dependency you simply need : 
(*If the dependency is a module/subproject/subdir you can jump to 3. directly.*)

 1. Add all dependency headers in *thirdparty/inc/*
 2. Add the dependency **shared or static** lib in the *lib/[x86 AND x64]/*
 3. Go to your targeted module/subproject/subdir folder in *src/[YOUR MODULE]/* and open the CMakeLists.txt
 4. Add the name of the dependency to this line : *set(TARGET_DEPENDENCIES "name_of_the_dependency_1;name_of_the_dependency_2;[THE NAME HERE]" CACHE STRING "List of others dependencies name." FORCE)*
 5. Rebuild the project with CMake

### Build
To build with CMake you need :

 1. Go to *build/[x86 OR x64]/*
 2. Call cmake ../../ -G [YOUR TARGETED GENERATORS/IDE X86 OR X64]

e.g. : Visual studio :
*cmake ../../ -G "Visual Studio 15 2017"* (for x86)
*cmake ../../ -G "Visual Studio 15 2017 Win64"* (for x64)

**call : *cmake --help for generators list.***

### Project Tree

    build/
    	|	- x86/
    	|	- x64/
		|  - .../
    inc/
    	|	- Module_A/
	    |	- Module_B/
	    |   - sharedHeaders.h
    src/
	    |	- Module_A/
	    |	- Module_B/
    thirdparty/
    	|	- inc/
    	|	- lib/
    	|		|	- x86/
    	|		|	- x64/

 - *build/* : where generate project with cmake
 - *inc/* : your project headers
 - *src/* : your project sources
 - *thirdparty/* : all dependencies

### Project organization
This sample project is organized in 'Module', each can be build separately. Each module need to have :

 1. His folder in *inc/*
 2. His folder in *src/*
 3. His *CMakeLists.txt* in *src/[YOUR MODULE NAME]/*

Each module can be configured in his *CMakeLists.txt*.

You can have *Shared Headers* in *inc/*.


### Add module/subproject/subdir
To add a module you need :

 1. Add folder in (name of the module) *inc/*
 2. Add folder in (name of the module) *src/*
 3. Add a *CMakeLists.txt* in *src/[YOUR MODULE NAME]/* (you can copy one *CMakeLists.txt* from another module and just change dependency list and target type (executable or library))

To configure you module you need to set the target type :

 Change this two lines : 
 
- *set(TARGET_TYPE "[YOUR TYPE]" CACHE STRING "Type of the target : EXE for executable and LIB:<type> for a library (<type> can be : SHARED or STATIC or MODULE)." FORCE)*
- set(TARGET_DEPENDENCIES "[YOUR DEPENDENCIES LIST]" CACHE STRING "List of others dependencies name." FORCE)
 
 [YOUR TYPE] can be :
 

 - *EXE* for create an executable.
 - *LIB:SHARED* for create a shared library.
 - *LIB:STATIC* for create a static library.

[YOUR DEPENDENCIES LIST] need to be like this : name_of_the_dependency_1;name_of_the_dependency_2... See the **Add dependencies** point for more.
**Write *NONE* if you have no dependencies**

### Compile for 32 or 64 bits

To compile for *32* or *64 bits* you need :

On windows :

 - Build your project for *Visual Studio [VERSION]* for *x86*
 - Build your project for *Visual Studio [VERSION] WIN64* for *x64*

On linux :

 - Build your project with CMake normaly for *x64*
 - Build your project with CMake with the options :
 *-DCMAKE_CXX_FLAGS=-m32 -DCMAKE_C_FLAGS=-m32* for *x86*

(for linux care you have already the package to compile c++ in 32bits, otherwise you need this two packages : *sudo apt-get install libc6-dev-i386* and *sudo apt-get install g++-7-multilib*
 
You already got two folder in the *build/* directory for *x64* and *x86*.

### Other

 - **If you want to add a file with Visual Studio, add it manually and not in VS !**
