.. Warming Up Documentation documentation master file, created by
   sphinx-quickstart on Thu Oct  7 09:54:04 2021.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Model input adjustments
====================================================

How to make scenario adjustments
-----------------------------------------------------

.. important::
    This sample documentation was generated on previous help doc **7_Scen_TimeseriesProfileAdjustments**, needs to be updated.

To accommodate scenario’s various changes could be imagined:

1.	Changes in network topology (e.g. new consumers, producers, pipe connections)
2.	Changes in infrastructure dimensions (e.g. pipe diameters, buffer and pump capacities)
3.	Changes in heat demand or temperature profiles
4.	Changes in optimization goals or constraints

*@1*: These changes should be implemented via de Map Editor. These changes typically result in a new network, which require an update of the location-based data administration.

*@2*: These changes can be applied via the Scenario adjustment Tab. They are location-specific attribute modifications to an existing network and do not require updates of the data administration

*@3*: These changes can be applied via the Scenario adjustment Tab.

*@4*: These changes can be applied via the Scenario adjustment Tab. They are be either location-specific or model wide modifications.

The Map Editor is accessible via the Tree under Prepare Design  Start Map Editor (Figure 1)
The Scenario Adjustments Tab is activated ‘via the Tree when on the node ‘Modify and Run Chess’ or ‘Modify and Run Wanda’ (Figure 1).

Adjustment of dimensions

*  A blue check indicates that the run is successfull and results are available in memory (:numref:`Figure 1`, Chess)
*  A yellow check indicates that input has changed but no rerun is conducted yet. Results shwon apply to the previous succesful run (Figure 1, Wanda)
*  A red exclamation indicates that the run has failed (:numref:`Figure 2`, Wanda)
*  An hourglas indicates that a task is in the queue as another task is currently being executed (:numref:`Figure 3`, Chess)
*  An swirl indicates that a task is being executed (:numref:`Figure 3`, Wanda)

.. _Figure 1:
.. figure:: figures/model_input_adjustment_figure1.png
   :align: center
   :width: 400
   :alt: Activation of Map Editor tab respectively Scenario adjustments tab (Modify and Run task)

.. _Figure 2:
.. figure:: figures/model_input_adjustment_figure2.png
   :align: center
   :width: 400
   :alt: Model run failed

.. _Figure 3:
.. figure:: figures/model_input_adjustment_figure3.png
   :align: center
   :width: 400
   :alt: Various executing run status indicators (swirl=running, hourglass = pending)
