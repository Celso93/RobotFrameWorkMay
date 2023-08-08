# Warning
    Remenber to install chromedriver and geckodriver before execute these tests

# Running Tests:
    robot amazon_resource.robot
    Run with tag: 
        robot --include TAG tests/amazon_test.robot
        robot --exclude menus tests/amazon_test.robot
        robot -d results tests/amazon_test.robot
        robot -d results -v BROWSER:firefox (Chaging a variable)  tests/amazon_test.robot

# Keywords:
    [Tags] Control each type of test in running
    [Documentation] Documentation for each test case

# To Execute the test:
    Two strategies
        Setup: (Test Setup) or (Suite Setup)
            Everything that you have to run BEFORE your run one case test or a test suite 
        Teardown: (Test Teardown) or (Suite Teardown)
             Everything that you have to run AFTER your run one case test or a test suite 

# Elements
- https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Locating%20elements
- To interect with css selector (locator=css:h1)
Documentation:
- https://github.com/robotframework/SeleniumLibrary/
- https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

Problems:

- [TypeError: WebDriver.__init__() got an unexpected keyword argument 'service_log_path'](https://github.com/robotframework/SeleniumLibrary/issues/1835)