# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mike/mygame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mike/mygame

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/mike/mygame/CMakeFiles /home/mike/mygame//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/mike/mygame/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named asciigfx

# Build rule for target.
asciigfx: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 asciigfx
.PHONY : asciigfx

# fast build rule for target.
asciigfx/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/build
.PHONY : asciigfx/fast

#=============================================================================
# Target rules for targets named main

# Build rule for target.
main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 main
.PHONY : main

# fast build rule for target.
main/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/build
.PHONY : main/fast

gameloop.o: gameloop.cpp.o
.PHONY : gameloop.o

# target to build an object file
gameloop.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/gameloop.cpp.o
.PHONY : gameloop.cpp.o

gameloop.i: gameloop.cpp.i
.PHONY : gameloop.i

# target to preprocess a source file
gameloop.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/gameloop.cpp.i
.PHONY : gameloop.cpp.i

gameloop.s: gameloop.cpp.s
.PHONY : gameloop.s

# target to generate assembly for a file
gameloop.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/gameloop.cpp.s
.PHONY : gameloop.cpp.s

gfx/gfx.o: gfx/gfx.cpp.o
.PHONY : gfx/gfx.o

# target to build an object file
gfx/gfx.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gfx.cpp.o
.PHONY : gfx/gfx.cpp.o

gfx/gfx.i: gfx/gfx.cpp.i
.PHONY : gfx/gfx.i

# target to preprocess a source file
gfx/gfx.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gfx.cpp.i
.PHONY : gfx/gfx.cpp.i

gfx/gfx.s: gfx/gfx.cpp.s
.PHONY : gfx/gfx.s

# target to generate assembly for a file
gfx/gfx.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gfx.cpp.s
.PHONY : gfx/gfx.cpp.s

gfx/gridarea.o: gfx/gridarea.cpp.o
.PHONY : gfx/gridarea.o

# target to build an object file
gfx/gridarea.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridarea.cpp.o
.PHONY : gfx/gridarea.cpp.o

gfx/gridarea.i: gfx/gridarea.cpp.i
.PHONY : gfx/gridarea.i

# target to preprocess a source file
gfx/gridarea.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridarea.cpp.i
.PHONY : gfx/gridarea.cpp.i

gfx/gridarea.s: gfx/gridarea.cpp.s
.PHONY : gfx/gridarea.s

# target to generate assembly for a file
gfx/gridarea.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridarea.cpp.s
.PHONY : gfx/gridarea.cpp.s

gfx/gridfont.o: gfx/gridfont.cpp.o
.PHONY : gfx/gridfont.o

# target to build an object file
gfx/gridfont.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridfont.cpp.o
.PHONY : gfx/gridfont.cpp.o

gfx/gridfont.i: gfx/gridfont.cpp.i
.PHONY : gfx/gridfont.i

# target to preprocess a source file
gfx/gridfont.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridfont.cpp.i
.PHONY : gfx/gridfont.cpp.i

gfx/gridfont.s: gfx/gridfont.cpp.s
.PHONY : gfx/gridfont.s

# target to generate assembly for a file
gfx/gridfont.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridfont.cpp.s
.PHONY : gfx/gridfont.cpp.s

gfx/gridmenu.o: gfx/gridmenu.cpp.o
.PHONY : gfx/gridmenu.o

# target to build an object file
gfx/gridmenu.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridmenu.cpp.o
.PHONY : gfx/gridmenu.cpp.o

gfx/gridmenu.i: gfx/gridmenu.cpp.i
.PHONY : gfx/gridmenu.i

# target to preprocess a source file
gfx/gridmenu.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridmenu.cpp.i
.PHONY : gfx/gridmenu.cpp.i

gfx/gridmenu.s: gfx/gridmenu.cpp.s
.PHONY : gfx/gridmenu.s

# target to generate assembly for a file
gfx/gridmenu.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/gridmenu.cpp.s
.PHONY : gfx/gridmenu.cpp.s

gfx/joystick.o: gfx/joystick.cpp.o
.PHONY : gfx/joystick.o

# target to build an object file
gfx/joystick.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/joystick.cpp.o
.PHONY : gfx/joystick.cpp.o

gfx/joystick.i: gfx/joystick.cpp.i
.PHONY : gfx/joystick.i

# target to preprocess a source file
gfx/joystick.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/joystick.cpp.i
.PHONY : gfx/joystick.cpp.i

gfx/joystick.s: gfx/joystick.cpp.s
.PHONY : gfx/joystick.s

# target to generate assembly for a file
gfx/joystick.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/joystick.cpp.s
.PHONY : gfx/joystick.cpp.s

gfx/math2d.o: gfx/math2d.cpp.o
.PHONY : gfx/math2d.o

# target to build an object file
gfx/math2d.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/math2d.cpp.o
.PHONY : gfx/math2d.cpp.o

gfx/math2d.i: gfx/math2d.cpp.i
.PHONY : gfx/math2d.i

# target to preprocess a source file
gfx/math2d.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/math2d.cpp.i
.PHONY : gfx/math2d.cpp.i

gfx/math2d.s: gfx/math2d.cpp.s
.PHONY : gfx/math2d.s

# target to generate assembly for a file
gfx/math2d.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/math2d.cpp.s
.PHONY : gfx/math2d.cpp.s

gfx/mouse.o: gfx/mouse.cpp.o
.PHONY : gfx/mouse.o

# target to build an object file
gfx/mouse.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/mouse.cpp.o
.PHONY : gfx/mouse.cpp.o

gfx/mouse.i: gfx/mouse.cpp.i
.PHONY : gfx/mouse.i

# target to preprocess a source file
gfx/mouse.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/mouse.cpp.i
.PHONY : gfx/mouse.cpp.i

gfx/mouse.s: gfx/mouse.cpp.s
.PHONY : gfx/mouse.s

# target to generate assembly for a file
gfx/mouse.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/mouse.cpp.s
.PHONY : gfx/mouse.cpp.s

gfx/polygon.o: gfx/polygon.cpp.o
.PHONY : gfx/polygon.o

# target to build an object file
gfx/polygon.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/polygon.cpp.o
.PHONY : gfx/polygon.cpp.o

gfx/polygon.i: gfx/polygon.cpp.i
.PHONY : gfx/polygon.i

# target to preprocess a source file
gfx/polygon.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/polygon.cpp.i
.PHONY : gfx/polygon.cpp.i

gfx/polygon.s: gfx/polygon.cpp.s
.PHONY : gfx/polygon.s

# target to generate assembly for a file
gfx/polygon.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/polygon.cpp.s
.PHONY : gfx/polygon.cpp.s

gfx/scrollarea.o: gfx/scrollarea.cpp.o
.PHONY : gfx/scrollarea.o

# target to build an object file
gfx/scrollarea.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/scrollarea.cpp.o
.PHONY : gfx/scrollarea.cpp.o

gfx/scrollarea.i: gfx/scrollarea.cpp.i
.PHONY : gfx/scrollarea.i

# target to preprocess a source file
gfx/scrollarea.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/scrollarea.cpp.i
.PHONY : gfx/scrollarea.cpp.i

gfx/scrollarea.s: gfx/scrollarea.cpp.s
.PHONY : gfx/scrollarea.s

# target to generate assembly for a file
gfx/scrollarea.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/scrollarea.cpp.s
.PHONY : gfx/scrollarea.cpp.s

gfx/sound.o: gfx/sound.cpp.o
.PHONY : gfx/sound.o

# target to build an object file
gfx/sound.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/sound.cpp.o
.PHONY : gfx/sound.cpp.o

gfx/sound.i: gfx/sound.cpp.i
.PHONY : gfx/sound.i

# target to preprocess a source file
gfx/sound.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/sound.cpp.i
.PHONY : gfx/sound.cpp.i

gfx/sound.s: gfx/sound.cpp.s
.PHONY : gfx/sound.s

# target to generate assembly for a file
gfx/sound.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/sound.cpp.s
.PHONY : gfx/sound.cpp.s

gfx/util.o: gfx/util.cpp.o
.PHONY : gfx/util.o

# target to build an object file
gfx/util.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/util.cpp.o
.PHONY : gfx/util.cpp.o

gfx/util.i: gfx/util.cpp.i
.PHONY : gfx/util.i

# target to preprocess a source file
gfx/util.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/util.cpp.i
.PHONY : gfx/util.cpp.i

gfx/util.s: gfx/util.cpp.s
.PHONY : gfx/util.s

# target to generate assembly for a file
gfx/util.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/asciigfx.dir/build.make CMakeFiles/asciigfx.dir/gfx/util.cpp.s
.PHONY : gfx/util.cpp.s

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.s
.PHONY : main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... asciigfx"
	@echo "... main"
	@echo "... gameloop.o"
	@echo "... gameloop.i"
	@echo "... gameloop.s"
	@echo "... gfx/gfx.o"
	@echo "... gfx/gfx.i"
	@echo "... gfx/gfx.s"
	@echo "... gfx/gridarea.o"
	@echo "... gfx/gridarea.i"
	@echo "... gfx/gridarea.s"
	@echo "... gfx/gridfont.o"
	@echo "... gfx/gridfont.i"
	@echo "... gfx/gridfont.s"
	@echo "... gfx/gridmenu.o"
	@echo "... gfx/gridmenu.i"
	@echo "... gfx/gridmenu.s"
	@echo "... gfx/joystick.o"
	@echo "... gfx/joystick.i"
	@echo "... gfx/joystick.s"
	@echo "... gfx/math2d.o"
	@echo "... gfx/math2d.i"
	@echo "... gfx/math2d.s"
	@echo "... gfx/mouse.o"
	@echo "... gfx/mouse.i"
	@echo "... gfx/mouse.s"
	@echo "... gfx/polygon.o"
	@echo "... gfx/polygon.i"
	@echo "... gfx/polygon.s"
	@echo "... gfx/scrollarea.o"
	@echo "... gfx/scrollarea.i"
	@echo "... gfx/scrollarea.s"
	@echo "... gfx/sound.o"
	@echo "... gfx/sound.i"
	@echo "... gfx/sound.s"
	@echo "... gfx/util.o"
	@echo "... gfx/util.i"
	@echo "... gfx/util.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

