swig -python -py3 -c++ su2_models.i 
g++ -fPIC -c SU2/SU2_CFD/src/fluid_model.cpp \
             SU2/SU2_CFD/src/fluid_model_pig.cpp \
	     SU2/SU2_CFD/src/fluid_model_ppr.cpp \
	     SU2/SU2_CFD/src/fluid_model_pvdw.cpp \
	     SU2/SU2_CFD/src/fluid_model_inc.cpp \
	     SU2/SU2_CFD/src/transport_model.cpp \
             SU2/Common/src/mpi_structure.cpp \
	     su2_models_wrap.cxx \
	     -I/usr/include/python3.5 -lstdc++
g++ -fPIC -shared fluid_model.o \
            fluid_model_pig.o \
            fluid_model_ppr.o \
            fluid_model_pvdw.o \
	    fluid_model_inc.o \
	    transport_model.o \
	    mpi_structure.o \
	    su2_models_wrap.o \
	    -o _SU2Models.so -lstdc++

#g++ -fPIC -c example.c example_wrap.c -I/usr/include/python3.5
#c++ -shared example.o example_wrap.o -o _example.so

