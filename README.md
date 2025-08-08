


# Integrata

> 🚀 **Integrata** — A growing Fortran project demonstrating numerical integration using Simpson’s Rule, with plans to expand into a full suite of numerical methods and scientific computing tools.  
> Manual build and run instructions included for quick start.

---

## 📂 Project Structure

```text
Integrata/
├── src/
│   └── simpson.f90       # Simpson’s Rule integration module
├── app/
│   └── main.f90          # Main program using the simpson module
├── test/
│   └── test_simpson.f90  # Test program for the simpson module
└── README.md             # This file
```

---

## 🛠️ Building and Running

### Prerequisites

- **Fortran compiler:** [gfortran](https://gcc.gnu.org/fortran/) or any Fortran 2008+ compliant compiler.

---

### Build the main program

```sh
gfortran -o main.exe app/main.f90 src/simpson.f90
```

### Run the main program

```sh
./main.exe
```

Expected output example:

```text
Simpson's Rule integral of sin(x) from 0 to pi with n=100:
Result = 2.00000000
```

### Build and run tests

```sh
gfortran -o test_simpson.exe test/test_simpson.f90 src/simpson.f90
./test_simpson.exe
```

---

## 🧮 About Simpson’s Rule Integration

Simpson’s Rule approximates the definite integral of a function f(x) on [a, b] by dividing the interval into an even number n of subintervals and fitting parabolas through the points.

**Formula:**

∫ₐᵇ f(x) dx ≈ (h/3) [f(a) + 4 Σ_odd f(xᵢ) + 2 Σ_even f(xᵢ) + f(b)]

where h = (b - a) / n.

**Visualization of intervals:**

```text
a  x1  x2  x3  x4  ...  xn-1  b
|---|---|---|---|-------|---|
	 ^   ^   ^           ^   
 odd even odd         odd
```

⚠️ **Notes**

The number of subintervals n must be even for Simpson’s Rule to work correctly. The program will stop with an error if an odd n is provided.

---

## 🧩 Future plans for Integrata

| Feature                     | Status      | Notes                        |
|-----------------------------|------------|------------------------------|
| Add other numerical methods | Planned    | Trapezoidal, Romberg, etc.   |
| Support adaptive integration| Planned    | Dynamic subinterval sizing    |
| GUI frontend                | Idea       | Simple Qt or web UI           |
| FPM package support         | In progress| For easy building & testing   |

---

## 🤝 Contributing

Contributions welcome! Feel free to open issues or pull requests.

© 2025 CodeMeAPixel — MIT License
