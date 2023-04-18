*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
LoginPage
    Sleep    2
    [Arguments]        ${username}    ${password}
    Input Text        css:input#user-name       ${username}  
    Input Password    id:password               ${password}
    Click Button      css:input#login-button
