# Framework for each case. All methods that have pass will need to be defined in the child cases which inherits this class.
class Case:

  # Initializes variables
  def __init__(self):
    pass

  # Outputs parameters and conditions to console
  def display(self):
    pass

  # Outputs parameter menu options
  def param_menu(self):
    pass

  # Assigns a parameter a numerical value
  def set_param(self):
    pass

  # Outputs condition menu options
  def cond_menu(self):
    pass

  # Assigns a condition a numerical value
  def set_cond(self):
    pass

  # Assigns all conditions None value
  def reset_cond(self):
    pass

  # Calculates the shape factor
  def shape_factor(self):
    pass

  # Solves for the missing condition
  def solve(self):
    pass
  
  # Checks that the inputted value is a numerical value
  def set_value(self, current):
    try:
      value = float(input("Enter a value: "))
    except ValueError:
      print("Invalid value.")
      return current
    return value
      
  # Menu options to display to console
  def menu(self):
    self.display()
    print("""  1. Set Parameter
  2. Set Condition
  3. Reset Condition
  4. Solve
  5. Help
  0. Quit""")
  