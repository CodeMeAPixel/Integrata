program main
  use simpson_module
  implicit none
  real :: result, a, b
  integer :: n

  a = 0.0
  b = 3.14159265358979323846
  n = 100

  result = simpson_integral(f_sin, a, b, n)
  print *, "Simpson's Rule integral of sin(x) from 0 to pi with n=100:"
  print *, "Result = ", result

contains

  function f_sin(x) result(y)
    real, intent(in) :: x
    real :: y
    y = sin(x)
  end function f_sin

end program main
