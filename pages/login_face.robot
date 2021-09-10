*** Settings ***
Library       SeleniumLibrary

*** Variable ***
${CAMPO_USUARIO}             //input[@name='email']
${CAMPO_SENHA}             //input[@name='pass']
${LOGIN_BUTTON}               //button[@name='login']
${ERROR_MESSAGE}              //p[@id='slfErrorAlert']

*** Keywords ***
Login Page Opened
  Wait Until Element Is Visible     ${CAMPO_USUARIO}
  Element Should Be Visible         ${CAMPO_USUARIO}
  Wait Until Element Is Visible     ${CAMPO_USUARIO}
  Element Should Be Visible         ${CAMPO_USUARIO}

input Username
  [Arguments]                       ${username}
  Wait Until Element Is Enabled     ${USERNAME_FIELD}
  Input username                    ${USERNAME_FIELD}

Input Pass
  [Arguments]                       ${password}
  Wait Until Element Is Enabled     ${CAMPO_SENHA}
  Input Text                        ${CAMPO_SENHA}       ${password}

Login Button Should Be Enabled
  Wait Until Element Is Enabled     ${LOGIN_BUTTON}
  Element Should Be Enabled         ${LOGIN_BUTTON}

Click Login Button
  Wait Until Element Is Enabled     ${LOGIN_BUTTON}
  Click Element                     ${LOGIN_BUTTON}

Error Message Displayed
  Wait Until Element Is Visible     ${ERROR_MESSAGE}
  Element Should Be Visible         ${ERROR_MESSAGE}