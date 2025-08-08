program test_integration
  use simpson_module
  use trapezoidal_module
  implicit none
  real :: approx, exact, error, a, b
  integer :: n
  real, parameter :: tol = 1.0e-6

  print *, "Testing Simpson's Rule and Trapezoidal Rule"

  ! Test 1: sin(x) from 0 to pi (exact = 2)
  a = 0.0
  b = 3.14159265358979323846
  n = 100
  exact = 2.0
  call run_test("sin(x)", a, b, n, exact, f_sin)

  ! Test 2: cos(x) from 0 to pi (exact = 0)
  exact = 0.0
  call run_test("cos(x)", a, b, n, exact, f_cos)

  ! Test 3: x^2 from 0 to 1 (exact = 1/3)
  a = 0.0
  b = 1.0
  n = 100
  exact = 1.0/3.0
  call run_test("x^2", a, b, n, exact, f_x2)

contains

  function f_sin(x) result(y)
    real, intent(in) :: x
    real :: y
    y = sin(x)
  end function f_sin

  function f_cos(x) result(y)
    real, intent(in) :: x
    real :: y
    y = cos(x)
  end function f_cos

  function f_x2(x) result(y)
    real, intent(in) :: x
    real :: y
    y = x**2
  end function f_x2

  subroutine run_test(fname, a, b, n, exact, f)
    character(len=*), intent(in) :: fname
    real, intent(in) :: a, b, exact
    integer, intent(in) :: n
    procedure(func_interface) :: f
    real :: approx_s, approx_t, error_s, error_t

    approx_s = simpson_integral(f, a, b, n)
    error_s = abs(approx_s - exact)
    print *, "[Simpson] ", fname, ": approx=", approx_s, " exact=", exact, " error=", error_s
    if (error_s < tol) then
      print *, "  Simpson: Test PASSED"
    else
      print *, "  Simpson: Test FAILED"
    end if

    approx_t = trapezoidal_rule(f, a, b, n)
    error_t = abs(approx_t - exact)
    print *, "[Trapezoidal] ", fname, ": approx=", approx_t, " exact=", exact, " error=", error_t
    if (error_t < tol) then
      print *, "  Trapezoidal: Test PASSED"
    else
      print *, "  Trapezoidal: Test FAILED"
    end if
    print *, repeat("-", 50)
  end subroutine run_test

end program test_integration
