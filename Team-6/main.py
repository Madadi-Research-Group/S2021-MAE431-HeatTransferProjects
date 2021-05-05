from Case2 import Case2
from Case4 import Case4
from Case6 import Case6
from Case8 import Case8
from Case10 import Case10
from Case12 import Case12
from Case14 import Case14
from Case16 import Case16

def main():
  print("\"Heat and Mass Transfer Fundametals & Applications 5th Edition\"\n")
  print("This program was developed by Group 6 \nfrom CSULB S2021 MAE431 Sec 03\n")
  print("> Austin McGee\n> Matthew Miller\n> Christopher Nguyen\n> Francis Ilde Nicdao\n")
  option = ""
  while option != "0":
    print("Please refer to Table 3-7 for the different scenarios.")
    print("This program currently only supports even cases 2-16\n")
    option = input("Pick a scenario (0 to quit): ")
    if option == "0":
      pass
    elif option == "2":
      case_choice(Case2())
    elif option == "4":
      case_choice(Case4())
    elif option == "6":
      case_choice(Case6())
    elif option == "8":
      case_choice(Case8())
    elif option == "10":
      case_choice(Case10())
    elif option == "12":
      case_choice(Case12())
    elif option == "14":
      case_choice(Case14())
    elif option == "16":
      case_choice(Case16())
    else:
      print("Invalid input.\n")

def case_choice(case):
  option = ""
  while option != "0":
    case.menu()
    option = input()
    if option == "0":
      pass
    elif option == "1":
      case.set_param()
    elif option == "2":
      case.set_cond()
    elif option == "3":
      case.reset_cond()
    elif option == "4":
      case.solve()
    elif option == "5":
      print("\nIn order to solve for one of the conditions, every parameter and every condition save one must be assigned a value.\n")
      print("Option 1: Set Parameter\nThis option allows the user to assign a value to one of the displayed parameters. Select a parameter to input a value for by entering the option number corresponding to the parameter as displayed in the console. The user will then be allowed to enter a numerical value.\n")
      print("Option 2: Set Condition\nThis option allows the user to assign a value to one of the displayed conditions. Select a condition to input a value for by entering the option number corresponding to the condition as displayed in the console. The user will then be allowed to enter a numerical value.\n")
      print("Option 3: Reset Condition\nThis option will allow the user to restore each condition value to the \"None\" state. The user will have to reinput values into all of the conditions save one if they would like to solve for a particular condition.\n")
      print("Option 4: Solve\nAfter the user has successfully assigned values into every parameter and all save one condition, the program will find the value of the condition not assigned a value (None). If any prerequisite to solving the problem is not met, an error message will be displayed detailing what is missing.\n")
      print("Option 5: Help\nThe program will display this help information text block.")
    else:
      print("Invalid input.")

if __name__ == "__main__":
    main()