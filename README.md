# IAPlanning
Learning how to do planning in Planning Domain Definition Language.
## Practice
Using the domain definition [gripper.pddl](https://github.com/UgoMouze/IAPlanning/blob/gripper/gripper.pddl) and the problem definition [gripperpb1.pddl](https://github.com/UgoMouze/IAPlanning/blob/gripper/gripperpb1.pddl)  

***Draw***  
*Draw the states of the problem*  
//TODO  
  
***Operators***  
*What are the available operators, given the planning domain definition?*  
The operators are `Pick`, `Move` and `Drop`.


## Define domain and problems with switches
***Version1***  
*Define a problem PDDL file (objects, initial situation, and the goal) for the following problem :*
- *There are three switches, all initially off.*
- *The goal is to turn all three switches on.*
- *Compute a plan for this problem*  

The solution can be found in [pb1.pddl](https://github.com/UgoMouze/IAPlanning/blob/switch/pb1.pddl) that is using the domain defined with [switches.pddl](https://github.com/UgoMouze/IAPlanning/blob/switch/switches.pddl).  
It represents each states within a category `state` that is used in `swstate` to link it with a switch.  

***Version2***  
*Update the problem and the domain so that:*
- *There are five switches.*
- *A switch can only be switched on if it has a neighbor that is already on.*
- *The five switches are in a row so that each switch has two neighbors, except the two at the ends of the row which only have one.*
- *The five switches are in initial positions: {off, off, on, off, off}.*  
  
The solution of this new problem is on the next file [pb2.pddl](https://github.com/UgoMouze/IAPlanning/blob/switch/pb2.pddl) that is using the domain defined with [switches2.pddl](https://github.com/UgoMouze/IAPlanning/blob/switch/switches2.pddl).  
For this one, the problem required to have neighbors. Remodelling the states was required. The states are now defined with `isOn` and `isOff` that are linked with a switch, and the is now a `neighbors` relation that will be written on both sides to be exhaustive.

