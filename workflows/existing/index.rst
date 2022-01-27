.. _Exisiting:

Creating a simple network:
==========================

Tested for version XXXXX

This tutorial focus on the simple simulation of an existing network in
the computational framework (CF) as well as the possibilities to alter
(sub) scenario's and change the imported Heat Demand.

For more detailed information and tutorial how to create a network
follow this link: `Creating a simple network: — Warming Up Design
toolkit 0.3 documentation
(readthedocs-hosted.com) <https://warmingup-designtoolkitdocumentation.readthedocs-hosted.com/en/latest/workflows/conceptual/index.html>`__

This tutorial shows the steps to find the answer to the following
questions:

1) How to import an existing network in the computational framework
   (CF)?

2) How to simulate your existing network in Chess?

3) How to view results after simulating your network?

4) How to alter scenario's?

5) How to create a sub scenario?

6) How to change the imported heat demand?

To achieve these results the following workflows and packages are used:

+------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image0|   | In the ESDL MapEditor, we draw our existing or conceptual network.                                                                                 |
+------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image1|   | The network is loaded into the computational framework (CF), which allows to simulate the network, alter (sub) scenario's and alter heat demand.   |
+------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image2|   | Within the computational framework (CF), CHESS is used to simulate the network.                                                                    |
+------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

**How to import an existing network in the computational framework
(CF)**

+----------+-----------------------------------------------------------------------------------------+
| Step 1   | Start WiseDesingToolkit by clicking WiseDesignToolkit.cmd in the installation folder.   |
|          |                                                                                         |
|          | *Help what if Wise Design Toolkit is blocked? (Q&A)*                                    |
|          |                                                                                         |
|          | *Note: When opened the start screen should look like this*                              |
|          |                                                                                         |
|          | |image3|                                                                                |
+----------+-----------------------------------------------------------------------------------------+
| Step 2   | Select Import project in CF.                                                            |
|          |                                                                                         |
|          | |image4|                                                                                |
+----------+-----------------------------------------------------------------------------------------+
| Step 3   | Choose desired location to open ESDL from                                               |
|          |                                                                                         |
|          | |image5|                                                                                |
|          |                                                                                         |
|          | *Note: This tutorial will focus on an existing project on the ESDL drive*               |
+----------+-----------------------------------------------------------------------------------------+
| Step 4   | Login to ESDL drive and navigate to the desired ESDL file.                              |
|          |                                                                                         |
|          | *Note: To acquire the accounts to log in please contact……*                              |
|          |                                                                                         |
|          | |image6|                                                                                |
+----------+-----------------------------------------------------------------------------------------+
| Step 5   | Select the desired map location to store the project                                    |
+----------+-----------------------------------------------------------------------------------------+
| Step 6   | Specify the project name and click OK.                                                  |
|          |                                                                                         |
|          | |image7|                                                                                |
|          |                                                                                         |
|          | *Have a bit of patience the first time and it should look like*                         |
+----------+-----------------------------------------------------------------------------------------+

**How to simulate your existing network in CHESS**

+----------+------------------------------------------------------------------------------------------------------+
| Step 1   | Navigatie to the Tasks panel (1) (upper left) and expand the project (2)                             |
|          |                                                                                                      |
|          | |image8|                                                                                             |
+----------+------------------------------------------------------------------------------------------------------+
| Step 2   | Select 'Import Heat Demand' (1) and click on the Run Task (2)                                        |
|          |                                                                                                      |
|          | |image9|                                                                                             |
+----------+------------------------------------------------------------------------------------------------------+
| Step 3   | Informative: If you want to check or alter the imported Heat Demand click the Heat Demand button     |
|          |                                                                                                      |
|          | |image10|                                                                                            |
|          |                                                                                                      |
|          | *Note: This tutorial will focus on an existing project on the ESDL drive*                            |
+----------+------------------------------------------------------------------------------------------------------+
| Step 4   | Click on Run Chess (Rule-Based Control) in the Tasks panel (1) then click scenario composition (2)   |
|          |                                                                                                      |
|          | |image11|                                                                                            |
+----------+------------------------------------------------------------------------------------------------------+

+----------+-------------------------------------------------------------------------------------------+
| Step 5   | Click create, specify a desired name and click apply                                      |
|          |                                                                                           |
|          | *And it should look like this in the taskspanel*                                          |
|          |                                                                                           |
|          | |image12|                                                                                 |
+----------+-------------------------------------------------------------------------------------------+
| Step 6   | Select Test case in the task panel and click the run Tasks button                         |
|          |                                                                                           |
|          | *Note. When successfully finished it should look like the screenshot on the right*        |
|          |                                                                                           |
|          | |image13|                                                                                 |
|          |                                                                                           |
|          | *Note. In the Logs panel (bottom left) you can follow the progress of any task you run*   |
|          |                                                                                           |
|          | |image14|                                                                                 |
+----------+-------------------------------------------------------------------------------------------+

**How to view results after simulating your network**

+----------+--------------------------------------------------------------------------------------------------------------------------------------+
| Step 1   | To view spatial results                                                                                                              |
|          |                                                                                                                                      |
|          | A. Select the tab 'spatial results' and zoom to the existing network                                                                 |
|          |                                                                                                                                      |
|          | |image15|                                                                                                                            |
|          |                                                                                                                                      |
|          | A. To view the spatial results, select any type of asset and result you like in the results panel top left next to the tasks panel   |
|          |                                                                                                                                      |
|          | |image16|                                                                                                                            |
+----------+--------------------------------------------------------------------------------------------------------------------------------------+

+----------+--------------------------------------------------------+
| Step 2   | To view the results in the time series tab             |
|          |                                                        |
|          | 1. Select Time series graphs                           |
|          |                                                        |
|          | 2. select the simulation method à in this case chess   |
|          |                                                        |
|          | 3. select the desired assets                           |
|          |                                                        |
|          | 4. Select the desired data you want to show            |
|          |                                                        |
|          | |image17|                                              |
+----------+--------------------------------------------------------+


**How to alter scenario's**

+----------+----------------------------------------------------------------------------+
| Step 1   | To start a scenario composition                                            |
|          |                                                                            |
|          | 1. Select the tab 'scenario                                                |
|          |                                                                            |
|          | 2. Select the button 'create'                                              |
|          |                                                                            |
|          | |image18|                                                                  |
+----------+----------------------------------------------------------------------------+
| Step 2   | Within the scenario composition manager you can specify a scenario's by:   |
|          |                                                                            |
|          | a) Adding a specific name;                                                 |
|          |                                                                            |
|          | b) Define the task you would like to run                                   |
|          |                                                                            |
|          | c) Define the ESDL you would like to use (basic or optimized)              |
|          |                                                                            |
|          | d) Define the simulation step                                              |
|          |                                                                            |
|          | e) Define the heat demand (standard model demand or an altered demand)     |
|          |                                                                            |
|          | f) Any Chess modification                                                  |
|          |                                                                            |
|          | g) Any KPI cost and emission factors added                                 |
+----------+----------------------------------------------------------------------------+
| Step 3   | To save the composed scenario select 'Apply' (3)                           |
|          |                                                                            |
|          | |image19|                                                                  |
+----------+----------------------------------------------------------------------------+
| Step 4   | Eventually the result should look like                                     |
|          |                                                                            |
|          | |image20|                                                                  |
+----------+----------------------------------------------------------------------------+

**How to create a sub scenario's**

+----------+--------------------------------------------------------------------------------------------------------------------+
| Step 1   | To create a sub scenario on an existing scenario                                                                   |
|          |                                                                                                                    |
|          | 1. Select the scenario you would like to use as a the base scenario                                                |
|          |                                                                                                                    |
|          | 2. Select the tab 'scenario composition'                                                                           |
|          |                                                                                                                    |
|          | 3. Select the button 'copy'                                                                                        |
|          |                                                                                                                    |
|          | |image21|                                                                                                          |
+----------+--------------------------------------------------------------------------------------------------------------------+
| Step 2   | Within the scenario composition manager you can specify the sub scenario by changing any setting you would like:   |
|          |                                                                                                                    |
|          | a) Adding a specific name for the sub scenario;                                                                    |
|          |                                                                                                                    |
|          | b) Changing the task you would like to run                                                                         |
|          |                                                                                                                    |
|          | c) Changing the ESDL you would like to use (basic or optimized)                                                    |
|          |                                                                                                                    |
|          | d) Changing the simulation step                                                                                    |
|          |                                                                                                                    |
|          | e) Changing the heat demand (standard model demand or an altered demand)                                           |
|          |                                                                                                                    |
|          | f) Changing any Chess modification                                                                                 |
|          |                                                                                                                    |
|          | g) Changing any KPI cost and emission factors added                                                                |
+----------+--------------------------------------------------------------------------------------------------------------------+
| Step 3   | To save the composed scenario select 'Apply' (3)                                                                   |
|          |                                                                                                                    |
|          | |image22|                                                                                                          |
+----------+--------------------------------------------------------------------------------------------------------------------+
| Step 4   | Eventually the result should look like                                                                             |
|          |                                                                                                                    |
|          | |image23|                                                                                                          |
+----------+--------------------------------------------------------------------------------------------------------------------+

**How to change the imported Heat Demand**

+----------+------------------------------------------------------------------------------------------------------------------------------------+
| Step 1   | To change the imported heat demand                                                                                                 |
|          |                                                                                                                                    |
|          | 1. Select 'Import Heat Demand' in the tasks panel                                                                                  |
|          |                                                                                                                                    |
|          | 2. Select the button 'Heat Demand (refresh and modify)'                                                                            |
+----------+------------------------------------------------------------------------------------------------------------------------------------+
| Step 2   | It's possible to alter the heat demand manually or automatically                                                                   |
|          |                                                                                                                                    |
|          | a) Alter the values one by one or by copy paste form a spreadsheet program in the table itself (blue numbers can be altered) (1)   |
|          |                                                                                                                                    |
|          | |image24|                                                                                                                          |
|          |                                                                                                                                    |
|          | a) Select the drop down box next to 'Operation' (1)                                                                                |
|          |                                                                                                                                    |
|          | b) Define a value corresponding to the selected operation (2)                                                                      |
|          |                                                                                                                                    |
|          | c) The altered demand profile is displayed in the graph (3)                                                                        |
|          |                                                                                                                                    |
|          | d) Specify the desired name (4)                                                                                                    |
|          |                                                                                                                                    |
|          | e) Select apply (5)                                                                                                                |
+----------+------------------------------------------------------------------------------------------------------------------------------------+

+----------+----------------------------------------------------------------------------------------------------------------+
| Step 3   | The altered is heat demand is saved and can be selected in any (sub) scenario                                  |
|          |                                                                                                                |
|          | *Note: following pictures 1 and 2 are informative *                                                            |
|          |                                                                                                                |
|          | *Figure 1 Example of a saved heat demand*                                                                      |
|          |                                                                                                                |
|          | *Figure 2 Example of a saved heat demand in the scenario composition tool (link to How to alter scenario's)*   |
+----------+----------------------------------------------------------------------------------------------------------------+


.. |image0| image:: media/image1.png
   :width: 0.87500in
   :height: 0.90625in
.. |image1| image:: media/image1.png
   :width: 0.61940in
   :height: 0.64861in
.. |image2| image:: media/image1.png
   :width: 0.97761in
   :height: 0.64793in
.. |image3| image:: media/image2.png
   :width: 6.30000in
   :height: 2.30139in
.. |image4| image:: media/image3.png
   :width: 5.65694in
   :height: 3.36181in
.. |image5| image:: media/image4.png
   :width: 1.76119in
   :height: 1.56864in
.. |image6| image:: media/image5.png
   :width: 4.37561in
   :height: 2.04195in
.. |image7| image:: media/image6.png
   :width: 3.10460in
   :height: 1.86484in
.. |image8| image:: media/image8.png
   :width: 5.65694in
   :height: 4.26528in
.. |image9| image:: media/image9.png
   :width: 5.32112in
   :height: 3.65672in
.. |image10| image:: media/image10.png
   :width: 6.02401in
   :height: 2.44776in
.. |image11| image:: media/image11.png
   :width: 5.86679in
   :height: 5.05224in
.. |image12| image:: media/image13.png
   :width: 2.70069in
   :height: 1.68657in
.. |image13| image:: media/image14.png
   :width: 5.24627in
   :height: 3.17507in
.. |image14| image:: media/image15.png
   :width: 0.90458in
   :height: 1.69403in
.. |image15| image:: media/image16.png
   :width: 5.65694in
   :height: 3.45972in
.. |image16| image:: media/image17.png
   :width: 3.97297in
   :height: 3.86918in
.. |image17| image:: media/image18.png
   :width: 5.65694in
   :height: 3.22986in
.. |image18| image:: media/image19.png
   :width: 5.65694in
   :height: 2.00417in
.. |image19| image:: media/image20.png
   :width: 5.47015in
   :height: 2.02797in
.. |image20| image:: media/image21.png
   :width: 1.78397in
   :height: 1.88806in
.. |image21| image:: media/image22.png
   :width: 4.97015in
   :height: 2.52595in
.. |image22| image:: media/image23.png
   :width: 5.65694in
   :height: 1.60208in
.. |image23| image:: media/image24.png
   :width: 1.47727in
   :height: 1.44389in
.. |image24| image:: media/image25.png
   :width: 4.90298in
   :height: 2.35399in
