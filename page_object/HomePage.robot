*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Naviguer dans le HomePage
    Sleep    2
     Element Should Be Visible    css:div.app_logo
     Click Element    css:#item_4_title_link > div
     