*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${VALID_LOGIN_EMAIL} =      abc@gmail.com
${VALID_LOGIN_PWD} =        abcdw

*** Keywords ***
Search for SigIn
    Wait Until Page Contains     Customer are priority one
    Click Link                   Sign In
    Input Text                   id = email-id     ${VALID_LOGIN_EMAIL}
    Input Text                   id = password     ${VALID_LOGIN_PWD}
    Click Button                 Submit
    Wait Until Page Contains     Cutomer List

Search for add customer
    Click Link                   New customer
    Wait Until Page Contains     Add new Customer

Input data
    Input Text                  id =emailaddress    abc@abc.com
    Input Text                  id =firstname       Shital
    Input Text                  id =lastname        Sapkota
    Input Text                  id =city            Turku
    Select From List By Value   id=stateorregion  Actual Finland
    Select Radio Button         gender    female
    Select Checkbox             name=promos-name
    Click Button                Submit


