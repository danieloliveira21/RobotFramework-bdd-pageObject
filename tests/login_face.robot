*** Settings ***
Resource            ../resources.robot
Resource            ../pages/login_face.robot
Resource            ../pages/home_face.robot
Resource            ../steps/login_steps.robot
Test Setup        Open Login Page Using Chrome Browser
Test Teardown     Close Browser

*** Test Case ***
 
Validar funcionalidade de Login no Facebook
    [tags]  Smoke
     GIVEN Login Page Opened
     AND Input Text  ${CAMPO_USUARIO}  danieloliveira2767@gmail.com
     AND Input Text  ${CAMPO_SENHA}  @Test21
     WHEN Click Login Button 
     THEN Home Page Opened