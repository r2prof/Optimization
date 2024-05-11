\ Model assignment
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  13 assignment_cost[M1,L1] + 16 assignment_cost[M1,L2]
   + 12 assignment_cost[M1,L3] + 11 assignment_cost[M1,L4]
   + 15 assignment_cost[M2,L1] + 1000 assignment_cost[M2,L2]
   + 13 assignment_cost[M2,L3] + 20 assignment_cost[M2,L4]
   + 5 assignment_cost[M3,L1] + 7 assignment_cost[M3,L2]
   + 10 assignment_cost[M3,L3] + 6 assignment_cost[M3,L4]
Subject To
 c1[M1]: assignment_cost[M1,L1] + assignment_cost[M1,L2]
   + assignment_cost[M1,L3] + assignment_cost[M1,L4] = 1
 c1[M2]: assignment_cost[M2,L1] + assignment_cost[M2,L2]
   + assignment_cost[M2,L3] + assignment_cost[M2,L4] = 1
 c1[M3]: assignment_cost[M3,L1] + assignment_cost[M3,L2]
   + assignment_cost[M3,L3] + assignment_cost[M3,L4] = 1
 c1[M4]: assignment_cost[M4,L1] + assignment_cost[M4,L2]
   + assignment_cost[M4,L3] + assignment_cost[M4,L4] = 1
 c2[L1]: assignment_cost[M1,L1] + assignment_cost[M2,L1]
   + assignment_cost[M3,L1] + assignment_cost[M4,L1] = 1
 c2[L2]: assignment_cost[M1,L2] + assignment_cost[M2,L2]
   + assignment_cost[M3,L2] + assignment_cost[M4,L2] = 1
 c2[L3]: assignment_cost[M1,L3] + assignment_cost[M2,L3]
   + assignment_cost[M3,L3] + assignment_cost[M4,L3] = 1
 c2[L4]: assignment_cost[M1,L4] + assignment_cost[M2,L4]
   + assignment_cost[M3,L4] + assignment_cost[M4,L4] = 1
Bounds
Binaries
 assignment_cost[M1,L1] assignment_cost[M1,L2] assignment_cost[M1,L3]
 assignment_cost[M1,L4] assignment_cost[M2,L1] assignment_cost[M2,L2]
 assignment_cost[M2,L3] assignment_cost[M2,L4] assignment_cost[M3,L1]
 assignment_cost[M3,L2] assignment_cost[M3,L3] assignment_cost[M3,L4]
 assignment_cost[M4,L1] assignment_cost[M4,L2] assignment_cost[M4,L3]
 assignment_cost[M4,L4]
End
