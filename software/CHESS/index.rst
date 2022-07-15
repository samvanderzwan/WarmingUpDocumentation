CHESS
====================================================
CHESS (Controlled Hybrid Energy Systems Simulator) is an in-house TNO’s heat network simulator 
that solves flow/pressure (hydraulic solver) and temperature distribution (thermal solver) iteratively.

The flows in a network are calculated using the laws of conservation of mass and energy. 
The pressure loss due to friction along the pipe to the average velocity of the fluid is calculated by 
solving Darcy-Weisbach equation. For laminar flow calculation, the hydraulic resistance of a pipe can 
be calculated by the Hagen-Poiseuille equation, which is analytically derived from the Navier–Stokes 
equations. For turbulent flow the friction factor is given by the Haaland approximation of the 
Colebrook-White equation  

The thermal solver of CHESS is built on Matlab’s ode23t solver. 
This solver solves moderately stiff ordinary differential equations 
(ODEs) and first order differential algebraic equations (DAEs). 
It solves Conservation of Energy in a Control Volume for all nodes and pipes. 
The temperature vector which the solver solves contains all temperatures throughout 
all thermally coupled networks (e.g. through a heat exchanger). 

CHESS rule-based controller is used as a standard basic control of Design Toolkit. 
User can assign the merit-order 
priority of sources and demands allocation for operating the heat networks

CHESS ATES module - ROSIM
====================================================
In high temperature Aquifer Thermal Energy Storage (HT-ATES) hot water is stored in summer when 
excess hot water is available, from for instance a geothermal well or an industrial process. 
The injected hot water is produced back in winter. Some of the thermal energy is lost in this 
process by interaction with the subsurface rocks and ground water already present in the pores. 
The CHESS ATES module predicts the temperature of the produced water based on characteristics of 
the subsurface and past water injection and production schedule. This is done with TNO in-house 
developed software (ROSIM making use of Doubletcalc3D). 

ROSIM creates a 3D subsurface model, well model and flow model, which are input for the subsequent 
flow simulation using DoubletCalc3D. The subsurface model is a layer-cake model, which is penetrated 
by vertical, slanted or horizontal wells. Doubletcalc3D is a 3 dimensional extension of existing tools 
for 1D and 2D simulation at TNO . It is a dedicated single phase simulator which enables the numerical
simulation of temperature and pressure development using temperature dependent density and viscosity. 
It is based on a staggered coupling of a steady state solution for the pressure and flow field, 
coupled to a transient solution of the thermal field. The flow and thermal field are solved with a 
finite volume finite difference formulation (cf. Pluymaekers et al., 2016; Lipsey et al., 2016). 
For the flow and thermal solution the model has been benchmarked with Eclipse for 2D flow problems. 
 
For CHESS a version of ROSIM was created that uses a layer cake model with constant properties 
(thickness, porosity, permeability, et al.) per layer. The model contains about 60.000 cells with 
local horizontal grid refinement close to the hot well. In vertical direction the model comprises the 
reservoir and under- and overburden. An example of the simulation grid is shown below. 
The CHESS ROSIM version can be run per time step (of variable length) and can also go back in time 
for scenario testing. The temperature of the produced water is the main output of the ATES module 
used by CHESS. 


References
----------
#. www.nlog.nl/tools 
#. Pluymaekers, M., Veldkamp, H., Van Wees, J.D., 2016. Doubletcalc 2D: A free geothermal flow simulator. European Geothermal Congress, EGC2016, Straatsburg. https://pangea.stanford.edu/ERE/db/IGAstandard/record_detail.php?id=27526 
#. Lipsey, L., Pluymaekers, M., Goldberg, T., Van Oversteeg, K, Ghazaryan, L., Cloetingh, S., Van Wees, J.D. (2016). Numerical modelling of thermal convection in the Luttelgeest carbonate platform, the Netherlands. Geothermics, doi:10.1016/j.geothermics.2016.05.002


.. toctree::
   :maxdepth: 1



