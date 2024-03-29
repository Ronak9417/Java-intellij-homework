Feature: Bookcategory

  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopcommerce.com/" in browser
    And  I am on Home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I shoud be able to see top menu tebs with "<categories>"
    Examples:
      | Categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When   I select book category from top menu tabs on home page
    Then   I should be navigated  to book category
    And    I should be able to see "<Filters>"

    Examples:
      | Filters  |
      | Short by |
      | Display  |
      | The grid |
      | List tab |

  Scenario Outline: I should be able to see list of term of each filter
    Given I am on book page
    When I click on "<Filter>"
    Then I should be able to see "<List>" in dropdown menu

    Examples:
      | Filter  | List                                                                           |
      | Sort by | Name: A to Z,Name : Z to A, Price :Low to High, Price : High to Low,Created on |
      | Display | 3 , 6 ,9                                                                       |

    Scenario Outline: I should be able to choose any Filter option with specific result
      Given I am on book page
      When I click on "<Filter>"
      And I click on any "<Option>"
      Then I should be able to choose any filter option from the list
      And I should be able to see "<Result>"
Examples:
  |Filter             | Option                     | Result                                                             |
  |Sort by            | Name:A to Z                | Sorted product with the product name in alphabetical order A to Z  |
  |Sort by            | Name:Z to A                | Sorted product with the product name in alphabetical order Z to A  |
  |Sort by            | Price:Low to High          | Sorted product with the price in descending order                  |
  |Sort by            | Price:High to Low          | Sorted product  with the price in ascending order                  |
  |Sort by            | Created On                 | Recently added  product should be show first                       |
  |Display            | 3                          | 3 Products in a page                                               |
  |Display            | 6                          | 6 Products in a page                                               |
  |Display            | 9                          | 9 Products in a page                                               |

Scenario Outline: I should be able to see product display format according display format type as per given picture in SRS document
  Given I am on book page
  When I click on "<Display format icon>"
  Then I should be able to see product display format according display format type as per given picture in SRS document

  Examples:

    | Display format icon  |
    | Grid                 |
    | List                 |

