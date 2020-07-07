# Left_Edge_Algorithm
TCL code that implement left edge algorithm for sharing resources, after the scheduling process of a DFG.   

The inputs are two lists:
- The schedule list, which is a list of lists where each sub-element is formatted in this way: {name ST res_id} (node id, starting time, resource id associated)
- The resources list, which is a list of lists, that contain all the resources used in the schedule, where each sub-element is formatted in this way: {res_id delay} 

The output is a list of list where each sub-elemen has 2 parameters, the type of resources and how many are needed. 
