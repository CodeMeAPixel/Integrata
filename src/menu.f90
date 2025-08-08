module menu
  use input_utils, only: print_error
  implicit none
contains
  function select_function() result(choice)
    integer :: choice
    print *, 'Select function to integrate:'
    print *, '1. sin(x)'
    print *, '2. cos(x)'
    read *, choice
    if (choice /= 1 .and. choice /= 2) call print_error('Invalid function choice. Please enter 1 or 2.')
  end function select_function

  function select_method() result(choice)
    integer :: choice
    print *, 'Select integration method:'
    print *, '1. Simpson''s Rule'
    print *, '2. Trapezoidal Rule'
    read *, choice
    if (choice /= 1 .and. choice /= 2) call print_error('Invalid method choice. Please enter 1 or 2.')
  end function select_method
end module menu
