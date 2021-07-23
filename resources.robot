*** Settings  ***

Library         SeleniumLibrary

*** Variables ***

${SERVER}    localhost:5000
${BROWSER}   chrome
${HOMEPAGE}     http:/google.com.br

*** Keywords ***

open the browser
Open Browser ${HOMEPAGE} ${BROWSER}

search topics
[Arguments]${topic}
Input Text name=q ${topic}
Press Key name= q \\13 

*** Test Cases ***

Open Browser
open the browser

Search on Google
search topic Amazon Brasil



