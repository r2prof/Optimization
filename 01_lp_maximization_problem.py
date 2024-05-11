
import gurobipy as gp
from gurobipy import GRB

# Create a new model
model = gp.Model()

# Create decision variables
x1 = model.addVar(lb=0, vtype=GRB.CONTINUOUS, name="x1")
x2 = model.addVar(lb=0, vtype=GRB.CONTINUOUS, name="x2")

# Set objective function
model.setObjective(40*x1 + 50*x2, GRB.MAXIMIZE)

# Add constraints
model.addConstr(x1 + 2*x2 <= 40, "c1")
model.addConstr(4*x1 + 3*x2 <= 120, "c2")

# Optimize model
model.optimize()

# Print optimal solution and optimal value
print("Optimal Solution: x1={}, x2={}".format(x1.x, x2.x))
print("Optimal Value: {}".format(model.objVal))
