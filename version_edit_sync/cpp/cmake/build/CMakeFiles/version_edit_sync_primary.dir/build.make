# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build

# Include any dependencies generated for this target.
include CMakeFiles/version_edit_sync_primary.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/version_edit_sync_primary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/version_edit_sync_primary.dir/flags.make

version_edit_sync.pb.cc: /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/protos/version_edit_sync.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating version_edit_sync.pb.cc, version_edit_sync.pb.h, version_edit_sync.grpc.pb.cc, version_edit_sync.grpc.pb.h"
	/root/bin/protoc-3.13.0.0 --grpc_out /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build --cpp_out /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build -I /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/protos --plugin=protoc-gen-grpc="/root/bin/grpc_cpp_plugin" /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/protos/version_edit_sync.proto

version_edit_sync.pb.h: version_edit_sync.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate version_edit_sync.pb.h

version_edit_sync.grpc.pb.cc: version_edit_sync.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate version_edit_sync.grpc.pb.cc

version_edit_sync.grpc.pb.h: version_edit_sync.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate version_edit_sync.grpc.pb.h

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.o: CMakeFiles/version_edit_sync_primary.dir/flags.make
CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.o: ../../version_edit_sync_primary.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.o -c /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/version_edit_sync_primary.cc

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/version_edit_sync_primary.cc > CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.i

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/version_edit_sync_primary.cc -o CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.s

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.o: CMakeFiles/version_edit_sync_primary.dir/flags.make
CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.o: version_edit_sync.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.o -c /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/version_edit_sync.pb.cc

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/version_edit_sync.pb.cc > CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.i

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/version_edit_sync.pb.cc -o CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.s

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.o: CMakeFiles/version_edit_sync_primary.dir/flags.make
CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.o: version_edit_sync.grpc.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.o -c /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/version_edit_sync.grpc.pb.cc

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/version_edit_sync.grpc.pb.cc > CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.i

CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/version_edit_sync.grpc.pb.cc -o CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.s

# Object files for target version_edit_sync_primary
version_edit_sync_primary_OBJECTS = \
"CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.o" \
"CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.o" \
"CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.o"

# External object files for target version_edit_sync_primary
version_edit_sync_primary_EXTERNAL_OBJECTS =

version_edit_sync_primary: CMakeFiles/version_edit_sync_primary.dir/version_edit_sync_primary.cc.o
version_edit_sync_primary: CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.pb.cc.o
version_edit_sync_primary: CMakeFiles/version_edit_sync_primary.dir/version_edit_sync.grpc.pb.cc.o
version_edit_sync_primary: CMakeFiles/version_edit_sync_primary.dir/build.make
version_edit_sync_primary: /mnt/sdb/my_rocksdb/librocksdb.a
version_edit_sync_primary: /root/lib/libgrpc++_reflection.a
version_edit_sync_primary: /root/lib/libgrpc++.a
version_edit_sync_primary: /root/lib/libprotobuf.a
version_edit_sync_primary: /root/lib/libgrpc.a
version_edit_sync_primary: /root/lib/libssl.a
version_edit_sync_primary: /root/lib/libcrypto.a
version_edit_sync_primary: /root/lib/libz.a
version_edit_sync_primary: /root/lib/libcares.a
version_edit_sync_primary: /root/lib/libre2.a
version_edit_sync_primary: /root/lib/libabsl_hash.a
version_edit_sync_primary: /root/lib/libabsl_bad_variant_access.a
version_edit_sync_primary: /root/lib/libabsl_city.a
version_edit_sync_primary: /root/lib/libabsl_raw_hash_set.a
version_edit_sync_primary: /root/lib/libabsl_hashtablez_sampler.a
version_edit_sync_primary: /root/lib/libabsl_exponential_biased.a
version_edit_sync_primary: /root/lib/libgpr.a
version_edit_sync_primary: /root/lib/libabsl_status.a
version_edit_sync_primary: /root/lib/libabsl_cord.a
version_edit_sync_primary: /root/lib/libabsl_bad_optional_access.a
version_edit_sync_primary: /root/lib/libabsl_synchronization.a
version_edit_sync_primary: /root/lib/libabsl_stacktrace.a
version_edit_sync_primary: /root/lib/libabsl_symbolize.a
version_edit_sync_primary: /root/lib/libabsl_debugging_internal.a
version_edit_sync_primary: /root/lib/libabsl_demangle_internal.a
version_edit_sync_primary: /root/lib/libabsl_graphcycles_internal.a
version_edit_sync_primary: /root/lib/libabsl_time.a
version_edit_sync_primary: /root/lib/libabsl_civil_time.a
version_edit_sync_primary: /root/lib/libabsl_time_zone.a
version_edit_sync_primary: /root/lib/libabsl_malloc_internal.a
version_edit_sync_primary: /root/lib/libabsl_str_format_internal.a
version_edit_sync_primary: /root/lib/libabsl_strings.a
version_edit_sync_primary: /root/lib/libabsl_strings_internal.a
version_edit_sync_primary: /root/lib/libabsl_int128.a
version_edit_sync_primary: /root/lib/libabsl_throw_delegate.a
version_edit_sync_primary: /root/lib/libabsl_base.a
version_edit_sync_primary: /root/lib/libabsl_raw_logging_internal.a
version_edit_sync_primary: /root/lib/libabsl_log_severity.a
version_edit_sync_primary: /root/lib/libabsl_spinlock_wait.a
version_edit_sync_primary: /root/lib/libaddress_sorting.a
version_edit_sync_primary: /root/lib/libupb.a
version_edit_sync_primary: CMakeFiles/version_edit_sync_primary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable version_edit_sync_primary"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/version_edit_sync_primary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/version_edit_sync_primary.dir/build: version_edit_sync_primary

.PHONY : CMakeFiles/version_edit_sync_primary.dir/build

CMakeFiles/version_edit_sync_primary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/version_edit_sync_primary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/version_edit_sync_primary.dir/clean

CMakeFiles/version_edit_sync_primary.dir/depend: version_edit_sync.grpc.pb.cc
CMakeFiles/version_edit_sync_primary.dir/depend: version_edit_sync.grpc.pb.h
CMakeFiles/version_edit_sync_primary.dir/depend: version_edit_sync.pb.cc
CMakeFiles/version_edit_sync_primary.dir/depend: version_edit_sync.pb.h
	cd /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/version_edit_sync/cpp/cmake/build/CMakeFiles/version_edit_sync_primary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/version_edit_sync_primary.dir/depend

