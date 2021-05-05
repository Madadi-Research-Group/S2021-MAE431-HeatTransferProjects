from Case import Case
import math

class Case4(Case):
    def __init__(self):
        # PARAMETERS
        self.s = None # shape factor
        self.l = None # length of cylinder
        self.d = None # diameter of cylinder
        self.w = None # distance between each cylinder
        self.z = None # distance below surface
        self.n = None # number of cylinders
        self.k = None # thermal conductivity
        # CONDITIONS
        self.q = None # heat transfer rate
        self.t1 = None # intitial temperature
        self.t2 = None # final temperature
    
    def display(self):
        print(f"\n(4) A row of equally spaced parallel isothermal" + 
            f"\n    cylinders buried in a semi-infinite medium" + 
            f"\n===== PARAMETERS =====" + 
            f"\n   L =  {self.l}" + 
            f"\n   D =  {self.d}" + 
            f"\n   w =  {self.w}" + 
            f"\n   z =  {self.z}" + 
            f"\n   n =  {self.n}" + 
            f"\n   k =  {self.k}" + 
            f"\n===== CONDITIONS =====" + 
            f"\n   Q =  {self.q}" + 
            f"\n   T1 = {self.t1}" + 
            f"\n   T2 = {self.t2}\n")
    
    def param_menu(self):
        print(f"===== PARAMETERS =====" +
            f"\n   1. L  - length of cylinder" + 
            f"\n   2. D  - diameter of cylinder" + 
            f"\n   3. w  - distance between each cylinder" + 
            f"\n   4. z  - distance below surface" + 
            f"\n   5. n  - number of cylinders" + 
            f"\n   6. k  - thermal conductivity\n")
        
    def set_param(self):
        self.param_menu()
        choice = input("Select a parameter: ")
        if choice == "0":
            pass
        elif choice == "1":
            self.l = self.set_value(self.l)
        elif choice == "2":
            self.d = self.set_value(self.d)
        elif choice == "3":
            self.w = self.set_value(self.w)
        elif choice == "4":
            self.z = self.set_value(self.z)
        elif choice == "5":
            self.n = self.set_value(self.n)
        elif choice == "6":
            self.k = self.set_value(self.k)
        else:
            print("Invalid input.")
                
    def cond_menu(self):
        print("===== CONDITIONS =====" + 
            f"\n   1. Q  - heat transfer rate" + 
            f"\n   2. T1 - temperature of cylinder surface" + 
            f"\n   3. T2 - temperature of medium surface\n")
    
    def set_cond(self):
        self.cond_menu()
        choice = input("Select a condition: ")
        if choice == "0":
            pass
        elif choice == "1":
            self.q = self.set_value(self.q)
        elif choice == "2":
            self.t1 = self.set_value(self.t1)
        elif choice == "3":
            self.t2 = self.set_value(self.t2)
        else:
            print("Invalid input.")
                
    def reset_cond(self):
        self.q = None # heat transfer rate
        self.t1 = None # temperature of cylinder surface
        self.t2 = None # temperature of medium surface
    
    def shape_factor(self):
        if all([self.l, self.d, self.w, self.z, self.n]):
            self.s = (2*math.pi*self.l)/math.log((2*self.w/(math.pi*self.d))*math.sinh(2*math.pi*self.z/self.w))
            return self.s
        else:
            print("All geometry parameters are required to be defined.")
            return None
            
    def solve(self):
        if self.shape_factor() is None:
            return None
        else:
            self.s = self.shape_factor()
        if all([self.q, self.t1, self.t2]):
            print("Cannot solve for missing condition if all conditions are defined.")
            return None
        elif (not bool(self.q)) and all([self.k, self.t1, self.t2]):
            print(f"Shape factor S = %.4f" % self.s)
            q = self.n*self.s*self.k*(self.t1-self.t2)
            print(f"Heat transfer rate Q = %.4f" % q)
            return q
        elif (not bool(self.t1)) and all([self.k, self.q, self.t2]):
            print(f"Shape factor S = %.4f" % self.s)
            t1 = self.t2+self.q/(self.n*self.s*self.k)
            print(f"Initial temperature T1 = %.4f" % t1)
            return t1
        elif (not bool(self.t2)) and all([self.k, self.q, self.t1]):
            print(f"Shape factor S = %.4f" % self.s)
            t2 = self.t1-self.q/(self.n*self.s*self.k)
            print(f"Final temperature T2 = %.4f" % t2)
            return t2
        else:
            if self.k is None:
                print("The coefficient of thermal conductivity k is not yet set.")
            else:
                print("Not enough conditions are defined.")
            return None
            