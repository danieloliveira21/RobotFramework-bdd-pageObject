*** Settings ***
Library       SeleniumLibrary

*** Variable ***
${HOME_PAGE}       https://www.facebook.com/
${LOGIN_PAGE}      https://web.facebook.com/?sk=welcome

*** Keywords ***
Open Main Page Using Chrome Browser
    Open Browser    ${HOME_PAGE}    Chrome
    Maximize Browser Window

Open Login Page Using Chrome Browser
    Open Browser    ${LOGIN_PAGE }  Chrome
    Maximize Browser Window