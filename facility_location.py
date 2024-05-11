
import gurobipy as gp
from gurobipy import GRB

# Data
num_plants = 5
num_warehouses = 4
fixed_costs = [12000, 15000, 17000, 13000, 16000]
capacity = [20, 22, 17, 19, 18]
demand = [15, 18, 14, 20]
trans_costs = [
    [4000, 2500, 1200, 2200],
    [2000, 2600, 1800, 2600],
    [3000, 3400, 2600, 3100],
    [2500, 3000, 4100, 3700],
    [4500, 4000, 3000, 3200]
]

# Create model
model = gp.Model("facility_location")

# Decision variables
x = model.addVars(num_plants, vtype=GRB.BINARY, name="x")
y = model.addVars(num_plants, num_warehouses, vtype=GRB.BINARY, name="y")

# Objective function
obj_expr = gp.quicksum(fixed_costs[i] * x[i] for i in range(num_plants))
obj_expr += gp.quicksum(trans_costs[i][j] * y[i, j] for i in range(num_plants) for j in range(num_warehouses))
model.setObjective(obj_expr, GRB.MINIMIZE)

# Constraints
# Each warehouse must be supplied by at least one open plant
for j in range(num_warehouses):
    model.addConstr(gp.quicksum(y[i, j] for i in range(num_plants)) == 1)

# Only open plants can supply warehouses
for i in range(num_plants):
    for j in range(num_warehouses):
        model.addConstr(y[i, j] <= x[i])

# Total supply to each warehouse meets or exceeds demand
M = sum(capacity)  # Define M as the sum of all capacities
for j in range(num_warehouses):
    model.addConstr(gp.quicksum(y[i, j] for i in range(num_plants)) >= demand[j] - (1 - x[i]) * M)

# Total supply from each plant does not exceed its capacity
for i in range(num_plants):
    model.addConstr(gp.quicksum(y[i, j] for j in range(num_warehouses)) <= capacity[i] * x[i])

# Solve
model.optimize()
