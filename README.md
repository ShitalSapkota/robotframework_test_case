# robotframework_test_case
This project is for learning and creating simple Test Automation in Robot Framework using Selenium Library.
(While you run this program, it will give your **FAIL** results because I have provided the website link, id, password **wrong**)
**You can provide your website, id, password or your testing links CORRECT and it will work.** 

# To create project first you need to install:
1. Pycharm or any code editor (I am using Pycharm)
2. install pip --upgrade
3. install robotframework
4. pip install --upgrade robotframework-seleniumlibrary
5. pip install robotframework-requests
6. install plugIns in your code editor
**Like Go to File menu--> setting --> PlugIns --> Marketplace --> search (Robot Framework Language Server)--> install**

7. install web driver  check https://www.selenium.dev/documentation/webdriver/getting_started/


# To run program (This project)
robot -d results tests/crm.robot    ## it will be saved in your results' DIR.


**for browser to set**
    
    Set window position    x=341          y=169

    Set window size        width=1935     height=1030

    Page Should Contain    Customer are priority one 
    (this keyword use for the webpage where the given title were contained not)
    Click Link             Sign In  https://www.onlinekhabar.com/login 
# Click link keywords can open the provided: id, name, href links
    Input Text             id = email-id    abc@gmail.com 
# your id to login, abcd is an example, you provide your correct id, password
    Input Text             id = password     abcd
    Click Button           Submit
    Page Should Contain    text...
    Click Button/ Click Link    new customer (add)..
    Page Should Contain    Add new Customer (page title)..
# Another options for page should contain keyword -->you can use this (Wait Until Page Contains) instead for better result. 
    Wait Until Page Contains    text.. (This will wait for the webpage we are testing.)
    Input Text                  id =emailaddress    abc@abc.com
    Input Text                  id =firstname       Shital
    Input Text                  id =lastname        Sapkota
    Input Text                  id =city            Turku
# Remember '#' is used for comment the line.
https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html (for Keywords use to TEST)

**Also important things to remember to check --> right-click on the webpage and go to inspect, and then you can see the html tags for the whole webpage.**

Robot Framework is a very powerful generic test automation framework. 
And there are lots of amazing things it can do, including running multiple scripts, execution order and randomization.
We can use different script patterns and tag patterns to be able to run subsets of our scripts. 
We could halt execution on any failure. We can run using the DEBUG log level to see more information if we want to learn more about certain failures. 
There are argument files we can pass in to make it easier to do command line execution, so you can just pass in the name of a file instead of a bunch of command line arguments.
Robot Framework has the ability to automatically re-run failed tests and then combine the results files into one result file to make things easier to analyze.

