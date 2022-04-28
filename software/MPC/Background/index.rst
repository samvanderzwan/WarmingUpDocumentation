.. _mpc_background:


MPC Background Information
-----------------------------


Simulate-Advanced Control-MPC
-----------------------------

This work workflow is meant to find to actuate CHESS with MPC in a
manner that minimizes the operational expense. To achieve the minimal
operational cost three goals are used in both optimization layers. The
goals have different priorities and are optimized for with a goal
programming approach. Conceptually this means that higher priority goals
are optimized for first and lower priority goals cannot affect the
optimality of higher priority goals.

The first highest priority goal is to meet the demands. This means that
the optimization can use the sources and storages however it wants in
order to meet the demands. Assuming that the network is properly sized
and designed this goal should always find a solution with zero penalty
(i.e. can meet all demands) relatively fast. The square ensures that, in
case we cannot meet demands, we prefer multiple smaller supply shortages
to a single large one.

.. math:: \text{Goa}l_{1} = \sum_{\text{Demands}}^{}\left( \text{HeatDeman}d_{\text{target}} - HeatDemand_{\text{realized}} \right)^{2}

The second goal is to utilize the geothermal sources as constant as
possible with a desired flow rate. This desired flow rate can be set in
ESDL map editor. This goal is introduced as network operators typically
desire to have maximum utilization of the geothermal sources to meet
subsidy requirements. Typically, the desired flow rate should therefore
be set to the maximum flow rate.

.. math:: \text{Goa}l_{2} = \sum_{\text{GeothermalSources}}^{}\left( \text{FlowRat}e_{\text{target}} - FlowRate_{\text{realized}} \right)^{2} 

The third and final goal is to minimize the operational cost of
producing the heat. This goal is what ensures that the user does not
have to manually tune merit orders to achieve the desired result. Note
that this goal, unlike the previous goals, does not have a square. It is
assumed that the costs scale linearly. If a square would be used, the
optimizer would try to minimize peak supply moments.

.. math:: \text{Goa}l_{3} = \sum_{\text{Sources}}^{}{VariableOperationalCost*HeatProduction_{\text{realized}}}

To make sure that the storage is used the system must either have
geothermal sources or a lack of production capacity. When there are no
geothermal sources and sufficient production capacity, then it will
always be cheaper to directly deliver the heat, instead of storing and
losing some of it before delivering it to the clients.

Optimization-Buffer sizing
--------------------------

This work workflow is meant to find the lowest total buffer size and
best pipe sizing/routing that still meets demands. This workflow
utilizes only the HeatMixin part of the RTC-Tools Heat Network library,
meaning it assumes fixed supply and return temperatures throughout the
entire network. To achieve the minimal network layout cost w.r.t.
buffers and pipe sizes, the optimization is split into five (or more)
goals. As mentioned in “Simulate-Advanced Control-MPC", these goals have
different priorities and are optimized for with a goal programming
approach. Conceptually this means that higher priority goals are
optimized for first and lower priority goals cannot affect the
optimality of higher priority goals.

Note that there are a few constraints that can be specified by the user
that have to be satisfied at all times. These are a.o. the maximum power
supply of sources, but particularly of interest for this workflow
include the maximum number of buffers that can be placed, the maximum
velocity and minimum/maximum pressure inside any pipe.

The first and highest priority goal is to meet the demands. This means
that the optimization can use the sources and storages however it wants
in order to meet the demands. Assuming that the network is properly
sized and designed this goal should always find a solution with zero
penalty (i.e. can meet all demands) relatively fast. The square ensures
that the demand is met at every time step.

.. math:: \text{Goa}l_{1} = \sum_{\text{Demands}}^{}\left( \text{HeatDeman}d_{\text{target}} - HeatDemand_{\text{realized}} \right)^{2}

The second goal is to utilize the geothermal sources as constant as
possible with a desired flow rate. This desired flow rate can be set in
ESDL map editor. This goal is introduced as network operators typically
desire to have maximum utilization of the geothermal sources to meet
subsidy requirements. Typically, the desired flow rate should therefore
be set to the maximum flow rate.

.. math:: \text{Goa}l_{2} = \sum_{\text{GeothermalSources}}^{}\left( \text{FlowRat}e_{\text{target}} - FlowRate_{\text{realized}} \right)^{2}

The third goal is to prioritize certain sources over others. For
example, one can prefer a residual heat source over a biomass one, and
prefer both over a gas boiler. In such a scenario, the residual heat
source might have priority 1, the biomass station a priority of 2, and
the gas boiler a priority of 3. However, we do not want to minimize the
overall energy production yet (i.e. sum of all sources), as that would
take away freedom from the pipe sizing/routing and buffer-sizing goals
that follow. The number of sub-goals is then N – 1, with N the number of
source priorities. In the above example, we would therefore have two
sub-goals. First, we have:

.. math:: \text{Goa}l_{3} = \left\lbrack \text{HeatFlowRat}e_{\text{GasBoiler}} \right\rbrack_{\min}

<Minimize gas boiler usage>

And after we would:

.. math:: \text{Goa}l_{4} = \left\lbrack \text{HeatFlowRat}e_{\text{Biomass}} \right\rbrack_{\min}

<Minimize biomass station usage>

After these goals on producers and demands, we move to the goals on the
network layout like pipes and buffers. Every pipe can be indicated as
having optional routing, meaning the optimization has to decide whether
it want to place the pipe at all or not. Every pipe also has a minimum
and maximum DN size, between which the optimization has to choose an
option. These two properties of pipes (routing and sizing) are combined
into a single optimization goal, with an objective function that is a
proxy for their cost:

.. math:: \text{Goa}l_{\text{pipe}} = \sum_{\text{pipes}}^{}{\text{Diamete}r_{\text{pipe}}*Length_{\text{pipe}}}

<Minimize L\*D>

The above priority can get particularly hard to optimize in case of a
maximum pressure. Particularly in larger networks, it can lead to a
situation in which choosing a diameter for every pipe such that the
maximum velocity is close to the user-specified maximum velocity is no
longer possible. This is because smaller pipes have higher pressure
drops (as a result of their high velocity), and as such will lead to too
high of a pressure in the pipes closer to the sources/pump.

Lastly, the buffers are optimized, meaning both placement (yes/no) and
the total size of all buffers. The maximum number of buffers to be
placed can also be specified by the user. For example, a user might give
6 possible locations, but state that only a single buffer can be placed
(of a particularly maximum size). In that case this goal will find the
best location for said buffer, where it can be as small as possible
(always smaller than the user-specified upper bound). Note that the
maximum number of placed buffers is a constraint, and therefore not part
of the below goal objective:

<Minimize total size of all buffers>

.. math:: \text{Goa}l_{\text{buffer}} = \sum_{\text{buffer}}^{}{\text{StoredHea}t_{\max}}



Optimization-Supply temperature minimization
--------------------------------------------

This workflow is meant to find the lowest operational supply temperature
that still meets the minimum feed temperature at the client side. This
workflow has a lot in common with the Simulate-Advanced Control-MPC
workflow, with which it shares the first two objectives. However, the
final goal is focused on minimizing the temperature instead of the
operational cost.

The first highest priority goal is to meet the demands. This means that
the optimization can use the sources and storages however it wants in
order to meet the demands. . Assuming that the network is properly sized
and designed this goal should always find a solution with zero penalty
(i.e. can meet all demands) relatively fast.. . The square ensures that,
in case we cannot meet demands, we prefer multiple smaller supply
shortages to a single large one.

.. math:: \text{Goa}l_{1} = \sum_{\text{Demands}}^{}\left( \text{HeatDeman}d_{\text{target}} - HeatDemand_{\text{realized}} \right)^{2}

The second goal is to utilize the geothermal sources as constant as
possible with a desired flow rate. This desired flow rate can be set in
ESDL map editor. This goal is introduced as network operators typically
desire to have maximum utilization of the geothermal sources to meet
subsidy requirements. Typically, the desired flow rate should therefore
be set to the maximum flow rate.

.. math:: \text{Goa}l_{2} = \sum_{\text{GeothermalSources}}^{}\left( \text{FlowRat}e_{\text{target}} - FlowRate_{\text{realized}} \right)^{2}

Finally, the third goal is designed to find the minimum temperature.
This is done by minimizing the outgoing temperature of the sources. In
ESDL the minTemperature attribute of the HeatingDemands specifies the
minimum feed temperature. The optimization will try to drag down the
outgoing source temperature such that this minimum feed temperature is
exactly matched at the client side. Additionally, for networks with
multiple sources the user can specify that the sources should produce at
the same temperature to avoid undesirable temperature gradients in the
network.

.. math:: \text{Goa}l_{3} = \sum_{\text{sources}}^{}T_{\text{out}}


