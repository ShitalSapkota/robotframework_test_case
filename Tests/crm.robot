*** Settings ***
Documentation       This is some basic information about whole suite.
Resource            ../Resources/CRM.robot
Resource            ../Resources/Common.robot
Test Setup          Open the Browser
Test Teardown       Close the Browser

# To Run the Script type:
# robot -d results tests/crm.robot    ## it will be saved in your results dir.

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the test.
    [Tags]                  CRM Customer
    CRM.Search for SigIn

Should be able to add new product
    [Documentation]         This is some basic info about the test.
    [Tags]                  CRM Product
    CRM.Search for add customer
    CRM.Input data