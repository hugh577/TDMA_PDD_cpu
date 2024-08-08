!>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
!!
!!    GLOBAL VARIABLES/SUBROUTINES FOR THE HOST (CPU)
!!
!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

!>======================================================================
module global_host

use pdd_host
use m_precision
implicit none

!>--Save original data
real(kind=cgreal), dimension(:,:,:), allocatable :: dat_orig

contains
!>======================================================================
!!    CPU global memory allocation
!!======================================================================
subroutine malloc_global

	implicit none
   include 'mpif.h'

	!>--Save original data
	if (rank == 0) allocate( dat_orig( nx,ny,nz ) )

end subroutine malloc_global

!>======================================================================
!!    Free CPU global memory
!!======================================================================
subroutine free_global

	implicit none

	!>--Save original data
	if (rank == 0) deallocate( dat_orig )

end subroutine free_global

!>======================================================================
end module global_host

