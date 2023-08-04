*** Settings ***
Documentation    This test suite is for testing the Amazon website functionalities.
Resource         ../resources/amazon_resource.robot
Test Setup       Open Chrome browser
Test Teardown    Close Chrome browser

*** Variables ***
${PRODUCT}    Xbox Series X

*** Test Cases ***
Case Test 01 - Access the "Eletrônicos" Menu
    [Documentation]     This test case verifies the accessibility of the "Eletrônicos" 
    ...                 category and checks if other categories are visible.
    [Tags]             menus    categories
    Visit the home page of Amazon.com.br
    Access the menu "Eletrônicos"
    Page title should be "Eletrônicos e Tecnologia | Amazon.com.br"
    Page should display the phrase "Eletrônicos e Tecnologia"
    Page should show the category "Computadores e Informática"

Case Test 02 - Search for a Product
    [Documentation]    This test verifies if the product is returned correctly using the search field.
    [Tags]             search_products    list_products
    Visit the home page of Amazon.com.br
    In the search field, search for the product "${PRODUCT}"
    Click on the search button
    The search results page should display the product "${PRODUCT}" in the results.

Case Test 03 - Add a produtc in the cart
    [Documentation]    Check if is possible to add product
    [Tags]             cart
    Visit the home page of Amazon.com.br
    In the search field, search for the product "${PRODUCT}"
    Click on the search button
    The search results page should display the product "${PRODUCT}" and add to cart
    Check If "${PRODUCT}" was added to the cart