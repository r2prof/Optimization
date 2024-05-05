\ Model fixed-charge
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  6 x1 + 4 x2 + 7 x3 - 200 y1 - 150 y2 - 100 y3
Subject To
 c1: 3 x1 + 2 x2 + 6 x3 <= 150
 c2: 4 x1 + 3 x2 + 4 x3 <= 160
 c3: x1 - 5000 y1 <= 0
 c4: x2 - 5000 y2 <= 0
 c5: x3 - 5000 y3 <= 0
Bounds
Binaries
 y1 y2 y3
Generals
 x1 x2 x3
End
