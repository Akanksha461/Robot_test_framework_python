# Robot_test_framework_python
 * [Introduction](https://github.com/Akanksha461/Robot_test_framework_python/blob/master/README.md#introduction)
* Installation
* Usage
* Documentation
* Execution
* Result

## Introduction

Robot Framework is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has simple plain text syntax and it can be extended easily with libraries implemented using Python or Java.

Robot Framework is operating system and application independent. The core framework is implemented using Python, supports both Python 2 and Python 3, and runs also on Jython (JVM), IronPython (.NET) and PyPy.  For more information about Robot Framework and the ecosystem, see [Robot framework](http://robotframework.org)

## Installation

  ### Preconditions
  
    * Python (Before installing Robot Framework, you need to install Python 2.5 or later)
    * Browser (I prefer Chrome )
    * Chromedriver (compatible to Your chrome version)
    
  ### Step1:- Install Robot Framework
                pip install robotframework
      
  ### Step2:- Selenium2Library
                pip install robotframework-selenium2library
      
  ### Step3:- Set Chromedriver path
                Copy the chromedriver file and paste it to usr/local/bin
  
  ### Step4:- Set robot plugin in your IDE(Pycharm)
                Goto settings>plugin>browse repertoires> Search 'Robot Framework Support' over there.
                Add Robot Framework Support into your plugin.
                Restart the pycharm
 ## Usage
 To use SeleniumLibrary in Robot Framework tests, the library needs to first be imported using the Library setting as any other library. The library accepts some import time arguments, which are documented in the [keyword documentation](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) along with all the keywords provided by the library.

When using Robot Framework, it is generally recommended to write as easy-to-understand tests as possible. The keywords provided by SeleniumLibrary are pretty low level, though, and often require implementation specific arguments like element locators to be passed as arguments. It is thus typically a good idea to write tests using Robot Framework's higher level keywords that utilize SeleniumLibrary keywords internally. This is illustrated by the following example where SeleniumLibrary keywords like **Input Text** are primarily used by higher level keywords like **Input Username**.

```
*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://www.thetestingworld.com/testings/register.php

*** Test Cases ***
TC_001_Browser_Start_and_Close
    OPEN BROWSER  ${url}  ${browser}
    MAXIMIZE BROWSER WINDOW
    input text  name:fld_username  akanksha
    input text  xpath://input[@name="fld_email"]  ruhi461@gmail.com
    clear element text  name:fld_username
    select radio button  add_type  home
    select checkbox  name:terms
    click link  xpath://a[text()="Read Detail"]
    close browser 
```
## Documentation
Robot Framework is a generic test automation framework for acceptance testing and acceptance test-driven development (ATDD). I have implemnted POM as design patter to write my Test script.

  ### Projcet Structure 
      
      
1. [Requirements.txt](https://github.com/Akanksha461/Robot_test_framework_python/blob/master/requirements.txt)- requirements file defines all the basic requirenments which is used in this project. 
1. [Keyword](https://github.com/Akanksha461/Robot_test_framework_python/tree/master/New_robot_framework_project/Test/Keyword)- Keyword folder contains [base.robot](https://github.com/Akanksha461/Robot_test_framework_python/tree/master/New_robot_framework_project/Test/Keyword)- file which contains all basic common keyword used in Testcases. 
1. [Locators](https://github.com/Akanksha461/Robot_test_framework_python/blob/master/New_robot_framework_project/Test/Locators/locators.py)- Locator file defines all the locators used in project.
1. [testCases](https://github.com/Akanksha461/Robot_test_framework_python/tree/master/New_robot_framework_project/Test/Testcases)- From the name itself it is cleared that this file defines all the testcase which is implemented.
1. [My_first_robot_script](https://github.com/Akanksha461/Robot_test_framework_python/blob/master/New_robot_framework_project/Test/Testcases/my_first_robot_script.robot)- This is the main file by executing this file all the test script will run accordingly.
1. [Varibale.py](https://github.com/Akanksha461/Robot_test_framework_python/blob/master/New_robot_framework_project/Test/Variable/variable.py)- User file defines all the data of user required in the project. like login etc.

 ## Execution
  After installations and with all other preconditions in place, you can run this project on the command line by using the robot command:
  
```
robot my_first_robot_script.robot 
```
  Note:- Make sure you are in Testcase folder.
    
   **Tags**:- Robot framwork gives the feature of tags for more details reffer [Robot Uesr Guide](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#id540). Use tags while execution to run the categorized testcases, below is sample for the same.    
```
robot -i Regression my_first_robot_script.robot 

```
 ## [Results](https://github.com/Akanksha461/Robot_test_framework_python/tree/master/New_robot_framework_project/result)
   You get the results like log, output, log & screenshots(Incase of Failure) file when you execute your Test.
 ```
 robot -d result Test/Testcases/my_first_robot_script.robot 
 ```
