*** Settings ***
Library  SSHLibrary
Suite Setup   Open Connection And Log In
Suite Teardown  Close All Connections

*** Variables ***
${HOST}  localhost
${USERNAME}  tester
${PASS}  adam


*** Test Case ***

Test numer
  ${output}=         Execute Command    uname -a
  Log to console   ${output}

Test numet dwa
  ${output}=         Execute Command    uname -a
  Should contain    ${output}    GNU/Linux

*** Keywords ***

Open connection And Log In
  Open Connection  ${HOST}
  Login  ${USERNAME}  ${PASS}
