*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup        Open Browser   http://automationexercise.com   Chrome
Suite Teardown    Close Browser

*** Variables ***
${Product}    polo


*** Keywords ***
Click Products button
    Click Link    xpath: //*[contains(text(), "Products")]	

Input Search
    [Arguments]    ${Product}
    Input Text    //*[@id="search_product"]     ${Product}

Click Search button
    Click Button        //*[@id="submit_search"]

Click Cart button
    Click Link    xpath: //*[contains(text(), "Cart")]

Click Signup/Login 
    Click Link    xpath: //*[contains(text(), " Signup / Login")]

*** Test Cases ***
Search Products and Verify Cart After Login
    [Documentation]     This testcase is expected to Search "Products" and Verify Cart AfterLogin
    Click Products button
    Input Search    $Product
    Click Search button
    Click Cart button
    Click Signup/Login