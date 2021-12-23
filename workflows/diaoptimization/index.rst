**What question scan you answer with this workflow?**

1. Question 1

2. Question 2

3. Question 3 etc.

**What steps the user needs to take?**

In this workflow the following steps are taken:

Step 1: Do this

Step 2: Do now this

Step 3: Now do this

**Step 1: Do this (this is needed for all steps)**

Which sub steps need to be taken for step 1 (What paragraphs we need to
write and what questions we answer there)

**What question do you want to answer with this workflow?**

1. **How to find the minimal pipe sizes of the network**

2. **How to find the optimal routing of the network **

3. **How to find the network with the least amount of heat loss**

***These goals are a function of minimize pipe sizes***

1. ***Identifying the pipe sizes of the network with the least amount of
   CAPEX***

2. ***Identifying the pipe sizes of the network with the least amount of
   OPEX***

3. ***Identifying the pipe sizes of the network with the lowest TCO***

1. **Minimal Pipe Sizes**

   1. Setting the topo-optimizer;

      1. Select the goal minimize pipes

      2. defining constraints,

      3. selecting and defining range of the pipes

   2. Running the topo-optimizer

   3. Interpreting the results

1.1.1. Select the goal: minimize pipes

| Firstly, the topo-optimizer tab should be opened.
| To do this click on the model input adjustments tab.
| Then click on the topo-optimizer goals and constraints.
| This screen should appear.

| Secondly the goals and constraints need to be defined.
| Under the tab ‘Goals’ select minimize pipe sizes and set a system
  lifetime.
| In the tab ‘Limits (Constraints)’ the system wide pressure constraints
  can be defined and selected. The maximum flow velocity is a
  characteristic of a pipe and can thus not be defined here. If a
  constraint is selected the topo-optimizer will find the optimal
  network that is within the defined constraints.

As the goal now is only to optimize the pipes, the nodes tab will not be
used.

In the pipes tab, the bounds of the pipes can be defined and which
characteristics of the pipes are to be optimized/tuned.

In this case, only the sizes will be tuned of the pipes. Select the
pipes that need to optimized and set the bounds of their sizes.

After setting all constraints are set, the modifications can be applied
with a specific name so it can be used in a scenario. The name can be
changed by clicking and typing in the name bar and the modifications can
be set by clicking the ‘apply’ button on the right.

1. **Optimal Routing**

   1. Setting the topo-optimizer

      1. Select the goal minimize pipes

      2. defining constraints,

      3. selecting and defining range of the pipes

   2. Running the topo-optimizer

   3. Interpreting the results

2. **Minimizing heat loss**

   1. Setting the topo-optimizer

      1. Select the goal minimize pipes

      2. defining constraints,

      3. selecting and defining range of the pipes

   2. Running the topo-optimizer

   3. Interpreting the results
