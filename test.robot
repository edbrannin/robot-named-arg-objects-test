*** Settings ***

Library    keyword.py

*** Test Cases ***

First
    ${v}=    My Keyword    I_UNDERSTOOD_THAT_REFERENCE=${None}
    Should Be Equal    ${v}    ${None}
    ${v}=    Middleman    I_UNDERSTOOD_THAT_REFERENCE=${None}
    Should Be Equal    ${v}    ${None}

*** Keywords ***

Middleman
    [Arguments]    ${I_UNDERSTOOD_THAT_REFERENCE}=${None}
    [Return]    ${foo}
    ${foo}=    My Keyword    I_UNDERSTOOD_THAT_REFERENCE=${None}
