import logging as lg
import os
lg.basicConfig(filename = "C:\\Users\\Lakshya\\DS_Python\\Ques_exception\\Logdetails", level = lg.INFO, format= '%(asctime)s - %(message)s')

def evennums(a):
    lg.info("This is Even numbers extraction function")
    lg.info("User inputs " + str(a))
    for i in range(0, a, 2):
        print(i + 2)
        
if(os.path.exists("C:\\Users\\Lakshya\\DS_Python\\Ques_exception\\Logdetails")):
    f = open("C:\\Users\\Lakshya\\DS_Python\\Ques_exception\\Logdetails", "r")
    print(f.read())
    