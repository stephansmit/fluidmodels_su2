import os
from distutils.core import setup, Extension

os.environ['CC'] ='g++'
su2models_module = Extension('_SU2Models',
                           sources= [
             'SU2/SU2_CFD/src/fluid_model.cpp',
             'SU2/SU2_CFD/src/fluid_model_pig.cpp',
	     'SU2/SU2_CFD/src/fluid_model_ppr.cpp',
	     'SU2/SU2_CFD/src/fluid_model_pvdw.cpp',
	     'SU2/SU2_CFD/src/fluid_model_inc.cpp',
	     'SU2/SU2_CFD/src/transport_model.cpp',
             'SU2/Common/src/mpi_structure.cpp',
	     'su2_models_wrap.cxx']
                           )
setup (name = 'example',
       version = '0.1',
       author      = "S.H.H.J Smit",
       description = """Thermophysical models of SU2""",
       ext_modules = [su2models_module],
       py_modules = ["SU2Models"],
       )
