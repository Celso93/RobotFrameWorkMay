# Introduction
This document covers the basics of the Robot Framework.

## Installation

Windows: Visit the Python's official site [here](https://www.python.org/)

After installing Python 3.11.4, install the Robot Framework using the command below:

```
pip install robotframework

```

To verify successful installation, use the following command:
```
robot --version
```

To install the library for running API tests, use:
```
pip install robotframework-requests
```

## Usage

For REST API testing, visit the following repository and run it locally:
[https://github.com/ServeRest/ServeRest](https://github.com/ServeRest/ServeRest)

## Execution
After running the ServeRest server, navigate to the api_test directory and execute the following command:

```
robot -d ./results tests/api_testing_user.robot
```

## Additional Information:
For more information, check the following resources:
- Python Package Index: [Python official documentation](https://pypi.org/)
- Official Robot Framework site: [RobotFrameWork Official](https://robotframework.org/)
- REST API Introduction: [Informacoes sobre API REST](https://becode.com.br/o-que-e-api-rest-e-restful/)
- Testing Web Services with Postman: [Testtando com postman](https://medium.com/@thi_carva/testando-servi%C3%A7os-web-api-com-postman-874ac81b20a3)
- ServeRest GitHub Repository: [ServeRest Github](https://github.com/ServeRest/ServeRest)
- [May Blog](http://robotizandotestes.blogspot.com/)