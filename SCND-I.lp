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
 fac_cap[Liverpool]: factory_cust[Liverpool,C1]
   + factory_cust[Liverpool,C2] + factory_cust[Liverpool,C3]
   + factory_cust[Liverpool,C4] + factory_cust[Liverpool,C5]
   + factory_cust[Liverpool,C6] + Liverpool_to_Newcastle
   + Liverpool_to_Birmingham + Liverpool_to_London + Liverpool_to_Exeter
   <= 150000
 fac_cap[Brighton]: factory_cust[Brighton,C1] + factory_cust[Brighton,C2]
   + factory_cust[Brighton,C3] + factory_cust[Brighton,C4]
   + factory_cust[Brighton,C5] + factory_cust[Brighton,C6]
   + Brighton_to_Newcastle + Brighton_to_Birmingham + Brighton_to_London
   + Brighton_to_Exeter <= 200000
 dep_cap[Newcastle]: Liverpool_to_Newcastle + Brighton_to_Newcastle
   <= 70000
 dep_cap[Birmingham]: Liverpool_to_Birmingham + Brighton_to_Birmingham
   <= 50000
 dep_cap[London]: Liverpool_to_London + Brighton_to_London <= 100000
 dep_cap[Exeter]: Liverpool_to_Exeter + Brighton_to_Exeter <= 40000
 dep_out[Newcastle]: Liverpool_to_Newcastle + Brighton_to_Newcastle
   - depot_to_cust[Newcastle,C1] - depot_to_cust[Newcastle,C2]
   - depot_to_cust[Newcastle,C3] - depot_to_cust[Newcastle,C4]
   - depot_to_cust[Newcastle,C5] - depot_to_cust[Newcastle,C6] = 0
 dep_out[Birmingham]: Liverpool_to_Birmingham + Brighton_to_Birmingham
   - depot_to_cust[Birmingham,C1] - depot_to_cust[Birmingham,C2]
   - depot_to_cust[Birmingham,C3] - depot_to_cust[Birmingham,C4]
   - depot_to_cust[Birmingham,C5] - depot_to_cust[Birmingham,C6] = 0
 dep_out[London]: Liverpool_to_London + Brighton_to_London
   - depot_to_cust[London,C1] - depot_to_cust[London,C2]
   - depot_to_cust[London,C3] - depot_to_cust[London,C4]
   - depot_to_cust[London,C5] - depot_to_cust[London,C6] = 0
 dep_out[Exeter]: Liverpool_to_Exeter + Brighton_to_Exeter
   - depot_to_cust[Exeter,C1] - depot_to_cust[Exeter,C2]
   - depot_to_cust[Exeter,C3] - depot_to_cust[Exeter,C4]
   - depot_to_cust[Exeter,C5] - depot_to_cust[Exeter,C6] = 0
 cus_demand[C1]: factory_cust[Liverpool,C1] + factory_cust[Brighton,C1]
   + depot_to_cust[Newcastle,C1] + depot_to_cust[Birmingham,C1]
   + depot_to_cust[London,C1] + depot_to_cust[Exeter,C1] = 50000
 cus_demand[C2]: factory_cust[Liverpool,C2] + factory_cust[Brighton,C2]
   + depot_to_cust[Newcastle,C2] + depot_to_cust[Birmingham,C2]
   + depot_to_cust[London,C2] + depot_to_cust[Exeter,C2] = 10000
 cus_demand[C3]: factory_cust[Liverpool,C3] + factory_cust[Brighton,C3]
   + depot_to_cust[Newcastle,C3] + depot_to_cust[Birmingham,C3]
   + depot_to_cust[London,C3] + depot_to_cust[Exeter,C3] = 40000
 cus_demand[C4]: factory_cust[Liverpool,C4] + factory_cust[Brighton,C4]
   + depot_to_cust[Newcastle,C4] + depot_to_cust[Birmingham,C4]
   + depot_to_cust[London,C4] + depot_to_cust[Exeter,C4] = 35000
 cus_demand[C5]: factory_cust[Liverpool,C5] + factory_cust[Brighton,C5]
   + depot_to_cust[Newcastle,C5] + depot_to_cust[Birmingham,C5]
   + depot_to_cust[London,C5] + depot_to_cust[Exeter,C5] = 60000
 cus_demand[C6]: factory_cust[Liverpool,C6] + factory_cust[Brighton,C6]
   + depot_to_cust[Newcastle,C6] + depot_to_cust[Birmingham,C6]
   + depot_to_cust[London,C6] + depot_to_cust[Exeter,C6] = 20000
Bounds
End
