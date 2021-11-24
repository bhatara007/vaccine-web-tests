*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://service-taker.vercel.app
${Browser}  chrome
*** Keywords ***

*** Test Cases ***
1. Open service taker url
   Open Browser ${url} chrome
