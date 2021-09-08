*** Settings ***
Resource            ../resources.robot
Resource            ../pages/login_face.robot
Resource            ../pages/home_face.robot
Resource            ../steps/login_steps.robot
Test Setup        Open Login Page Using Chrome Browser
Test Teardown     Close Browser

*** Variable ***

${username}       danieloliveira2767@gmail.com
${password}       @Test21

*** Test Case ***

Validar funcionalidade de Login no Facebook
    [tags]  Smoke
     GIVEN Login Page Opened
     WHEN input Username And Password       ${username}     ${password}
     THEN Home Page Opened


