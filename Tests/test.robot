*** Settings ***
Library  SeleniumLibrary

Resource    ../page_object/LoginPage.robot
Resource    ../page_object/HomePage.robot
Resource    ../page_object/CardPage.robot
Resource    ../page_object/ShippingCard.robot
Resource    ../page_object/LastPage.robot
Resource    ../page_object/ProductPage.robot
Test Setup   Open Browser        ${monUrl}    chrome
*** Variables ***
${monUrl}   https://www.saucedemo.com/

*** Test Cases ***
Test de connexionOK
    LoginPage    standard_user  secret_sauce
    Naviguer dans le HomePage
    Naviguer dans la ProductPage
    Naviguer dans la CartPage
    Naviguer dans la page shipping
    Naviguer dans la derniere page



