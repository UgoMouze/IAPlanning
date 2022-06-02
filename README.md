# IAPlanning
Learning how to do planning in Planning Domain Definition Language.

## Practice
Using the domain definition [gripper.pddl](https://github.com/UgoMouze/IAPlanning/blob/main/gripper/gripper.pddl) and the problem definition [gripperpb1.pddl](https://github.com/UgoMouze/IAPlanning/blob/main/gripper/gripperpb1.pddl)  

***Draw***  
*Draw the states of the problem*  
//TODO  
  

***Operators***  
*What are the available operators, given the planning domain definition?*  
The operators are `Pick`, `Move` and `Drop`.

---
## Define domain and problems with switches


***Version1***  
*Define a problem PDDL file (objects, initial situation, and the goal) for the following problem :*
- *There are three switches, all initially off.*
- *The goal is to turn all three switches on.*
- *Compute a plan for this problem*  

The solution can be found in [pb1.pddl](https://github.com/UgoMouze/IAPlanning/blob/main/switch/pb1.pddl) that is using the domain defined with [switches.pddl](https://github.com/UgoMouze/IAPlanning/blob/main/switch/switches.pddl).  
It represents each states within a category `state` that is used in `swstate` to link it with a switch.  

---
***Version2***  
*Update the problem and the domain so that:*
- *There are five switches.*
- *A switch can only be switched on if it has a neighbor that is already on.*
- *The five switches are in a row so that each switch has two neighbors, except the two at the ends of the row which only have one.*
- *The five switches are in initial positions: {off, off, on, off, off}.*  
  
The solution of this new problem is on the next file [pb2.pddl](https://github.com/UgoMouze/IAPlanning/blob/main/switch/pb2.pddl) that is using the domain defined with [switches2.pddl](https://github.com/UgoMouze/IAPlanning/blob/main/switch/switches2.pddl).  
For this one, the problem required to have neighbors. Remodelling the states was required. The states are now defined with `isOn` and `isOff` that are linked with a switch, and the is now a `neighbors` relation that will be written on both sides to be exhaustive.

---
## Understanding GraphPlan Algorithm
Using the domain definition [blockworld.txt](https://github.com/UgoMouze/IAPlanning/blob/main/BlocksWorld/blocksworld.txt) and the problem definition [blocksworldpb1.txt](https://github.com/UgoMouze/IAPlanning/blob/main/BlocksWorld/blocksworldpb1.txt)  

***Representation***  
*What are they representing?*  

 The file `blocksworld.txt` represents a set of action to pick and place blocks on top of a table, or on top of each other.  
 Meanwhile, the file `blocksworldpb1.txt` is representing a set of items that are present in the representation and. It is also representing the initial state and the final state.   

---
 ***Meaning***  
*What is the meaning of each of the three lines between `[` and `]` in `blocksworld.txt`?*  

The three lines between brackets are representing the set of states that are `needed to perform the operation`.  
Then there are the `states that are updated` after the operation. 
Finally it is represented the `states that are removed` from the set of current actions after the action is performed.  

---
***Execution***  
*Is the plan produced in [output.pln](https://github.com/UgoMouze/IAPlanning/blob/main/output/output.pln) correct?*  

The plan given is correct since it gives the demanded state.  
Indeed, by using the operator `Pickup(a1)`, the state `Holding(a1)` is permitting the action `Stack(a1, b1)` that will make the state `On(a1, b1)`.  

-------

*What is the depth of the plan?*  

The number of objects in the file is 2, so the `depth of the plan 2`.  

---
***Interpretation***  
Open and interpret the graphplan trace presented in [output.gp](https://github.com/UgoMouze/IAPlanning/blob/main/output/output.gp)  
*What is the `proposition` layer?*  

The proposition layer is stating the `different states` that are in the moment the layer has been stated.  

---
*What is the `action` layer?*  

The action layer enumerates the `different actions` that can be operated after the proposition layer.  

---
*What are the `Mutex expressions` that are written?*  

The Mutex expressions are listing the propositions/actions that are `not compatible` with the one expressed before.  

---
*What does the `noop` term that appears in some expressions mean? Why do we need it?*

The noop term signifies there are `no action made to change` the proposition after the `noop`. We need this expression for `backtracking` purposes.  

---
*Is the `number of Action Layers` consistent with the depth of the plan? Is it always the case?*  

The number of action layers are consistent with the depth of the plan `in our case`. If we had used a different method, for example using A*, it could have been different to find the optimal solution.  

---
*Why do we have only the operator `Pickup` in the first Action Layer?*  

As the operator `Pickup` is the only one that `can be operated` within the scope of the first proposition layer, it is the only one that appears in the first action layer.  

---
*Why do we have a Mutex relation between `noopClear(a1)` and `Pickup(a1)` in the first Action Layer? Why the other Mutex?*  

We have the Mutex relation between `noopClear(a1)` and `Pickup(a1)` because it is impossible to have the proposition `Clear(a1)` after using the action `Pickup(a1)`.  

---
## Modeling Domains and Problems planning with graphplan
In this part, we will use [javagp](https://github.com/pucrs-automated-planning/javagp).  

***Rubik's cube***  
*Model and represent in PDDL the domain and problem of 1D Rubik’s Cube from the description given below.*  

*1D Rubik's Cube is a line of 6 numbers with original position: 1 2 3 4 5 6 which can be rotated in
3 different ways in groups of four:*  
operator 0: **1 2 3 4 5 6** -> **4 3 2 1 5 6**  
operator 1: **1 2 3 4 5 6** -> **1 5 4 3 2 6**  
operator 2: **1 2 3 4 5 6** -> **1 2 6 5 4 3**  
*Given a scrambled line, return the shortest sequence of rotations to restore the original position.*  

*Examples:*  
*solve 1 3 2 6 5 4*  
*result is: 1 2 1*  

*solve 5 6 2 1 4 3*  
*result is: 0 2*  

*solve 6 5 4 1 2 3*  
*result is: 0 1 2*  

//TODO  

---
***Test and validate***  
*Test and validate your domain and problems representation by launching the [javagp](https://github.com/pucrs-automated-planning/javagp) graphplan planner on them. What is the resulting plan? To edit the domain and problem
files in PDDL, you can use this [editor](http://editor.planning.domains/)*.

