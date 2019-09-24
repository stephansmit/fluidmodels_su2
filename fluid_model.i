/* example.i */
%module example
%{
   #define SWIG_FILE_WITH_INIT
   #include "SU2/Common/include/mpi_structure.hpp"
   #include "SU2/Common/include/datatype_structure.hpp"
   #include "SU2/Common/include/mpi_structure.inl"
   #include "SU2/Common/include/datatype_structure.inl"
   #include "SU2/SU2_CFD/include/transport_model.hpp"
   #include "SU2/SU2_CFD/include/transport_model.inl"
   #include "SU2/SU2_CFD/include/fluid_model.hpp"
   #include "SU2/SU2_CFD/include/fluid_model.inl"
%}
%include "SU2/Common/include/mpi_structure.hpp"
#include "SU2/Common/include/datatype_structure.hpp"
%include "SU2/Common/include/mpi_structure.inl"
#include "SU2/Common/include/datatype_structure.inl"
%include "SU2/SU2_CFD/include/transport_model.hpp"
%include "SU2/SU2_CFD/include/transport_model.inl"
%include "SU2/SU2_CFD/include/fluid_model.hpp"
%include "SU2/SU2_CFD/include/fluid_model.inl"

