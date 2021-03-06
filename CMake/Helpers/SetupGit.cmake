# Git Hash Info
execute_process(COMMAND git describe --tags
  WORKING_DIRECTORY "${PROJECT_SOURCE_DIR}"
  OUTPUT_VARIABLE PRODUCT_GIT_HASH
  RESULT_VARIABLE ret
  OUTPUT_STRIP_TRAILING_WHITESPACE
)