# AESM Website Automation

This repository contains web automation scripts using the Robot Framework to automate the AESM website. The test cases are designed to ensure the functionality and reliability of the website through automated testing.

## Table of Contents

- [Project Overview](#project-overview)
- [Installation](#installation)
- [Usage](#usage)
- [Test Cases](#test-cases)

## Project Overview

The goal of this project is to automate various functionalities of the AESM website using Robot Framework. This includes testing different components, pages, and user interactions to ensure quality and performance.

## Installation

To set up the project on your local machine, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/asindrawancode/robotframework-aesmwebsite-azurewebsites.git
   cd robotframework-aesmwebsite-azurewebsites
   ```

2. Ensure you have Python and pip installed.

3. Install Robot Framework and necessary libraries:
   ```bash
   pip install robotframework
   pip install robotframework-seleniumlibrary
   ```

4. If required, install any additional dependencies listed in `requirements.txt`:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

To run the test cases, navigate to the root of the repository and execute:

```bash
robot test/home_tests.robot
```

## Test Cases

The test cases are located in the `tests` directory. They cover various features of the AESM website, including:

- Navigation
- Validate Home Screen content

Each test case follows a defined structure to ensure clarity and maintainability.