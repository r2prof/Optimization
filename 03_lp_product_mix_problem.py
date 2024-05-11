import gurobipy as gp
from gurobipy import GRB

# Create a new model
m = gp.Model()

# Create decision variables
x1 = m.addVar(lb=0, name="x1")
x2 = m.addVar(lb=0, name="x2")
x3 = m.addVar(lb=0, name="x3")
x4 = m.addVar(lb=0, name="x4")

# Set objective function
m.setObjective(90*x1 + 125*x2 + 45*x3 + 65*x4, GRB.MAXIMIZE)

# Add constraints
# Constraint 1
m.addConstr(0.10*x1 + 0.25*x2 + 0.08*x3 + 0.21*x4 <= 72, "c1")

# Constraint 2
m.addConstr(3*x1 + 3*x2 + x3 + x4 <= 1200, "c2")

# Constraint 3
m.addConstr(36*x1 + 48*x2 + 25*x3 + 35*x4 <= 25000, "c3")

# Constraint 4
m.addConstr(x1 + x2 <= 500, "c4")

# Constraint 5
m.addConstr(x3 + x4 <= 500, "c5")

# Optimize model
m.optimize()

# Print optimal solution and optimal value
for v in m.getVars():
    print(f"{v.varName}: {v.x}")
    
print(f"Optimal Objective Value: {m.objVal}")

