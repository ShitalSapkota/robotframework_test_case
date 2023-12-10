# robotframework_test_case
This project is for learning and creating simple Test Automation in Robot Framework using Selenium Library.
(While you run this program, it will give your **FAIL** results because I have provided the website link, id, password **wrong**)
**You can provide your website, id, password or your testing links CORRECT and it will work.** 


# To run program (This project)
robot -d results tests/crm.robot    ## it will be saved in your results' dir.


**for browser to set**
    # Set window position    x=341          y=169
    # Set window size        width=1935     height=1030

    # Page Should Contain    Customer are priority one 
    (this keyword use for the webpage where the given title were contained not)
    # Click Link             Sign In  https://www.onlinekhabar.com/login 
    (Click link keywords can open the provided: id, name, href links)
    # Input Text             id = email-id    abc@gmail.com 
    (your id to login, this is just an example)
    # Input Text             id = password     abcd   
    (abcd is an example you provide your correct password)
    # Click Button           Submit
    # Page Should Contain    text...
    # Click Button/ Click Link    new customer (add)..
    # Page Should Contain    Add new Customer (page title)..
    #(another options for page should contain keyword --> you can use unstead for better result.. )
    # Wait Until Page Contains    text.. (This will wait for the webpage we are testing.)
    # Input Text         id =emailaddress    abc@abc.com
    # Input Text         id =firstname       Shital
    # Input Text         id =lastname        Sapkota
    # Input Text         id =city            Turku
    (remember '#' is used for comment the line.)