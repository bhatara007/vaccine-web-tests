*** Settings ***
Resource  test.resource

*** Keywords ***

Open Application
    Open Browser          ${URL}    ${BROWSER}
    SET SELENIUM SPEED  0.1 seconds

Go To Registeration Page
    Click Element    identifier=register__link

Input Registration Information
    Input Text      identifier=citizen_id        ${CITIZEN_ID} 
    Input Text      identifier=name              ${FIRST_NAME} 
    Input Text      identifier=surname           ${LAST_NAME} 
    Input Text      identifier=birth_date        ${BIRTH_DATE} 
    Input Text      identifier=occupation        ${OCCUPATION} 
    Input Text      identifier=phone_number      ${PHONE_NUMBER} 
    Input Text      identifier=address           ${ADDRESS}

Redirect To Home page
    Wait Until Page Contains Element  identifier=splash-img
    ${CURRENT_URL} =  Get Location 
    Should BE Equal  ${CURRENT_URL}  ${URL}

*** Test Cases ***

Open service taker URL
    Open Application
    Title Should Be  Vaccine Haven

Register on URL
    Go To Registeration Page
    Page Should Contain  Citizen Registration
    Input Registration Information
    Click Element    identifier=register__btn 
    Redirect To Home page