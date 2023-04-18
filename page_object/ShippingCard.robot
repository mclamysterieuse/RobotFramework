*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Naviguer dans la page shipping   
    Sleep    2
    Input Text    css:#first-name        rrrr
    Input Text    css:#last-name         rrrr
    Input Text    css:#postal-code       rrrr
    Click Element    css:#continue
