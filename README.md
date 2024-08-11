# Audio Plugin Boilerplate

A comprehensive boilerplate for developing JUCE audio plugins with CMake and CPM. This template streamlines the setup process and ensures a consistent, cross-platform build environment, making it easier to focus on your plugin's core functionality.

## Features

- **CMake**: A powerful, cross-platform build system generator that simplifies the process of managing and building your projects on different platforms.
- **CPM**: A CMake-based package manager that automatically handles dependencies, ensuring your project remains modular and up-to-date.
- **Google Test**: Integrated testing framework for writing and running unit tests to ensure your plugin's reliability.

## Setup

### Prerequisites

Before starting, ensure you have the following installed:

- **CMake**: Required for generating the build system. [Download CMake here](https://cmake.org/download/).

### Build & Install

Follow these steps to build and install your plugin:

1. **Clone the repository:**

   Start by cloning the repository to your local machine:

   ```bash
   git clone <your-repo-url>
   cd <your-repo-folder>
   ```

2. **Configure the project:**

   ```bash
   cmake -S . -B build
   ```

   This command will create a build directory where all the build files and dependencies will be placed.

3. **Build this plugin:**
   After configuring, build the plugin using:

   ```bash
   cmake --build build
   ```

   This will compile your plugin and create the necessary binaries.

### Running Tests

This project includes a suite of unit tests using the Google Test framework. To build and run the tests:

1. **Build the project (including tests)::**
   Run the build command, which compiles both the plugin and the tests:

   ```bash
   cmake --build build
   ```

2. **Run the tests**

   Navigate to the `build` directory and run the tests using `ctest`

   ```bash
   cd build
   ctest
   ```

   This will execute all the tests and display the results in the terminal.

## Coding Standard

This project uses `clang-format` to maintain a consistent coding standard. To apply the coding standard to all `.cpp` and `.h` files in the plugin and test directories, follow these steps:

1. **Install clang-format**

   Ensure you have `clang-format` installed on your system. On macOS, you can easily install it using Homebrew:

   ```bash
   brew install clang-format
   ```

2. **Format the code**

   Run the following command from the root directory of the project to format all `.cpp` and `.h` files in the plugin and test directories:

   ```bash
   find plugin test \( -name '*.cpp' -o -name '*.h' \) -exec clang-format -i {} +
   ```

   This will apply `clang-format` to all relevant files according to the style defined in your `.clang-format` file.

   **Note:** Always format your code before committing changes to ensure that your code adheres to the project's coding standards. This helps maintain a consistent style across the codebase.

## License

This project is licensed under the MIT License. See the full license text in the [LICENSE](https://opensource.org/license/mit) file.
