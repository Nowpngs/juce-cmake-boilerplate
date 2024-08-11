install:
	@echo "Installing Dependencies"
	cmake -S . -B build

build-plugin:
	@echo "Building Project"
	cmake --build build