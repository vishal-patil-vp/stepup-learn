'''1- write a program which takes the name of the user as input and
replace all the occurence of character 'a' in the name to 'b' and print it.'''

# name=input("enter your name: ")
# new_name=name.replace('a','b')
# print(new_name)

'''2- write a program which takes 2 inputs from user as 
principle amount (int) and rate of annual interest (float) and 
print the expected total amount  after  2 years.'''
#
# principle_amt=int(input('enter principle amount = '))
# rate_of_interest= float(input('enter annual ROI in percent = '))
#
# total_amount=(principle_amt+2*(principle_amt*(rate_of_interest/100)))
#
# print(f'expected total amount  after  2 years is {total_amount}')

'''
3- write a program which takes city name from user input. 
irrespective of in which case user enters the city name, 
print the city name in camel case meaning first letter should be capital
 and rest in small.
'''
#
# city_name=input('Enter city name = ')
# new_city_name=city_name.capitalize()
# print(new_city_name)

'''
4- write a program which takes the name of the user as input and 
print the index of character 'a' in the string. if 'a' is not there then return -1.
'''
# name=input("enter your name: ")
# if 'a' in name:
#     print(f'index of character a in the string is {name.index('a')}')
# else:
#     print(-1)
#
#
# def show():
#     name = input("enter your name: ")
#     if 'a' in name:
#         print(f'index of character a in the string is {name.index('a')}')
#     else:
#         return(-1)
#
# with_a=show()
# without_a=show()
# print(without_a)

'''
5-  Display the number of letters in the below string
my_word = "antidisestablishmentarianism"
'''
# my_word = "antidisestablishmentarianism"
# num_letters=len(my_word)
# print(f'The number of letters in the given string are {num_letters}')

'''

6- take 3 inputs from user : first name , last name and age . 
Display the information in below format
exmaple 
first name : MOhit
last name : sharma 
age 32
Display : my name is Rohit Sharma and I am 32 years old.
note that first letter of first name
 and last name both should be in capital letters and rest in small. 
'''
# first_name=input('enter your first name ')
# last_name=input('enter your last name ')
# age=int(input('enter your age '))
#
# print(f'My name is {first_name.capitalize()} {last_name.capitalize()} and i am {age} years old')

'''7-take 3 inputs from user : first name , last name and company name. 
create the email alias for the user and display it.  
Email alias is first 2 letters of first name , 
last 3 letters of last name and @company.com
example 
first name : Rohit
last name : sharma 
company : infosys

Display : morma@infosys.com <

note full email id should -be in lower case
'''
first_name=input('enter your first name ')
last_name=input('enter your last name ')
company_name=input('enter your company name ')
#
# email_id= (first_name[0:2]+last_name[-3:]+'@'+company_name+'.com')
# print(email_id.lower())
#
print(f"your email id is {first_name.lower()[0:2]}{last_name.lower()[-3:]}@{company_name.lower()}.com")
