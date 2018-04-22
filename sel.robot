*** Settings ***
Library  Selenium2Library
Test Setup  Open Browser To Login Page
Test Teardown  Close Browser

*** Variables ***
${WWW}  http://www.poczta.wp.pl/
${USER}  testerwsb_t1
${PASS}  adam1234
${PASS1}  adam12341

*** Test Case ***
Go to poczta.wp.pl
  Input text  //*[@id="login"]  ${USER}
  Input Password  //*[@id="password"]  ${PASS}
  Click Button  //*[@id="btnSubmit"]
  ${Odebrane}  Get Text  //*[@title="Odebrane"]
  Page Should Contain  ${Odebrane}  zawiera slowo

Wrong pass
  Input text  //*[@id="login"]  ${USER}
  Input Password  //*[@id="password"]  ${PASS1}
  Click Button  //*[@id="btnSubmit"]

*** Keywords ***
Open Browser To Login Page
  Open Browser  ${WWW}
  Maximize Browser Window
