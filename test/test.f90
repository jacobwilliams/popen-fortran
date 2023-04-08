program test

use popen_module

implicit none

character(len=:),allocatable :: res

res = get_command_as_string('uname')
write(*,'(A)') res

res = get_command_as_string('ls -l')
write(*,'(A)') res

end program test
