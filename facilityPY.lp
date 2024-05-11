\ Model facility
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  57900 open[P1] + 69000 open[P2] + 80100 open[P3] + 65300 open[P4]
   + 78700 open[P5]
Subject To
 Capacity[P1]: - 20 open[P1] + trans[P1,W1] + trans[P1,W2] + trans[P1,W3]
   + trans[P1,W4] <= 0
 Capacity[P2]: - 22 open[P2] + trans[P2,W1] + trans[P2,W2] + trans[P2,W3]
   + trans[P2,W4] <= 0
 Capacity[P3]: - 17 open[P3] + trans[P3,W1] + trans[P3,W2] + trans[P3,W3]
   + trans[P3,W4] <= 0
 Capacity[P4]: - 19 open[P4] + trans[P4,W1] + trans[P4,W2] + trans[P4,W3]
   + trans[P4,W4] <= 0
 Capacity[P5]: - 18 open[P5] + trans[P5,W1] + trans[P5,W2] + trans[P5,W3]
   + trans[P5,W4] <= 0
 Demand[W1]: trans[P1,W1] + trans[P2,W1] + trans[P3,W1] + trans[P4,W1]
   + trans[P5,W1] = 15
 Demand[W2]: trans[P1,W2] + trans[P2,W2] + trans[P3,W2] + trans[P4,W2]
   + trans[P5,W2] = 18
 Demand[W3]: trans[P1,W3] + trans[P2,W3] + trans[P3,W3] + trans[P4,W3]
   + trans[P5,W3] = 14
 Demand[W4]: trans[P1,W4] + trans[P2,W4] + trans[P3,W4] + trans[P4,W4]
   + trans[P5,W4] = 20
 Capacity[P1]: - 20 open[P1] + trans[P1,W1] + trans[P1,W2] + trans[P1,W3]
   + trans[P1,W4] <= 0
 Capacity[P2]: - 22 open[P2] + trans[P2,W1] + trans[P2,W2] + trans[P2,W3]
   + trans[P2,W4] <= 0
 Capacity[P3]: - 17 open[P3] + trans[P3,W1] + trans[P3,W2] + trans[P3,W3]
   + trans[P3,W4] <= 0
 Capacity[P4]: - 19 open[P4] + trans[P4,W1] + trans[P4,W2] + trans[P4,W3]
   + trans[P4,W4] <= 0
 Capacity[P5]: - 18 open[P5] + trans[P5,W1] + trans[P5,W2] + trans[P5,W3]
   + trans[P5,W4] <= 0
 Demand[W1]: trans[P1,W1] + trans[P2,W1] + trans[P3,W1] + trans[P4,W1]
   + trans[P5,W1] = 15
 Demand[W2]: trans[P1,W2] + trans[P2,W2] + trans[P3,W2] + trans[P4,W2]
   + trans[P5,W2] = 18
 Demand[W3]: trans[P1,W3] + trans[P2,W3] + trans[P3,W3] + trans[P4,W3]
   + trans[P5,W3] = 14
 Demand[W4]: trans[P1,W4] + trans[P2,W4] + trans[P3,W4] + trans[P4,W4]
   + trans[P5,W4] = 20
Bounds
Binaries
 open[P1] open[P2] open[P3] open[P4] open[P5] open[P1] open[P2] open[P3]
 open[P4] open[P5]
End
