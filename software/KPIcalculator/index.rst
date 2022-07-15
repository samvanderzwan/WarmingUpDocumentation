KPI calculator and dashboard
==============================
The KPI calculator and dashboard are both python code and are used to calculate the KPI’s and to visualize the result. The details on how the KPi dashboard work can be found in the workflows. How the KPi calculator works is explained in this section.
For the following 3 interest KPIs are calculated:
#.	Costs
#.	Sustainability
#.	Flexibility

Costs
-------
The cost model implemented is not a full business case model. It purpose is rather to compare the costs of different scenarios 
and projects on a similar basis.
The costs are calculated over the lifetime of the system. Revenue is not considered. The net present costs are calculated as 
the sum of the CAPEX and the OPEX over the lifetime of the system. The CAPEX is divided into the following two categories:
1.	Investment costs, these are the material costs of the asset considered
2.	Installation costs, these are all the costs related to actual installing the asset.
The total CAPEX is calculated by summing these two over the lifetime of the system, taken into account re-investment costs 
after the lifetime of the asset and the discount rate. In formula form it is :
#CAPEX = \sum{\( \frac{C_{inv} + C_{ins}} { }  \)}#
In which:

For the OPEX the following categories are considered:
#.	Variable operational costs
#.	Variable maintenance costs
#.	Fixed operational costs
#.	Fixed maintenance costs

The total OPEX over the lifetime is the sum of these costs categories discounted over the years. In formula form this is:

$OPEX = \sum{ \left( \frac{C_{vo} + C_{vm} + C_{fo} + C_{fm} }{ \left( 1 + d \right)^i } \right)}$

In which:

Cost unit
----------
In the ESDL Mapeditor the costs and the unit are given, this can be changed from CF. Based upon the given unit the total costs are calculated. In this section we will explain what the different costs units are and how based on this unit the costs are calculated. Fianally it is also mentioned for which category of the costs you can use this unit.
EUR
Can be used for investment and installation costs. 
EUR/YEAR
Can be used for all OPEX related costs categories. It is used as total costs for that category for one year. This is used in 
formula .. to calculated the total costs over the lifetime.
EUR/m and EUR/km
This can be used for the investment and installation costs of pipes. The value is multiplied by the length to get the total 
investment or installation costs

EUR/kw EUR/MW
++++++++++++++++
This unit can be used for the investment and installation costs of producer assets, consumer asset and conversion asset. 
The given value is multiplied with the power attribute of the asset to get the total cost for this asset

EUR/kwh and EUR/Mwh
++++++++++++++++++++++
This unit can be used for the variable operational and maintenance costs for producers, consumers and conversion assets 
and for pumps from the transport assets. The value is multiplied with the sum of one of the following time series:
1.	Heat production for producers assets
2.	Heat consumption for consumption assets
3.	Electricity consumption (e.g. heat pump) or heat production (gas heater) for conversion assets
4.	Electricity consumption for pumps.

EUR/m3
++++++++++++++++
Can be used for storage assets. The given value is multiplied with the volume attributed from the storage asset

% of CAPEX
++++++++++++++++
This unit can be used for fixed operational and fixed maintenance costs. The given percentage is multiplied with the total 
CAPEX over one year.



.. toctree::
   :maxdepth: 1



