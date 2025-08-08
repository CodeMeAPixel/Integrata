
  program main
  use input_utils, only: get_real_or_pi, get_positive_integer, print_error
  use menu, only: select_function, select_method
  use integrata, only: simpson_integral, trapezoidal_rule
  implicit none
  real :: result, a, b
  integer :: n, method, func_choice
  character(len=20) :: method_name, func_name

  call get_real_or_pi("Enter lower bound a (number or 'pi'):", a)
  call get_real_or_pi("Enter upper bound b (number or 'pi'):", b)
  if (a == b) call print_error("Lower and upper bounds must be different.")
  call get_positive_integer("Enter number of intervals n (even for Simpson's, >=1 for Trapezoidal):", n)

  func_choice = select_function()
  select case (func_choice)
    case (1)
      func_name = 'sin(x)'
    case (2)
      func_name = 'cos(x)'
  end select

  method = select_method()
  select case (method)
    case (1)
      method_name = "Simpson's Rule"
      if (mod(n,2) /= 0) call print_error("n must be even for Simpson's Rule.")
      if (func_choice == 1) then
        result = simpson_integral(f_sin, a, b, n)
      else
        result = simpson_integral(f_cos, a, b, n)
      end if
    case (2)
      method_name = "Trapezoidal Rule"
      if (func_choice == 1) then
        result = trapezoidal_rule(f_sin, a, b, n)
      else
        result = trapezoidal_rule(f_cos, a, b, n)
      end if
  end select

  print *, repeat("-", 60)
  print *, trim(method_name), " integral of ", trim(func_name), " from ", a, " to ", b, " with n=", n
  print *, "Result = ", result
  print *, repeat("-", 60)

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

end program main
