import os

def create_folder():
    os.mkdir("F:\\TestingWorld")

def create_sub_folder():
    os.mkdir("F:\\TestingWorld\\Testing")

def create_folder_inp(foldername):
    os.mkdir("F:\\" + foldername)

def create_sub_folder_inp(subfoldername):
    os.mkdir("F:\\TestingWorld" + subfoldername)

def concatenate_two_values(val1, val2):
    val3 = val1 + val2
    return val3
