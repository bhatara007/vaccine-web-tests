*** Settings ***
Resource  test.resource

*** Keywords ***

Open Application
    Open Browser          ${URL}    ${BROWSER}

Go To Reservation Page
    Click Element    identifier=reserve__link

Input Registration Information
    Input Text                   id:citizen_id      ${CITIZEN_ID}
    Select From List By Value    id:site_name       ${SITE}
    Select From List By Value    id:vaccine_name    ${VACCINE_NAME}

Go To Information Page
    Wait Until Page Contains Element  identifier=splash-img
    Click Element    identifier=nav__info__link

Input ID Information
    Wait Until Page Contains    Citizen ID 
    Input Text  identifier=citizen_id  ${CITIZEN_ID}
    Click Button  Submit
    Sleep  0.5 seconds

Verify Information  
    Wait Until Page Contains    User information:                
    Page Should Contain  ${CITIZEN_ID}     
    Page Should Contain  ${FIRST_NAME}          
    Page Should Contain  ${OCCUPATION}      
    Page Should Contain  ${PHONE_NUMBER}    
    Page Should Contain  ${ADDRESS} 
    Page Should Contain  ${VACCINE_NAME} 
    Page Should Contain  ${SITE} 

Verify Reservation Information
    Page Should Contain Element    identifier=reserve_vaccine_value    
    Page Should Contain            ${VACCINE_NAME}
    Page Should Contain Element    identifier=reserve_site_value 
    Page Should Contain            ${SITE}

Verify Cancelation Information
    Page Should Contain Element    identifier=reserve_vaccine_value    
    Page Should Contain            ""
    Page Should Contain Element    identifier=reserve_site_value 
    Page Should Contain            ""

*** Test Cases ***
Open service taker URL
    SET SELENIUM SPEED  0.3 seconds
    Open Application
    Title Should Be  Vaccine Haven

Make Reservation
    Go To Reservation Page
    Input Registration Information
    Click Button  Submit

Verify user information
    SET SELENIUM SPEED  0.3 seconds
    Go To Information Page
    Input ID Information
    Verify Information
    Verify Reservation Information

Make Cancelation & Verify
    Click Button  cancel__btn
    Input ID Information
    Verify Cancelation Information

