/* SU2Models.i */
%module SU2Models

%{
  #include "SU2/Common/include/datatypes/primitive_structure.hpp"
  #include "SU2/SU2_CFD/include/transport_model.hpp"
  #include "SU2/SU2_CFD/include/transport_model.inl"
  #include "SU2/SU2_CFD/include/fluid_model.hpp"
  #include "SU2/Common/include/mpi_structure.hpp"
  typedef double su2double;

%}
#include "SU2/Common/include/datatypes/primitive_structure.hpp"
%include "SU2/SU2_CFD/include/transport_model.hpp"
%include "SU2/SU2_CFD/include/fluid_model.hpp"
typedef double su2double;

