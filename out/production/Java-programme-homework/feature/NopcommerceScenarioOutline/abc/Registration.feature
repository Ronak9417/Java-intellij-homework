Feature: Nopcommerce Registration

  As a User I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given I open the Google Chrome Browser
    When  I open the URL https://demo.niocommerce.com/Register
    Then  I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When   I enter First Name "<First Name>"
    And    I enter Last Name "<Last Name>"
    And    I enter Email Address "<Email >"
    And    I enter Password "<Password>"
    And    I enter Confirm Password "<Confirm Password>"
    And    Click on Register Button
    Then   I can see an Error Message "<Error Message>"
    And    I am not able to register

    Examples:
      |First Name  |Last Name   | Email            |Password    |Confirm Password |Error Message              			     |
      |""	       |Patel       |Ronak@gmail.com   |123456      |123456           |Please enter First Name     			     |
      |Ronak	   |""	        |Ronak@gmail.com   |123456      |123456  	      |Please enter Last Name      			     |
      |Ronak       |Patel       |""			       |123456      |123456  		  |Please enter valid email   			     |
      |Ronak	   |Patel       |Ronak@gmail.com   |""          |123456			  |Password is required              		 |
      |Ronak       |Patel       |Ronak@gmail.com   |123456      |""				  |Confirm password is required              |
      |Ronak       |Patel       |Ronak@gmail.com   |1234567     |123456			  |Password and confirm password do not match|
      |Ronak       |Patel       |Ronak@gmail.com   |1234        |""  			  |Minimum 6 character password is required  |
      |""		   |""		    |""			       |""	        |""				  |Mandatory (*) filed is required           |

    Scenario: I should be able to select any one radio button from Gender Label of your personal details section
      Given I select in Gender label of your personal detail section
      When I select "Male" radio button
      And I select "Female" radio button
      Then I am able to select any one of the radio button

      Scenario Outline: I should be able to select Day, Month and Year from drop list of Date of birth field
        Given I am Date of birth field of your Personal Detail section
        When I select Day "<Day>"
        And  I select Month "<Month>"




