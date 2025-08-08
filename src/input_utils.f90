module input_utils
  implicit none
contains
  subroutine get_real_or_pi(prompt, value)
    character(len=*), intent(in) :: prompt
    real, intent(out) :: value
    character(len=20) :: str
    integer :: ios
    real, parameter :: pi = 3.14159265358979323846
    print *, trim(prompt)
    read *, str
    if (trim(adjustl(str)) == 'pi' .or. trim(adjustl(str)) == 'PI') then
      value = pi
    else
      read(str, *, iostat=ios) value
      if (ios /= 0) call print_error('Invalid input. Please enter a number or "pi".')
    end if
  end subroutine get_real_or_pi

  subroutine get_positive_integer(prompt, value)
    character(len=*), intent(in) :: prompt
    integer, intent(out) :: value
    character(len=20) :: str
    integer :: ios
    print *, trim(prompt)
    read *, str
    read(str, *, iostat=ios) value
    if (ios /= 0 .or. value < 1) call print_error('Invalid input. Please enter a positive integer.')
  end subroutine get_positive_integer

  subroutine print_error(msg)
    character(len=*), intent(in) :: msg
    print *, '[Error] ', trim(msg)
    print *, 'Exiting program.'
    stop 1
  end subroutine print_error
end module input_utils
