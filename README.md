


# Integrata

A growing Fortran project demonstrating numerical integration using Simpson’s Rule, with plans to expand into a full suite of numerical methods and scientific computing tools.  

> Manual build and run instructions included for quick start.

---


## 📂 Project Structure

```text
Integrata/
├── src/
│   ├── simpson.f90         # Simpson’s Rule integration module
│   ├── trapezoidal.f90     # Trapezoidal Rule integration module
│   ├── input_utils.f90     # Input and error handling utilities
│   ├── menu.f90            # Menu and selection utilities
│   └── integrata.f90       # Unified interface module
├── app/
│   └── main.f90            # Main program using the modules
├── test/
│   ├── test_simpson.f90    # Legacy test for Simpson's Rule
│   └── test_integration.f90 # Comprehensive tests for Simpson's & Trapezoidal rules
├── Makefile                # Build and run automation
└── README.md               # This file
```

---

## 🛠️ Building and Running

### Prerequisites

- **Fortran compiler:** [gfortran](https://gcc.gnu.org/fortran/) or any Fortran 2008+ compliant compiler.

---


### Build and run the main program

```sh
make        # builds the main program (main.exe)
make run    # builds and runs the main program
```


### Build and run tests

```sh
make test   # builds and runs all tests (Simpson's & Trapezoidal)
make test_simpson      # legacy test for Simpson's Rule only
make test_integration  # comprehensive tests for both rules
```

---

### Features

- Modular Fortran codebase: each integration method and utility in its own file
- Supports Simpson’s Rule and Trapezoidal Rule
- Choose between sin(x) and cos(x) as test functions
- Robust, user-friendly input validation (including support for 'pi')
- Easy build and run with Makefile

---


## 🧮 About Simpson’s and Trapezoidal Rule Integration


Simpson’s Rule and the Trapezoidal Rule are classic methods for approximating definite integrals. This project demonstrates both, with a modular, extensible Fortran codebase.


**Simpson’s Rule:**

∫ₐᵇ f(x) dx ≈ (h/3) [f(a) + 4 Σ_odd f(xᵢ) + 2 Σ_even f(xᵢ) + f(b)]
where h = (b - a) / n, n even.

**Trapezoidal Rule:**

∫ₐᵇ f(x) dx ≈ h/2 [f(a) + 2 Σ f(xᵢ) + f(b)]
where h = (b - a) / n, n ≥ 1.

**Visualization of intervals:**

```text
a  x1  x2  x3  x4  ...  xn-1  b
|---|---|---|---|-------|---|
	 ^   ^   ^           ^   
 odd even odd         odd
```

⚠️ **Notes**

- The number of subintervals n must be even for Simpson’s Rule.
- The program will stop with a clear error if invalid input is provided.

---

## 🧩 Future plans for Integrata


| Feature                     | Status      | Notes                        |
|-----------------------------|------------|------------------------------|
| Add other numerical methods | In progress| Trapezoidal, Romberg, etc.   |
| Support adaptive integration| Planned    | Dynamic subinterval sizing    |
| GUI frontend                | Idea       | Simple Qt or web UI           |
| FPM package support         | In progress| For easy building & testing   |

---

## 📖 Documentation

### Code Structure

- **src/simpson.f90**: Simpson’s Rule implementation (module)
- **src/trapezoidal.f90**: Trapezoidal Rule implementation (module)
- **src/input_utils.f90**: Input parsing, validation, and error handling utilities
- **src/menu.f90**: Menu and selection utilities for user interaction
- **src/integrata.f90**: Unified interface module, re-exports all integration methods
- **app/main.f90**: Main program, orchestrates user input, method selection, and output
- **test/test_simpson.f90**: Legacy test for Simpson’s Rule
- **test/test_integration.f90**: Comprehensive tests for Simpson’s & Trapezoidal rules

### Usage

Run `make` to build, `make run` to build and run, and `make test` to run tests. The program will prompt for:
- Lower and upper bounds (accepts numbers or 'pi')
- Number of intervals (n)
- Function to integrate (sin(x) or cos(x))
- Integration method (Simpson’s or Trapezoidal)

### Extending Integrata

- To add a new integration method, create a new module in `src/` and add it to `integrata.f90`.
- To add more test functions, define them in `main.f90` and update the menu logic.
- For more advanced input or CLI features, extend `input_utils.f90` and `menu.f90`.

---

## 🤝 Contributing

Contributions welcome! Feel free to open issues or pull requests.

© 2025 CodeMeAPixel — MIT License
