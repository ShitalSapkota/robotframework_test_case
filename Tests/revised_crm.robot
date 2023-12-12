*** Settings ***
Documentation       This is some basic information about whole suite.
Library             SeleniumLibrary

# To Run the Script type:
# robot -d Revised_results tests/revised_crm.robot    ## it will be saved in your Revised_results DIR.

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test.
    [Tags]                  CRM Product
    Initialing Selenium
    Open the Browser
    Browser to set
    Search for Product
    Close the Browser

*** Keywords ***
## Now, using keywords for better results and for multiple test cases.
Initialing Selenium
    set selenium speed      .2s
    set selenium timeout    5s

Open the Browser
    log                     Starting the test case!
    Open Browser            https://www.amazon.com/   chrome
    Page Should Contain     Amazon.com. Spend less. Smile more.
Browser to set
    Set window position     x=341          y=169
    Set window size         width=1935     height=1030

Search for Product
    Page Should Contain     Best Sellers in Books
    #Click Image             src ='https://m.media-amazon.com/images/W/MEDIAX_792452-T1/images/I/81YkqyaFVEL._AC_SY200_.jpg'

Close the Browser
    Sleep                    3s
    Close Browser
