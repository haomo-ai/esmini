
include_directories (
  ${SCENARIOENGINE_DLL_INCLUDE_DIR}
  ${ROADMANAGER_DLL_INCLUDE_DIR}
  ${COMMON_MINI_INCLUDE_DIR}
)

set (TARGET rm-se)

set ( SOURCES
  rm-se.cpp
)

set ( INCLUDES
)

add_executable ( ${TARGET} ${SOURCES} ${INCLUDES} )

target_link_libraries (
	${TARGET}
	esminiLib
    esminiRMLib
	CommonMini
	${TIME_LIB}
  project_options
)

install ( TARGETS ${TARGET} DESTINATION "${INSTALL_DIRECTORY_CODE_EXAMPLES}")
