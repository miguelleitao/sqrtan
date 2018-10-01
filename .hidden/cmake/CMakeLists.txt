
cmake_minimum_required (VERSION 2.6)
project (sqrtan)
#include(CTest)
#include(${CMAKE_ROOT}/Modules/CheckFunctionExists.cmake)
include (CheckFunctionExists)

add_executable(sqrtan sqrtan.c)

CHECK_FUNCTION_EXISTS(sqrt HAVE_SQRT)
if(NOT HAVE_SQRT)
  list(APPEND CMAKE_REQUIRED_LIBRARIES m)
  CHECK_FUNCTION_EXISTS(sqrt SQRT_FOUND)
  if(SQRT_FOUND)
    target_link_libraries(sqrtan m)
    set(HAVE_SQRT)
    #    set(CMAKE_REQUIRED_INCLUDES math.h)
    #set(CMAKE_REQUIRED_LIBRARIES m)
  else()
    message(FATAL_ERROR "No sqrt() found")
  endif()
endif()

CHECK_FUNCTION_EXISTS(tan HAVE_TAN)
CHECK_FUNCTION_EXISTS(sincos HAVE_SINCOS)



