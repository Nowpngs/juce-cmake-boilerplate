install-dependencies:
	@echo "Installing Dependencies..."
	cmake -S . -B build

build-plugin:
	@echo "Building Project..."
	cmake --build build

run-test:
	@echo "Running Tests..."
	@cd build/ && ctest

format-style:
	@echo "Formatting Code..."
	@find plugin test \( -name '*.cpp' -o -name '*.h' \) -exec clang-format -i {} +
	@echo "Done!"