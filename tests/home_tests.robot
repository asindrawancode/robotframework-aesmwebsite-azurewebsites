*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Suite Teardown  Close Browser

*** Variables ***
${URL}               https://aesmwebsite-stg-dev.azurewebsites.net/    # Replace with actual URL
${BROWSER}           chrome

*** Test Cases ***
Open Browser and Navigate to Homepage
    [Documentation]    Open the homepage in the browser.
    Open Browser                ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Progressively setting the standard
    Close Browser

Test Navigation Links
    [Documentation]    Verify navigation links work correctly.

    Open Browser    ${URL}    ${BROWSER}
    Click Element                          //*[text()='About us']
    Wait Until Page Contains Element       //*[text()='Pioneers in global ship management']
    Wait Until Element Is Visible          //button[text()='Accept']
    Click Element                          //button[text()='Accept']
    Go Back

    Click Element                          //*[text()='Careers']
    Wait Until Page Contains Element       //*[text()='Careers']
    Go Back

    Click Element                          //*[text()='News and Insights']
    Wait Until Page Contains Element       //*[text()='ESG Report 2023: Sailing towards a sustainable future']
    Go Back

    Click Element                          //*[text()='Contact us']
    Wait Until Page Contains Element       //*[text()='Get in touch']
    Go Back
    Close Browser

Test Search Functionality
    [Documentation]    Verify search functionality.

    Open Browser                     ${URL}    ${BROWSER}
    Click Element                    //i[@class='remixicon ri-search-line']
    Wait Until Element Is Visible    //input[@type='search']
    Input Text                       //input[@type='search']    shipping
    Press Keys                       //button[@aria-label='Search magnifier button']    ENTER
    Wait Until Page Contains         Search Results for: shipping
    Close Browser

Verify Headline and Footer Text
    [Documentation]    Verify the headline and body text are displayed correctly.

    Open Browser                    ${URL}    ${BROWSER}
    Wait Until Page Contains        Progressively setting the standard
    Wait Until Page Contains        So that we can shape a better maritime future together.
    Scroll Element Into View        //footer
    Wait Until Element Is Visible   //button[text()='Accept']
    Click Element                   //button[text()='Accept']

    # About Us
    Element Should Be Visible    //*[text()='About Us']
    Element Should Be Visible    //*[text()='Mission and values']
    Element Should Be Visible    //*[text()='News and insights']
    Element Should Be Visible    //*[text()='ESG']
    Element Should Be Visible    //*[text()='Our Services']
    Element Should Be Visible    //*[text()='Contact Us']

    # Vessel Types
    Element Should Be Visible    //*[text()='Vessel Types']
    Element Should Be Visible    //*[text()='Dual-Fuel Vessel']
    Element Should Be Visible    //*[text()='Bulk Carrier']
    Element Should Be Visible    //*[text()='Oil / Chemical Tanker']
    Element Should Be Visible    //*[text()='Container Ship']
    Element Should Be Visible    //*[text()='Gas Tanker']
    Element Should Be Visible    //*[text()='Ro-Ro Ship']
    Element Should Be Visible    //*[text()='Offshore Ship']
    Element Should Be Visible    //*[text()='Passenger Ship']

    # Services
    Element Should Be Visible    //*[text()='Services']
    Element Should Be Visible    //*[text()='Ship Management']
    Element Should Be Visible    //*[text()='Crew Management']
    Element Should Be Visible    //*[text()='Newbuilding Supervision']
    Element Should Be Visible    //*[text()='Digital Innovation']
    Element Should Be Visible    //*[text()='Fleet Performance Centre']

    # Access My Anglo-Eastern Client Portal
    Element Should Be Visible    //*[text()='Access My Anglo-Eastern Client Portal']

    Close Browser