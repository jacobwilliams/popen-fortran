program test

use popen_module

implicit none

character(len=:),allocatable :: res

#ifdef _WIN32
    res = get_command_as_string('ver')
#else
    res = get_command_as_string('uname')
#endif

write(*,'(A)') res

#ifdef _WIN32
    res = get_command_as_string('dir')
#else
    res = get_command_as_string('ls -l')
#endif

write(*,'(A)') res

end program test
