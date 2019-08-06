*** Settings ***
Resource          ../../Users/honey.mishra/Desktop/Resource.txt

*** Test Cases ***
AddValidUser
    As a user, when I browse the application
    I Click on Add button to Add user
    When I enter the user details:    honey    mishra    honeymishra@doxim.com    9900112233    9900112233    ${EMPTY}
    ...    \    1    1    1    57 Street CP , New Delhi \
    And Click on Submit Button
    #Then user details gets saved successfully.
