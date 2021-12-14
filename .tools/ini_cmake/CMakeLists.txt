
cmake_minimum_required (VERSION 2.6)
project (sqrtan)
#include(CTest)
#include(${CMAKE_ROOT}/Modules/CheckFunctionExists.cmake)
include (CheckFunctionExists)

add_executable(sqrtan sqrtan.c)

list(APPEND CMAKE_REQUIRED_LIBRARIES m)
target_link_libraries(sqrtan m)

CHECK_FUNCTION_EXISTS(sqrt HAVE_SQRT)
CHECK_FUNCTION_EXISTS(tan HAVE_TAN)
CHECK_FUNCTION_EXISTS(sincos HAVE_SINCOS)
CHECK_FUNCTION_EXISTS(sin HAVE_SIN)
CHECK_FUNCTION_EXISTS(cos HAVE_COS)
CHECK_FUNCTION_EXISTS(inexistent HAVE_INEXISTENT)

configure_file(config.h.in config.h)


