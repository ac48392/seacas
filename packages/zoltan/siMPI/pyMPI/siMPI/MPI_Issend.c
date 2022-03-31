/*****************************************************************************
 * CVS File Information :
 *    $RCSfile$
 *    Author: patmiller $
 *    Date: 2007/06/11 14:12:51 $
 *    Revision: 1.2 $
 ****************************************************************************/
/***********************************************************************************************/
/* FILE  **************************      MPI_Issend.c         *********************************/
/***********************************************************************************************/
/* Author : Lisa Alano July 16 2002                                                            */
/* Copyright (c) 2002 University of California Regents                                         */
/***********************************************************************************************/

#include "mpi.h"

/*=============================================================================================*/
int MPI_Issend (void* message, int count, MPI_Datatype datatype, int dest,
        int tag, MPI_Comm comm, MPI_Request* request)
{
  _MPI_COVERAGE();
  return PMPI_Issend(message, count, datatype, dest, tag, comm, request);
}
/*=============================================================================================*/
