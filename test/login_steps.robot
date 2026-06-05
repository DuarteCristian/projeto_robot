*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keyworks.resource
Suite Setup    Open Browser   browser=chrome

*** Variables ***
${URL}    https://www.saucedemo.com/


*** Test Cases ***
Successful Login
        I navigate to the login page    ${URL}
        I input correct credentials   
        I click on the login button
        I am able view the home page

unSuccessful Login - No Credentials
        I navigate to the login page    ${URL}
        I input no credentials
        I click on the login button
        I am able see the expected error message for no credentials    

unSuccessful Login - No UserName
        I navigate to the login page    ${URL}
        I input only the password  
        I click on the login button
        I am able see the expected error message for no username

unSuccessful Login - no Password
        I navigate to the login page    ${URL}
        I input only the username     
        I click on the login button
        I am able see the expected error message for no password         
     
unSuccessful Login - Wrong Credentials
        I navigate to the login page    ${URL}
        I input wrong credentials       
        I click on the login button
        I am able see the expected error message for wrong credentials     








