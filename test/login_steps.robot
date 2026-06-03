*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keyworks.resource
Test Setup    Open Browser   browser=${BROWSER}

*** Variables ***
${URL}    https://www.saucedemo.com/
${BROWSER}    Chrome   
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Successful Login
        I navigate to the login page    ${URL}
        I input correct credentials    ${USERNAME}    ${PASSWORD}
        I click on the login button
        I am able view the home page

unSuccessful Login - No Credentials
        I navigate to the login page    ${URL}
        I input no credentials
        I click on the login button
        I am able see the expected error message      Epic sadface: Username is required

unSuccessful Login - No UserName
        I navigate to the login page    ${URL}
        I input only the password     ${PASSWORD}
        I click on the login button
        I am able see the expected error message     Epic sadface: Username is required

unSuccessful Login - no Password
        I navigate to the login page    ${URL}
        I input only the username     ${USERNAME}
        I click on the login button
        I am able see the expected error message      Epic sadface: Password is required
     
unSuccessful Login - Wrong Credentials
        I navigate to the login page    ${URL}
        I input wrong credentials       cristian    1234
        I click on the login button
        I am able see the expected error message     Epic sadface: Username and password do not match any user in this service








