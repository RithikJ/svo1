FIND_PACKAGE(sliding_window_estimator QUIET)

IF(${sliding_window_estimator_FOUND})
  MESSAGE("SWE found: ${sliding_window_estimator_LIBRARIES}.")
  ADD_DEFINITIONS(-DSVO_USE_SWE)
  LIST(APPEND LINK_LIBS  ${sliding_window_estimator_LIBRARIES})
  LIST(APPEND INCLUDE_DIRS ${sliding_window_estimator_INCLUDE_DIRS})
ELSE()
  MESSAGE("SWE not found.")
ENDIF()