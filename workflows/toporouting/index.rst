.. _topo_optimization:

I want to optimize the pipe routing
===================================

Tested for version beta 0.4.2 of the WarmingUp Design Toolkit.

The tutorial deals with optimizing the topology of a heat network. This
tutorial shows the steps to find the answer to the following questions:

1) How to find the optimal pipe routing (and sizing) of the network?

This tutorial builds upon the preceding tutorial topic ‘I want to
simulate an existing network’, see :ref:`Existing`
To achieve these results the following packages are used:

+------------+---------------------------------------------------------------------------------+
| |image12|  | Within Computational Framework the Energy Network Topology Optimizer is used.   |
+------------+---------------------------------------------------------------------------------+
| |image0|   | Within the Computational Framework CHESS is used to simulate the network.       |
+------------+---------------------------------------------------------------------------------+

+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| \ **1**   | .. rubric:: **How to find the optimal pipe routing (and sizing) of the network?**                                                        |
|           |    :name: how-to-find-the-optimal-pipe-routing-and-sizing-of-the-network                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.1       | | 1) Go to Optimize-> Pipe layout in the Tasks panel.                                                                                    |
|           | | 2) Click on the ‘Simulation settings’ tab                                                                                              |
|           |                                                                                                                                          |
|           | 3) Click on the ‘Goals and constraints’ tab                                                                                              |
|           |                                                                                                                                          |
|           | |image1|                                                                                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.2       | Defining the goals:                                                                                                                      |
|           |                                                                                                                                          |
|           | 1) Open the goals under the tab ‘Goals’                                                                                                  |
|           |                                                                                                                                          |
|           | 2) Set the goal to the desired goal, in this case ‘Minimize Pipe Surfaces’                                                               |
|           |                                                                                                                                          |
|           | 3) Set the system lifetime in years                                                                                                      |
|           |                                                                                                                                          |
|           | |image2|                                                                                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.3       | Defining the constraints:                                                                                                                |
|           |                                                                                                                                          |
|           | 1) Open the ‘Constraints’ tab                                                                                                            |
|           |                                                                                                                                          |
|           | 2) Click on the checkboxes to turn on/off specific constraints                                                                           |
|           |                                                                                                                                          |
|           | 3) Define the constraints as desired (the flow velocities are a pipe characteristic and are defined in the EDR database <Link to EDR>)   |
|           |                                                                                                                                          |
|           | 4) Click the ‘Apply’ button                                                                                                              |
|           |                                                                                                                                          |
|           | |image3|                                                                                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.4       | Defining bounds on pipe sizes and selecting the pipe characteristics to be optimized/tuned:                                              |
|           |                                                                                                                                          |
|           | 1) Open the ‘Pipes’ tab                                                                                                                  |
|           |                                                                                                                                          |
|           | 2) Select the ‘Tune sizing’ and ‘Tune routing via the checkboxes to indicate which pipes are to be evaluated for placement and sizing.   |
|           |                                                                                                                                          |
|           | 3) Setting the lower and upper bounds of the pipe sizes (Tip: these can be copied and pasted similar to in excel)                        |
|           |                                                                                                                                          |
|           | |image4|                                                                                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.5       | Creating the scenario modifiers                                                                                                          |
|           |                                                                                                                                          |
|           | 1) Give the scenario a distinguishable name                                                                                              |
|           |                                                                                                                                          |
|           | 2) Click the ‘Apply’ button to save the scenario modifiers                                                                               |
|           |                                                                                                                                          |
|           | |image5|                                                                                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.6       | The desired scenario modifier is now created and can be used in a scenario.                                                              |
|           |                                                                                                                                          |
|           | |image6|                                                                                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.7       | Creating a scenario with the topo-optimizer modifier                                                                                     |
|           |                                                                                                                                          |
|           | 1) Open the tab ‘Scenario composition’                                                                                                   |
|           |                                                                                                                                          |
|           | 2) Click on ‘Create’                                                                                                                     |
|           |                                                                                                                                          |
|           | |image7|                                                                                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.8       | Creating a scenario with the topo-optimizer modifier                                                                                     |
|           |                                                                                                                                          |
|           | 1) Give the scenario a name                                                                                                              |
|           |                                                                                                                                          |
|           | 2) Set the scenario as follows:                                                                                                          |
|           |                                                                                                                                          |
|           |    a. Task: select ‘Optimize Pipe layout’                                                                                                |
|           |                                                                                                                                          |
|           |    b. ESDL: select the desired ESDL file                                                                                                 |
|           |                                                                                                                                          |
|           |    c. Simulation step: set the time to 1 hour                                                                                            |
|           |                                                                                                                                          |
|           |    d. Apply thermal loss: Leave the box unchecked                                                                                        |
|           |                                                                                                                                          |
|           |    e. Heat Demand profiles: select ‘nothing selected’, as no heat demand is modified                                                     |
|           |                                                                                                                                          |
|           |    f. Heat Supply profiles: select ‘nothing selected’, as no heat demand is modified                                                     |
|           |                                                                                                                                          |
|           |    g. Heat network model: select ‘nothing selected’, as no CHESS parameters are modified                                                 |
|           |                                                                                                                                          |
|           |    h. Goals and constraints: select ‘Minimize Pipe Sizes PN6’                                                                            |
|           |                                                                                                                                          |
|           |    i. KPIs: select ‘nothing selected’, as no KPI parameters are modified                                                                 |
|           |                                                                                                                                          |
|           | 3) Click on ‘Apply’ to create the scenario                                                                                               |
|           |                                                                                                                                          |
|           | 4) The scenario has now been created and is ready to run                                                                                 |
|           |                                                                                                                                          |
|           | |image8|                                                                                                                                 |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+
| 1.9       | Viewing the results                                                                                                                      |
|           |                                                                                                                                          |
|           | There are different ways to inspect the results after optimizing the pipe layout:                                                        |
|           |                                                                                                                                          |
|           | 1) Under the tab “Spatial results”:                                                                                                      |
|           |                                                                                                                                          |
|           | a) It is possible to see the optimal inner diameters of the pipelines that are to be laid and the diameters of the                       |
|           |                                                                                                                                          |
|           |    |image9|                                                                                                                              |
|           |                                                                                                                                          |
|           | b) It is possible to see the maximum flow velocity compared to a limit for te pipes are are placed                                       |
|           |                                                                                                                                          |
|           |     |image10|                                                                                                                            |
|           |                                                                                                                                          |
|           | 1) Under the tab “Other results”:                                                                                                        |
|           |                                                                                                                                          |
|           | a) It is possible to see the optimization results in tabular format                                                                      |
|           |                                                                                                                                          |
|           | |image11|                                                                                                                                |
+-----------+------------------------------------------------------------------------------------------------------------------------------------------+

.. |image0| image:: media/image2.png
   :width: 0.97569in
   :height: 0.65625in
.. |image1| image:: media/image3.png
   :width: 5.48257in
   :height: 4.50208in
.. |image2| image:: media/image4.png
   :width: 5.55494in
   :height: 2.99842in
.. |image3| image:: media/image5.png
   :width: 5.55486in
   :height: 1.34541in
.. |image4| image:: media/image6.png
   :width: 5.62083in
   :height: 4.60069in
.. |image5| image:: media/image7.png
   :width: 8.40069in
   :height: 4.61389in
.. |image6| image:: media/image8.png
   :width: 5.58791in
   :height: 3.65759in
.. |image7| image:: media/image9.png
   :width: 5.59890in
   :height: 3.49708in
.. |image8| image:: media/image10.png
   :width: 5.51181in
   :height: 3.34591in
.. |image9| image:: media/image11.png
   :width: 5.51181in
   :height: 5.70951in
.. |image10| image:: media/image12.png
   :width: 5.51181in
   :height: 5.66281in
.. |image11| image:: media/image13.png
   :width: 5.31496in
   :height: 3.58270in
.. |image12| image:: media/topo_icon.png
   :width: 0.97569in
   :height: 0.65625in
