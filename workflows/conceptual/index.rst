Creating a simple network:
==========================

Tested for version XXXXX

This tutorial focus on the introduction to the ESDL Map Editor as well
as the creation of the first basic network in the map editor.

For more detailed information and tutorial to the ESDL Map Editor follow
this link: `Welcome to the ESDL MapEditor documentation — ESDL MapEditor
documentation
(esdl-mapeditor-documentation.readthedocs.io) <https://esdl-mapeditor-documentation.readthedocs.io/en/latest/index.html>`__

This tutorial shows the steps to find the answer to the following
questions:

1) How to enable the asset draw toolbar?

2) What are the different assets?

3) How to place assets on the map?

4) How to connect assets?

5) How to setup the energy carriers?

6) How to add heat demand profiles?

7) How to export the network?

8) How to save/load the network?

To achieve these results the following workflows and packages are used:

+------------+------------------------------------------------+
| |image0|   | ESDL Map Editor is used to create a network.   |
+============+================================================+
+------------+------------------------------------------------+

+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 1    | Go to `ESDL Map Editor (hesi.energy) <https://mapeditor-beta.hesi.energy/editor>`__ and use credentials to login.                                                                                                                                           |
+===========+=============================================================================================================================================================================================================================================================+
| Step 2    | Figure below presents the user interface (UI) of the ESDL Map Editor.                                                                                                                                                                                       |
|           |                                                                                                                                                                                                                                                             |
|           | |image1|                                                                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | 1 – Top Level Menus, 2 – Asset Draw Toolbar, 3 – Control Panel, 4 – EDR Asset Menu, 5 – Layer Control.                                                                                                                                                      |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 3    | Enabling the Asset Draw Toolbar (2).                                                                                                                                                                                                                        |
|           |                                                                                                                                                                                                                                                             |
|           | Proceed to Top Level Menus (1) -> View -> Settings.                                                                                                                                                                                                         |
|           |                                                                                                                                                                                                                                                             |
|           | In the “Application Settings” window proceed to “UI Settings”. Under “View Modes” select                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | CHESS as default view mode. This will enable CHESS based assets in the Asset Draw Toolbar.                                                                                                                                                                  |
|           |                                                                                                                                                                                                                                                             |
|           | Now Asset Draw Toolbar (2) should present the proper assets.                                                                                                                                                                                                |
|           |                                                                                                                                                                                                                                                             |
|           | What are the different assets?                                                                                                                                                                                                                              |
|           |                                                                                                                                                                                                                                                             |
|           | |image2|                                                                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | **Description by asset’s basic functionality:**                                                                                                                                                                                                             |
|           |                                                                                                                                                                                                                                                             |
|           | Consumption: the demand for energy (Household/city lectrical and heat consumptions),                                                                                                                                                                        |
|           |                                                                                                                                                                                                                                                             |
|           | Conversion: the ability to convert energy (Heat pump, transformer, gas burner).                                                                                                                                                                             |
|           |                                                                                                                                                                                                                                                             |
|           | Production: the ability to produce energy (Solar PV, wind turbine),                                                                                                                                                                                         |
|           |                                                                                                                                                                                                                                                             |
|           | Storage: the ability to store energy (Battery, heat buffer),                                                                                                                                                                                                |
|           |                                                                                                                                                                                                                                                             |
|           | Transport: the ability to transport energy (District heating, electrical grid),                                                                                                                                                                             |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 4    | Lets add the first asset to the map.                                                                                                                                                                                                                        |
|           |                                                                                                                                                                                                                                                             |
|           | Simply click on an asset in the Asset Draw Toolbar and drag it onto the map.                                                                                                                                                                                |
|           |                                                                                                                                                                                                                                                             |
|           | Click on the Production asset and drag it anywhere on the map.                                                                                                                                                                                              |
|           |                                                                                                                                                                                                                                                             |
|           | |image3|                                                                                                                                                                                                                                                    |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 5    | Lets add another Production asset and a couple of Consumption assets.                                                                                                                                                                                       |
|           |                                                                                                                                                                                                                                                             |
|           | |image4|                                                                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | Now there are assets present on the map but currently they do not do anything. First they require a connection.                                                                                                                                             |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 6    | However, before that, there is one more asset that needs to be added.                                                                                                                                                                                       |
|           |                                                                                                                                                                                                                                                             |
|           | Proceed to EDR Asset Menu (4).                                                                                                                                                                                                                              |
|           |                                                                                                                                                                                                                                                             |
|           | Select the first drop down menu, usually says “Area” and locate asset called “Joint” under Transport section.                                                                                                                                               |
|           |                                                                                                                                                                                                                                                             |
|           | Joints are needed in places where several pipes are connect.                                                                                                                                                                                                |
|           |                                                                                                                                                                                                                                                             |
|           | Once the asset is selected through EDR Asset Menu, they can be placed on the map.                                                                                                                                                                           |
|           |                                                                                                                                                                                                                                                             |
|           | EDR Asset Menu has more assets available for use that the Asset Draw Toolbar.                                                                                                                                                                               |
|           |                                                                                                                                                                                                                                                             |
|           | Add Joints to your network, where there are might be several pipe connections.                                                                                                                                                                              |
|           |                                                                                                                                                                                                                                                             |
|           | For example from the asset to the rest of the network or another asset.                                                                                                                                                                                     |
|           |                                                                                                                                                                                                                                                             |
|           | |image5|                                                                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | In this case, there are joints at every Consumer and Producer Asset, once the pipes are                                                                                                                                                                     |
|           |                                                                                                                                                                                                                                                             |
|           | added it will be visible where they connect and joints are required.                                                                                                                                                                                        |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 7    | When the mouse is hovered over an asset, two connection points will appear.                                                                                                                                                                                 |
|           |                                                                                                                                                                                                                                                             |
|           | They are called Ports. Most assets have two, In and Out ports but more can be added                                                                                                                                                                         |
|           |                                                                                                                                                                                                                                                             |
|           | This can be seen when and asset is Left Clicked.                                                                                                                                                                                                            |
|           |                                                                                                                                                                                                                                                             |
|           | An asset overview window will show with most important information about that selected                                                                                                                                                                      |
|           |                                                                                                                                                                                                                                                             |
|           | asset.                                                                                                                                                                                                                                                      |
|           |                                                                                                                                                                                                                                                             |
|           | |image6|                                                                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | These ports will help to represent the network through a Supply and Return paths.                                                                                                                                                                           |
|           |                                                                                                                                                                                                                                                             |
|           | Lets draw a return pipe path of the network (The direction of a Return is from a Consumer to a Producer).                                                                                                                                                   |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 8    | Click on a Transportation Asset, Pipe in this case.                                                                                                                                                                                                         |
|           |                                                                                                                                                                                                                                                             |
|           | |image7|                                                                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | Once clicked, Control Panel will have the following options available: Finish, Delete last point,                                                                                                                                                           |
|           |                                                                                                                                                                                                                                                             |
|           | Cancel.                                                                                                                                                                                                                                                     |
|           |                                                                                                                                                                                                                                                             |
|           | Mouse point will change and now pipes can be drawn on the map.                                                                                                                                                                                              |
|           |                                                                                                                                                                                                                                                             |
|           | Start clicking around the map to start drawing the pipe.                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | Click on the “Out” port of the Joint.                                                                                                                                                                                                                       |
|           |                                                                                                                                                                                                                                                             |
|           | |image8|                                                                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | Drag the line to the “In” port of the Producer.                                                                                                                                                                                                             |
|           |                                                                                                                                                                                                                                                             |
|           | |image9|                                                                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | Click on the “In” port of the Producer to stop drawing the pipe.                                                                                                                                                                                            |
|           |                                                                                                                                                                                                                                                             |
|           | |image10|                                                                                                                                                                                                                                                   |
|           |                                                                                                                                                                                                                                                             |
|           | Finish the network. Do not forget to connect Consumer’s Out port with the Joint’s In port.                                                                                                                                                                  |
|           |                                                                                                                                                                                                                                                             |
|           | In the Control Panel, if clicked on Edit Layers button, second to last icon. All assets can be moved around the map and all pipes can be edited by adding more points and moving the points around to shape the direction of the pipe in any way desired.   |
|           |                                                                                                                                                                                                                                                             |
|           | Figure below shows one of many possible results.                                                                                                                                                                                                            |
|           |                                                                                                                                                                                                                                                             |
|           | |image11|                                                                                                                                                                                                                                                   |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 9    | Now lets add Energy Carrier to the network.                                                                                                                                                                                                                 |
|           |                                                                                                                                                                                                                                                             |
|           | Proceed to Top Level Menus -> Edit -> Energy carriers…. Upon clicking a window “Energy Carriers and Commodities” will appear.                                                                                                                               |
|           |                                                                                                                                                                                                                                                             |
|           | Under “Carrier type” select a “Heat Commodity”.                                                                                                                                                                                                             |
|           |                                                                                                                                                                                                                                                             |
|           | “Name” – Return.                                                                                                                                                                                                                                            |
|           |                                                                                                                                                                                                                                                             |
|           | “Supply Temperature” – 0.                                                                                                                                                                                                                                   |
|           |                                                                                                                                                                                                                                                             |
|           | “Return Temperature” – desired return temperature, in this example, 40.                                                                                                                                                                                     |
|           |                                                                                                                                                                                                                                                             |
|           | Click “Add”. Once added, a colour picker can be used to select a colour. This colour will be used for pipes.                                                                                                                                                |
|           |                                                                                                                                                                                                                                                             |
|           | Add another Heat Commodity carrier for Supply path.                                                                                                                                                                                                         |
|           |                                                                                                                                                                                                                                                             |
|           | Set “Supply Temperature” – 70. “Return Temperature” – 0.                                                                                                                                                                                                    |
|           |                                                                                                                                                                                                                                                             |
|           | Click “Add”.                                                                                                                                                                                                                                                |
|           |                                                                                                                                                                                                                                                             |
|           | Now with commodities created, lets add them to the network.                                                                                                                                                                                                 |
|           |                                                                                                                                                                                                                                                             |
|           | Right click on any return path pipe and select “Set Carrier” option. Select the created “Return” commodity. After the page refresh the commodities will update the network.                                                                                 |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 10   | Now the supply part of the network could be created using the previous steps. However, instead one of the services will be used to aid with that.                                                                                                           |
|           |                                                                                                                                                                                                                                                             |
|           | Go to Top Level Menus -> Services -> External ESDL services. In a newly showed window open “ESDL Dual Pipe Service”. Run service.                                                                                                                           |
|           |                                                                                                                                                                                                                                                             |
|           | After a couple of seconds, the created network will be duplicated however, now it is with a supply part of the network.                                                                                                                                     |
|           |                                                                                                                                                                                                                                                             |
|           | |image12|                                                                                                                                                                                                                                                   |
|           |                                                                                                                                                                                                                                                             |
|           | Use Edit button from Control Panel to edit and re-position the pipes if need be.                                                                                                                                                                            |
|           |                                                                                                                                                                                                                                                             |
|           | In Layer Control part of the user interface, the original network can be removed.                                                                                                                                                                           |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 11   | Now ports of all assets can be checked to validate that all connections are correct.                                                                                                                                                                        |
|           |                                                                                                                                                                                                                                                             |
|           | This can be done manually, but there is another ESDL external service that helps with that.                                                                                                                                                                 |
|           |                                                                                                                                                                                                                                                             |
|           | Once again, go to Go to Top Level Menus -> Services -> External ESDL services.                                                                                                                                                                              |
|           |                                                                                                                                                                                                                                                             |
|           | In a newly showed window open “ESDL Validator”.                                                                                                                                                                                                             |
|           |                                                                                                                                                                                                                                                             |
|           | Under schema, select “CHESS validation schema”. Press select and Run ESDL service.                                                                                                                                                                          |
|           |                                                                                                                                                                                                                                                             |
|           | If there are any errors, they will be presented in the same asset feedback window and also highlighted on the map.                                                                                                                                          |
|           |                                                                                                                                                                                                                                                             |
|           | For example, if one of the pipes is removed at one the producers the following errors will show:                                                                                                                                                            |
|           |                                                                                                                                                                                                                                                             |
|           | |image13|                                                                                                                                                                                                                                                   |
|           |                                                                                                                                                                                                                                                             |
|           | If the service does not find any errors, the following message will be displayed.                                                                                                                                                                           |
|           |                                                                                                                                                                                                                                                             |
|           | |image14|                                                                                                                                                                                                                                                   |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 12   | As a final step, consumers need a demand profile.                                                                                                                                                                                                           |
|           |                                                                                                                                                                                                                                                             |
|           | To add a profile, right click on a consumer asset on the map and select: Set profile of InPort: In. In a new window under “Add profile to port:” modify the desired settings:                                                                               |
|           |                                                                                                                                                                                                                                                             |
|           | -  Under, “profile class” select from a variety of available profiles or upload own profile.                                                                                                                                                                |
|           |                                                                                                                                                                                                                                                             |
|           | -  Make sure “multiplier” is present, any value besides 0.                                                                                                                                                                                                  |
|           |                                                                                                                                                                                                                                                             |
|           | -  “Type” could remain the same.                                                                                                                                                                                                                            |
|           |                                                                                                                                                                                                                                                             |
|           | -  “Quantity and Unit” depend on the selected profile. Typical to use “power in kW”.                                                                                                                                                                        |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step 13   | Under Top Level Menus -> File -> Save ESDL. Save the file.                                                                                                                                                                                                  |
|           |                                                                                                                                                                                                                                                             |
|           | Top Level Menus can also be used to load an existing ESDL network or a network modified or resulted from other WISE toolkit applications.                                                                                                                   |
|           |                                                                                                                                                                                                                                                             |
|           | Now there is an ESDL file with a full and hopefully working network that can be used further with the rest of WISE Toolkit.                                                                                                                                 |
|           |                                                                                                                                                                                                                                                             |
|           | Good luck!                                                                                                                                                                                                                                                  |
+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. |image0| image:: media/image1.png
   :width: 0.87500in
   :height: 0.90625in
.. |image1| image:: media/image2.png
   :width: 7.26931in
   :height: 3.58333in
.. |image2| image:: media/image3.png
   :width: 5.70049in
   :height: 0.73340in
.. |image3| image:: media/image4.png
   :width: 5.30000in
   :height: 2.20833in
.. |image4| image:: media/image5.png
   :width: 5.28264in
   :height: 4.81626in
.. |image5| image:: media/image6.png
   :width: 5.39167in
   :height: 5.10000in
.. |image6| image:: media/image7.png
   :width: 6.50000in
   :height: 3.85833in
.. |image7| image:: media/image8.png
   :width: 5.10000in
   :height: 0.57500in
.. |image8| image:: media/image9.png
   :width: 3.12500in
   :height: 1.86628in
.. |image9| image:: media/image10.png
   :width: 2.70833in
   :height: 2.01667in
.. |image10| image:: media/image11.png
   :width: 2.64167in
   :height: 1.66667in
.. |image11| image:: media/image12.png
   :width: 4.47500in
   :height: 5.05000in
.. |image12| image:: media/image13.png
   :width: 6.49167in
   :height: 3.98333in
.. |image13| image:: media/image14.png
   :width: 6.50000in
   :height: 3.82500in
.. |image14| image:: media/image15.png
   :width: 4.18333in
   :height: 1.55000in
