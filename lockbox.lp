\ Model lockbox
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  50 Los_Angeles + 50 Chicago + 50 New_York + 50 Atlanta
   + 28 West_to_Los_Angeles + 84 West_to_Chicago + 112 West_to_New_York
   + 112 West_to_Atlanta + 60 Midwest_to_Los_Angeles
   + 20 Midwest_to_Chicago + 50 Midwest_to_New_York + 50 Midwest_to_Atlanta
   + 96 East_to_Los_Angeles + 60 East_to_Chicago + 24 East_to_New_York
   + 60 East_to_Atlanta + 64 South_to_Los_Angeles + 40 South_to_Chicago
   + 40 South_to_New_York + 16 South_to_Atlanta
Subject To
 c1[West]: West_to_Los_Angeles + West_to_Chicago + West_to_New_York
   + West_to_Atlanta = 1
 c1[Midwest]: Midwest_to_Los_Angeles + Midwest_to_Chicago
   + Midwest_to_New_York + Midwest_to_Atlanta = 1
 c1[East]: East_to_Los_Angeles + East_to_Chicago + East_to_New_York
   + East_to_Atlanta = 1
 c1[South]: South_to_Los_Angeles + South_to_Chicago + South_to_New_York
   + South_to_Atlanta = 1
 c2[Los_Angeles]: - 4 Los_Angeles + West_to_Los_Angeles
   + Midwest_to_Los_Angeles + East_to_Los_Angeles + South_to_Los_Angeles
   <= 0
 c2[Chicago]: - 4 Chicago + West_to_Chicago + Midwest_to_Chicago
   + East_to_Chicago + South_to_Chicago <= 0
 c2[New_York]: - 4 New_York + West_to_New_York + Midwest_to_New_York
   + East_to_New_York + South_to_New_York <= 0
 c2[Atlanta]: - 4 Atlanta + West_to_Atlanta + Midwest_to_Atlanta
   + East_to_Atlanta + South_to_Atlanta <= 0
Bounds
Binaries
 Los_Angeles Chicago New_York Atlanta West_to_Los_Angeles West_to_Chicago
 West_to_New_York West_to_Atlanta Midwest_to_Los_Angeles Midwest_to_Chicago
 Midwest_to_New_York Midwest_to_Atlanta East_to_Los_Angeles East_to_Chicago
 East_to_New_York East_to_Atlanta South_to_Los_Angeles South_to_Chicago
 South_to_New_York South_to_Atlanta
End
