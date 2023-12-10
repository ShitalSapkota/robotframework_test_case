*** Settings ***
Documentation       This is some basic information about whole suite.
Library             SeleniumLibrary

# To Run the Script type:
# robot -d results tests/crm.robot    ## it will be saved in your results dir.

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
    Set window position     x=341          y=169
    Set window size         width=1935     height=1030

    Page Should Contain     Customer are priority one
    Click Link              Sign In
    Input Text              id = email-id     https://www.onlinekhabar.com/login
    Input Text              id = password     abcd
    Click Button            Submit
    Page Should Contain     Cutomer List
    Click Link              New customer
    Page Should Contain     Add new Customer
    #(another options for page should contain keyword --> you can use unstead for better result.. )
    #Wait Until Page Contains    text.. (This will wait for the webpage we are testing.)

   Input Text               id =emailaddress    abc@abc.com
   Input Text               id =firstname       Shital
   Input Text               id =lastname        Sapkota
   Input Text               id =city            Turku
   Select From List By Value       id=stateorregion  Actual Finland
   # for select from list by value it can take values like id, name, value... (see inspect / html/.. )
   Select Radio Button      gender    female
   Select Checkbox          name=promos-name
   # also can be used id, if html tags have...
   Click Button             Submit

   #(you can see your html tags for your id, name, value or the title provided.
    #In here CLICK BUTTON there is Submit, which is only title provided.)

   Sleep                    3s
   Close Browser

*** Keywords ***
