\ Model facility
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  12000 open[P1] + 15000 open[P2] + 17000 open[P3] + 13000 open[P4]
   + 16000 open[P5] + 4000 transport[P1,W1] + 2500 transport[P1,W2]
   + 1200 transport[P1,W3] + 2200 transport[P1,W4] + 2000 transport[P2,W1]
   + 2600 transport[P2,W2] + 1800 transport[P2,W3] + 2600 transport[P2,W4]
   + 3000 transport[P3,W1] + 3400 transport[P3,W2] + 2600 transport[P3,W3]
   + 3100 transport[P3,W4] + 2500 transport[P4,W1] + 3000 transport[P4,W2]
   + 4100 transport[P4,W3] + 3700 transport[P4,W4] + 4500 transport[P5,W1]
   + 4000 transport[P5,W2] + 3000 transport[P5,W3] + 3200 transport[P5,W4]
Subject To
 Capacity[P1]: - 20 open[P1] + transport[P1,W1] + transport[P1,W2]
   + transport[P1,W3] + transport[P1,W4] <= 0
 Capacity[P2]: - 22 open[P2] + transport[P2,W1] + transport[P2,W2]
   + transport[P2,W3] + transport[P2,W4] <= 0
 Capacity[P3]: - 17 open[P3] + transport[P3,W1] + transport[P3,W2]
   + transport[P3,W3] + transport[P3,W4] <= 0
 Capacity[P4]: - 19 open[P4] + transport[P4,W1] + transport[P4,W2]
   + transport[P4,W3] + transport[P4,W4] <= 0
 Capacity[P5]: - 18 open[P5] + transport[P5,W1] + transport[P5,W2]
   + transport[P5,W3] + transport[P5,W4] <= 0
 Demand[W1]: transport[P1,W1] + transport[P2,W1] + transport[P3,W1]
   + transport[P4,W1] + transport[P5,W1] = 15
 Demand[W2]: transport[P1,W2] + transport[P2,W2] + transport[P3,W2]
   + transport[P4,W2] + transport[P5,W2] = 18
 Demand[W3]: transport[P1,W3] + transport[P2,W3] + transport[P3,W3]
   + transport[P4,W3] + transport[P5,W3] = 14
 Demand[W4]: transport[P1,W4] + transport[P2,W4] + transport[P3,W4]
   + transport[P4,W4] + transport[P5,W4] = 20
Bounds
Binaries
 open[P1] open[P2] open[P3] open[P4] open[P5]
End
