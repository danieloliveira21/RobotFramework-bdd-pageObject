*** Settings ***
Library       SeleniumLibrary

*** Variable ***
${USERNAME_FIELD}             //input[@name='email']
${PASSWORD_FIELD}             //input[@name='pass']
${LOGIN_BUTTON}               //button[@name='login']
${ERROR_MESSAGE}              //p[@id='slfErrorAlert']

*** Keywords ***
Login Page Opened
  Wait Until Element Is Visible     ${USERNAME_FIELD}
  Element Should Be Visible         ${USERNAME_FIELD}
  Wait Until Element Is Visible     ${PASSWORD_FIELD}
  Element Should Be Visible         ${PASSWORD_FIELD}

Input Username
  [Arguments]                       ${username}
  Wait Until Element Is Enabled     ${USERNAME_FIELD}
  Input Text                        ${USERNAME_FIELD}       ${username}

Input Pass
  [Arguments]                       ${password}
  Wait Until Element Is Enabled     ${PASSWORD_FIELD}
  Input Text                        ${PASSWORD_FIELD}       ${password}

Login Button Should Be Enabled
  Wait Until Element Is Enabled     ${LOGIN_BUTTON}
  Element Should Be Enabled         ${LOGIN_BUTTON}

Click Login Button
  Wait Until Element Is Enabled     ${LOGIN_BUTTON}
  Click Element                     ${LOGIN_BUTTON}

Error Message Displayed
  Wait Until Element Is Visible     ${ERROR_MESSAGE}
  Element Should Be Visible         ${ERROR_MESSAGE}