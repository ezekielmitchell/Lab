# 🦀 Rust by Example Journey

<p align="center">
  <img src="https://www.rust-lang.org/static/images/rust-logo-blk.svg" alt="Rust Logo">
</p>
<p align="center">
  <a href="https://www.rust-lang.org/"><img src="https://img.shields.io/badge/rust-stable-brightgreen.svg" alt="Rust Version"></a>
  <a href="https://github.com/yourusername/rust-by-example-journey/commits/main"><img src="https://img.shields.io/badge/updated-March%2025,%202025-blue.svg" alt="Updated"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>
</p>

## 🔍 Vision

This repo documents my journey learning Rust for computer vision applications in defense and robotics. As a computer engineering student with a focus on military defensive systems and type 1 error reduction, I'm exploring Rust's performance, memory safety, and concurrency features to build more reliable threat detection systems.

## 📚 Contents

```
src/
├── 01_hello/               # Hello World - Basic syntax and printing
├── 02_primitives/          # Primitives - Working with fundamental types  
├── 03_custom_types/        # Custom Types - Structs, enums, and constants
├── 04_variable_bindings/   # Variable Bindings - Scope and mutability
├── 05_types/               # Types - Type conversions and inference
├── 06_conversion/          # Conversion - From/Into traits
├── 07_expressions/         # Expressions - Expression-based language features
├── 08_flow_control/        # Flow Control - Conditionals and loops
├── 09_functions/           # Functions - Methods and closures
├── 10_modules/             # Modules - Organizing code 
├── 11_crates/              # Crates - External dependencies
├── 12_cargo/               # Cargo - Package management
├── 13_attributes/          # Attributes - Code metadata
├── 14_generics/            # Generics - Parameterized types
├── 15_scoping_rules/       # Scoping Rules - Ownership and borrowing
├── 16_traits/              # Traits - Shared behavior
├── 17_macros/              # Macros - Metaprogramming
├── 18_error_handling/      # Error Handling - Result and Option types
├── 19_std_library_types/   # Std Library Types - Common collections
├── 20_testing/             # Testing - Unit and integration tests
├── 21_unsafe_operations/   # Unsafe Operations - Raw pointers and FFI
└── 22_compatibility/       # Compatibility - Working across versions
```

## 🚀 Quick Start

```bash
# Clone the repository
git clone git@github.com:rust-lang/rust-by-example.git
cd rust-by-example

# Run a specific example with rustc
rustc src/01_hello/hello.rs && ./hello

# Or using Cargo (when applicable)
cargo run --bin hello
```

## 📊 Progress

<details open>
<summary><b>Core Concepts</b></summary>

- [x] Hello World
- [x] Primitives
- [x] Custom Types
- [x] Variable Bindings

</details>

<details>
<summary><b>Intermediate Features</b></summary>

- [x] Types
- [x] Conversion
- [x] Expressions
- [x] Flow Control
- [x] Functions
- [x] Modules
- [x] Crates
- [x] Cargo
- [x] Attributes

</details>

<details>
<summary><b>Advanced Topics</b></summary>

- [x] Generics
- [x] Scoping Rules
- [x] Traits
- [x] Macros
- [ ] Error Handling
- [ ] Std Library Types
- [ ] Testing
- [ ] Unsafe Operations
- [x] Compatibility

</details>

## 💡 Key Insights

> *"Memory safety without garbage collection makes Rust ideal for CV applications where performance is critical."*

### Advantages for Computer Vision

- **Zero-cost abstractions** - Critical for processing high frame rate video
- **Memory safety** - Eliminates common bugs in image processing pipelines
- **Fearless concurrency** - Parallel processing of visual data
- **C interoperability** - Integration with existing C/C++ libraries

### Advantages for Robotics

- **Real-time performance** - Deterministic execution for time-critical robot control systems
- **Low latency** - Reduced response time for robotic sensors and actuators
- **Reliability** - Strong typing prevents runtime errors in safety-critical operations
- **Hardware abstraction** - Safe interfaces for hardware components and I/O
- **Embedded systems** - Suitable for resource-constrained robotic controllers

## 🔧 Development Setup

```bash
# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Check installation
rustc --version
cargo --version

# Set up VS Code with extensions
# - rust-analyzer
# - crates
# - Better TOML
```