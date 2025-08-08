module simpson_module
  implicit none

  abstract interface
    function func_interface(x) result(y)
      real, intent(in) :: x
      real :: y
    end function func_interface
  end interface

contains

  function simpson_integral(f, a, b, n) result(integral)
    implicit none
    procedure(func_interface) :: f
    real, intent(in) :: a, b
    integer, intent(in) :: n
    real :: integral
    real :: h, x
    integer :: i

    if (mod(n, 2) /= 0) then
      print *, "Error: n must be even."
      stop 1
    end if

    h = (b - a) / real(n)
    integral = f(a) + f(b)
    do i = 1, n - 1
      x = a + i * h
      if (mod(i, 2) == 0) then
        integral = integral + 2.0 * f(x)
      else
        integral = integral + 4.0 * f(x)
      end if
    end do
    integral = integral * h / 3.0
  end function simpson_integral

end module simpson_module
