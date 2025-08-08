!==========================================================
! Module: trapezoidal_module
!
! Provides a function to numerically approximate the definite
! integral of a given real-valued function f over an interval
! [a, b] using the trapezoidal rule with n subdivisions.
!
! The trapezoidal_rule function takes:
! - f : a real function of one variable (x)
! - a : lower limit of integration
! - b : upper limit of integration
! - n : number of subdivisions (must be >= 1)
!
! Returns the approximate integral value as a real number.
!==========================================================
module trapezoidal_module
  implicit none
  abstract interface
    function func_interface(x) result(y)
      real, intent(in) :: x
      real :: y
    end function func_interface
  end interface
contains
  function trapezoidal_rule(f, a, b, n) result(integral)
    implicit none
    procedure(func_interface) :: f
    real, intent(in) :: a, b
    integer, intent(in) :: n
    real :: integral
    real :: h, x
    integer :: i
    if (n < 1) then
      print *, "Error: n must be >= 1."
      stop 1
    end if
    h = (b - a) / real(n)
    integral = 0.5 * (f(a) + f(b))
    do i = 1, n - 1
      x = a + i * h
      integral = integral + f(x)
    end do
    integral = integral * h
  end function trapezoidal_rule
end module trapezoidal_module
