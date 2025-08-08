# TODO - Future Expansion Plans

## 🚀 Immediate Next Steps
- [x] Add Trapezoidal Rule integration function  
- [x] Extend `main.f90` to allow user to select integration method  
- [x] Add support for more predefined test functions (e.g., cos(x), exp(x))  
- [x] Implement input validation for user inputs (bounds, n)

## 🧪 Testing
- [ ] Write automated unit tests using `fpm test` or other framework  
- [ ] Add tests for Trapezoidal Rule function  
- [ ] Add round-trip integration tests (integrate and invert)  

## 📈 Features to Add
- [ ] Support adaptive integration with error estimation  
- [ ] Allow user-defined functions via string parsing or callbacks  
- [ ] Add support for multivariate integrals (double integrals)  
- [ ] Implement other numerical methods (e.g., Romberg integration, Gaussian quadrature)  

## ⚙️ Developer Experience
- [ ] Setup `fpm.toml` to support building/testing with FPM  
- [ ] Add a simple CLI interface with help and usage messages  
- [ ] Add logging or verbose output mode  
- [ ] Prepare Dockerfile for easy environment setup  

## 🔗 Integration & Interoperability
- [ ] Provide Python bindings using `f2py`  
- [ ] Create a shared library for calling from other languages  
- [ ] Benchmark performance vs Python/NumPy equivalents  

- [x] Write detailed README with usage examples
- [ ] Add inline code documentation/comments  
- [ ] Create example Jupyter notebooks with usage demos  