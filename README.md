# Fluid- and Transport models of SU2
Python-wrapper to evaluate the fluid- and transport models of [SU2](https://su2code.github.io/).


## Requirements
~~~~
sudo apt-get install python3-dev swig 
~~~~

## Creation of the python module
~~~~
swig -c++ -python su2_models.i
python3 setup.py build_ext --inplace
~~~~

## Usage
~~~~
import SU2Models
ig = SU2Models.CIdealGas(1.06, 32.)
~~~~
