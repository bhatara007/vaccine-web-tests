*** Settings ***
Documentation    Play around with selenium library
...              more documentation
Library          SeleniumLibrary
Library          DateTime 


*** Variables ***
${URL}        https://vaccine-haven.herokuapp.com/
${REGISTER_URL}    https://vaccine-haven.herokuapp.com/registration
${BROWSER}         gc
${CITIZEN_ID}      9621054599805
${FIRST_NAME}      Bhatara
${LAST_NAME}       Chaemchan
${BIRTH_DATE}      12122000  
${OCCUPATION}      Student
${PHONE_NUMBER}    0819259003
${ADDRESS}         53/1 moo.1 Bangkrui sai-noi26 Bangsrithong Bangkraui Nonthaburi 11130
${VACCINE_NAME}  Pfizer
${SITE}  OGYHSite
