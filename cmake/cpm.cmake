set(CPM_DOWNLOAD_VERSION 0.38.2)
set(CPM_HASH_SUM "bd6d4604c8154ee2a298187d6b47b850b913d90a3c26b63beb60677332df0c85")

set(CPM_DOWNLOAD_LOCATION "${LIB_DIR}/cpm/CPM_${CPM_DOWNLOAD_VERSION}.cmake")

# Expand relative path. This is important if the provided path contains a tilde (~)
get_filename_component(CPM_DOWNLOAD_LOCATION ${CPM_DOWNLOAD_LOCATION} ABSOLUTE)

file(DOWNLOAD
    https://github.com/cpm-cmake/CPM.cmake/releases/download/v${CPM_DOWNLOAD_VERSION}/CPM.cmake
    ${CPM_DOWNLOAD_LOCATION} EXPECTED_HASH SHA256=${CPM_HASH_SUM}
)

include(${CPM_DOWNLOAD_LOCATION})