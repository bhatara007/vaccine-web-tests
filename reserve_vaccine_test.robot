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
    Click Element    identifier=nav__info__link

Input Information
    Input Text  identifier=citizen_id  ${CITIZEN_ID}
    Click Button  Submit

Verify Information                  
    Page Should Contain  ${CITIZEN_ID}     
    Page Should Contain  ${FIRST_NAME}     
    Page Should Contain  ${BIRTH_DATE}     
    Page Should Contain  ${OCCUPATION}      
    Page Should Contain  ${PHONE_NUMBER}    
    Page Should Contain  ${ADDRESS} 
    Page Should Contain  ${VACCINE_NAME} 
    Page Should Contain  ${SITE} 

Verify Reservation Information
    Page Should Contain Element    id:reserve_vaccine_value    
    Page Should Contain            ${VACCINE_NAME}
    Page Should Contain Element    id:reserve_site_value 
    Page Should Contain            ${SITE}





*** Test Cases ***
Open service taker URL
    SET SELENIUM SPEED  0.3 seconds
    Open Application
    Title Should Be  Vaccine Haven

# Reservation
#     Go To Reservation Page
#     Input Registration Information
    # Click Button  Submit

Verify user information
    Go To Information Page
    Input Information
    Verify Reservation Information
