*** Settings ***
Resource            ../pages/login_face.robot

*** Keywords ***
Input Username And Password
    [Arguments]     ${username}     ${password}
    Input username                                  ${username}
    Input Pass                                      ${password}          
    Click Login Button  