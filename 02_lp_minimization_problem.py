
import gurobipy as gp
from gurobipy import GRB

# Create a new model
model = gp.Model()

# Create decision variables
x1 = model.addVar(lb=0, vtype=GRB.CONTINUOUS, name="x1")
x2 = model.addVar(lb=0, vtype=GRB.CONTINUOUS, name="x2")

# Set objective function
model.setObjective(6*x1 + 3*x2, GRB.MINIMIZE)

# Add constraints
model.addConstr(2*x1 + 4*x2 >= 16, "c1")
model.addConstr(4*x1 + 3*x2 >= 24, "c2")

# Optimize model
model.optimize()

# Print optimal solution and optimal value
print("Optimal Solution: x1={}, x2={}".format(x1.x, x2.x))
print("Optimal Value: {}".format(model.objVal))
