*** Settings ***
Documentation       This is some basic information about whole suite.
Library             SeleniumLibrary

# To Run the Script type:
# robot -d results tests/crm.robot    ## it will be saved on your results dir.

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test.
    [Tags]                  item_id   item_name   item_value
    #Initialing Selenium
    set selenium speed      .2s
    set selenium timeout    5s
    #Open the Browser
    log                     Starting the test case!
    Open Browser            https://www.onlinekhabar.com/   chrome
    # for browser to set
    # Set window position    x=341          y=169
    # Set window size        width=1935     height=1030

    Sleep               3s
    Close Browser

*** Keywords ***
