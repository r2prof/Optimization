\ Model SCND-I
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0 Liverpool_to_Newcastle + 0 Liverpool_to_Birmingham
   + 0 Liverpool_to_London + 0 Liverpool_to_Exeter
   + 0 Brighton_to_Newcastle + 0 Brighton_to_Birmingham
   + 0 Brighton_to_London + 0 Brighton_to_Exeter + 0 Liverpool_to_Newcastle
   + 0 Liverpool_to_Birmingham + 0 Liverpool_to_London
   + 0 Liverpool_to_Exeter + 0 Brighton_to_Newcastle
   + 0 Brighton_to_Birmingham + 0 Brighton_to_London + 0 Brighton_to_Exeter
   + 0 factory_cust[Liverpool,C1] + 0 factory_cust[Liverpool,C2]
   + 0 factory_cust[Liverpool,C3] + 0 factory_cust[Liverpool,C4]
   + 0 factory_cust[Liverpool,C5] + 0 factory_cust[Liverpool,C6]
   + 0 factory_cust[Brighton,C1] + 0 factory_cust[Brighton,C2]
   + 0 factory_cust[Brighton,C3] + 0 factory_cust[Brighton,C4]
   + 0 factory_cust[Brighton,C5] + 0 factory_cust[Brighton,C6]
   + factory_cust[Liverpool,C1] + 1000 factory_cust[Liverpool,C2]
   + 1.5 factory_cust[Liverpool,C3] + 2 factory_cust[Liverpool,C4]
   + 1000 factory_cust[Liverpool,C5] + factory_cust[Liverpool,C6]
   + 2 factory_cust[Brighton,C1] + 1000 factory_cust[Brighton,C2]
   + 1000 factory_cust[Brighton,C3] + 1000 factory_cust[Brighton,C4]
   + 1000 factory_cust[Brighton,C5] + 1000 factory_cust[Brighton,C6]
   + 0.5 Liverpool_to_Newcastle + 0.5 Liverpool_to_Birmingham
   + Liverpool_to_London + 0.2 Liverpool_to_Exeter
   + 1000 Brighton_to_Newcastle + 0.3 Brighton_to_Birmingham
   + 0.5 Brighton_to_London + 0.2 Brighton_to_Exeter
   + 1000 depot_to_cust[Newcastle,C1] + 1.5 depot_to_cust[Newcastle,C2]
   + 0.5 depot_to_cust[Newcastle,C3] + 1.5 depot_to_cust[Newcastle,C4]
   + 1000 depot_to_cust[Newcastle,C5] + depot_to_cust[Newcastle,C6]
   + depot_to_cust[Birmingham,C1] + 0.5 depot_to_cust[Birmingham,C2]
   + 0.5 depot_to_cust[Birmingham,C3] + depot_to_cust[Birmingham,C4]
   + 0.5 depot_to_cust[Birmingham,C5] + 1000 depot_to_cust[Birmingham,C6]
   + 1000 depot_to_cust[London,C1] + 1.5 depot_to_cust[London,C2]
   + 2 depot_to_cust[London,C3] + 1000 depot_to_cust[London,C4]
   + 0.5 depot_to_cust[London,C5] + 1.5 depot_to_cust[London,C6]
   + 1000 depot_to_cust[Exeter,C1] + 1000 depot_to_cust[Exeter,C2]
   + 0.2 depot_to_cust[Exeter,C3] + 1.5 depot_to_cust[Exeter,C4]
   + 0.5 depot_to_cust[Exeter,C5] + 1.5 depot_to_cust[Exeter,C6]
Subject To
Bounds
End
