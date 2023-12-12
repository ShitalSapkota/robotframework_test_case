*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${BROWSER} =                chrome
${URL} =                    https://www.pinterest.com/
#${VALID_LOGIN_EMAIL} =      abc@gmail.com
#${VALID_LOGIN_PWD} =        abcdw

*** Keywords ***
## Now, using keywords for better results and for multiple test cases.

Open the Browser
    set selenium speed      .2s
    set selenium timeout    5s
    log                     Starting the test case!
    Open Browser            ${URL}   ${BROWSER}
    Set window position     x=341          y=169
    Set window size         width=1935     height=1030

Close the Browser
    Sleep                    3s
    Close Browser
