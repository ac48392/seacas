#! /bin/sh
CC='gcc'; export CC
CFLAGS="-I${ACCESS}/include"; export CFLAGS
CPPFLAGS="-DNDEBUG"; export CPPFLAGS

rm -f CMakeCache.txt

cmake  \
-D CGNS_BUILD_SHARED:BOOL=ON \
-D CGNS_ENABLE_HDF5:BOOL=ON \
-D HDF5_LIBRARY:FILEPATH=${ACCESS}/lib/libhdf5.so \
-D HDF5_INCLUDE_PATH:PATH=${ACCESS}/include \
-D HDF5_NEED_ZLIB:BOOL=ON \
-D CGNS_ENABLE_SCOPING:BOOL=ON \
-D CGNS_ENABLE_FORTRAN:BOOL=OFF \
-D CMAKE_INSTALL_PREFIX:PATH=${ACCESS} \
$EXTRA_ARGS \
..



