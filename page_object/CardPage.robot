*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Naviguer dans la CartPage
    Sleep    2
    Click Element    css:#shopping_cart_container > a
    Element Should Contain    css:#item_4_title_link > div    Sauce
    Click Element   css:#checkout