*** Settings ***
Resource          ../Resource.txt

*** Test Cases ***
AddNewUser
    As a user, when I browse the application
    I register a new user
    When I enter the user details:    honey    mishra    honeymishra@doxim.com    9900112233    9900112233    1
    ...    1    6411641C-F93C-4923-8D28-21FD0F36ADD6    102    1    12225    cp
    ...    newdelhi
    And Click on Submit Button
    #Then user details gets saved successfully.

AddInvalidUser
    As a user, when I browse the application
    I register a new user
    When I enter the user details:    honey    mishra    cxcv    testmobile    alternateNumber    1
    ...    1    6411641C-F93C-4923-8D28-21FD0F36ADD6    102    1    12225    cp
    ...    hfghgf
    And Click on Submit Button
    #Then user details should not gets saved successfully.

CancelAddingUser
    As a user, when I browse the application
    I register a new user
    When I enter the user details:    honey    mishra    honeymishra@doxim.com    9900112233    9900112233    1
    ...    1    6411641C-F93C-4923-8D28-21FD0F36ADD6    102    1    12225    cp
    ...    newdelhi
    And Click on Cancel Button
    #Then user details gets saved successfully.
