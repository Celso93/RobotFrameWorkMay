*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://www.amazon.com.br
# ${EL_ELECTRONICS}     //*[@id="nav-xshop"]/a[8]
${EL_ELECTRONICS}    css:a[href$='electronics']

*** Keywords ***
Open Chrome browser
    Open Browser    browser=gc

Close Chrome browser
    Capture Page Screenshot
    Close Browser

# Interaction Keywords
Visit the home page of Amazon.com.br
    Maximize Browser Window
    Go To    ${URL}

Access the menu "Eletrônicos"
    Wait Until Page Contains Element   locator=${EL_ELECTRONICS}
    Click Element                      locator=${EL_ELECTRONICS}
    Wait Until Element Is Visible      locator=css:h1

Page title should be "${TITULO}"
    Title Should Be    title=${TITULO}

Page should display the phrase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}

Page should show the category "${ALT}"
    Wait Until Element Is Visible    locator=css:img[alt='${ALT}']

In the search field, search for the product "${PRODUCT}"
    Input Text    locator=css:#twotabsearchtextbox    text=${PRODUCT}

Click on the search button
    Click Button    locator=css:#nav-search-submit-button

The search results page should display the product "${RESULT}" in the results.
    Wait Until Page Contains    text=Resultados    timeout=10
    Wait Until Page Contains    text=${RESULT}

The search results page should display the product "${PRODUCT}" and add to cart
    The search results page should display the product "${PRODUCT}" in the results.
    Click Element                    xpath=//*[text()='${PRODUCT}'][1]

    Wait Until Element Is Visible    locator=css:.a-box-group
    Click Element                    locator=css:#add-to-cart-button
    Wait Until Page Contains         text=Adicionado ao carrinho

Check If "${PRODUCT}" was added to the cart
    Click Element                    locator=css:#nav-cart-text-container
    Title Should Be                  title=Carrinho de compras da Amazon.com
    Wait Until Page Contains         text=${PRODUCT}
