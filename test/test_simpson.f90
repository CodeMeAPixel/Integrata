! test_simpson.f90 is now superseded by test_integration.f90
! Run test_integration.f90 for comprehensive tests of both Simpson's and Trapezoidal rules.

program test_simpson
  use simpson_module
  implicit none
  real :: approx, exact, error, a, b
  integer :: n
  real, parameter :: tol = 1.0e-6

  a = 0.0
  b = 3.14159265358979323846
  n = 100
  exact = 2.0

  approx = simpson_integral(f_sin, a, b, n)
  error = abs(approx - exact)

  print *, "Testing Simpson's Rule for integral of sin(x) from 0 to pi"
  print *, "Approximate = ", approx
  print *, "Exact      = ", exact
  print *, "Error      = ", error
  if (error < tol) then
    print *, "Test PASSED"
  else
    print *, "Test FAILED"
  end if

contains

  function f_sin(x) result(y)
    real, intent(in) :: x
    real :: y
    y = sin(x)
  end function f_sin

end program test_simpson
