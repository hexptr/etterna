add_subdirectory(MinaCalc)

list(APPEND GLOBAL_FILES_SRC
	"MinaCalc.cpp"
	"SoloCalc.cpp"
	"GameLoop.cpp"
	"global.cpp"
	"rngthing.cpp"
	"SpecialFiles.cpp"
	"StepMania.cpp") # TODO: Refactor into separate main project.

list(APPEND GLOBAL_FILES_HPP
	"MinaCalc.h"
	"MinaCalcHelpers.h"
	"SoloCalc.h"
	"GameLoop.h"
	"global.h"
	"OptionsBinding.h"
	"ProductInfo.h" # TODO: Have this be auto-generated.
	"SpecialFiles.h"
	"rngthing.h"
	"StepMania.h") # TODO: Refactor into separate main project.

if(NOT APPLE)
	list(APPEND GLOBAL_FILES_SRC "Main.cpp")
endif()

target_sources(Etterna PUBLIC ${GLOBAL_FILES_SRC} ${GLOBAL_FILES_HPP})
