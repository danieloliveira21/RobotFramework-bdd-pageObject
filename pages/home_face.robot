*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${IG_LOGO}            //span[.='Bem-vindo ao Facebook, Bot']

*** Keywords ***
Home Page Opened
  Wait Until Element Is Visible    ${IG_LOGO}
  Element Should Be Visible        ${IG_LOGO}

