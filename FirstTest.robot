*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${monUrl}   https://www.saucedemo.com/


*** Test Cases ***
Test de connexionOK
    ConnexionOK    standard_user  secret_sauce
    Vérifier l'affichage de la page product
    Naviguer dans la CartPage
    

Test de connexion identifiant invalide
    ConnexionOK    locked_out_user    secret_sauce 
    Element Should Be Visible    css:div.error-message-container.error > h3

Test de connexion utilisateur bloqué
    ConnexionOK     locked_out_user    secret_sauce1
    Element Should Be Visible   css:div.error-message-container.error > h3


*** Keywords ***
connexionOK
    [Arguments]        ${username}    ${password}
    Open Browser        ${monUrl}    chrome
    Input Text        css:input#user-name       ${username}  
    Input Password    id:password               ${password}
    Click Button      css:input#login-button

Vérifier l'affichage de la page product
     Element Should Be Visible    css:div.app_logo
     Click Element    css:#item_4_title_link > div

Naviguer dans la CartPage
    Click Element    css:#add-to-cart-sauce-labs-backpack
    Click Element    css:#shopping_cart_container > a
    Element Should Contain    css:#item_4_title_link > div    Sauce
