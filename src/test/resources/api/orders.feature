Feature: order

  Scenario Outline: Send GET http request to ge all order
    Given I set the GET api endpoint for order
    When I send HTTP api GET request for order
    Then I receive valid HTTP response code <ignoredArg0> for get all data order
    And I received valid data for all order
    Examples:
      | ignoredArg0 |
      | 200         |

  Scenario Outline: Send POST http request to create a new order with fill valid data on the body request
    Given I set the POST api endpoints in order
    When I send HTTP api POST request for order
    Then I receive a valid HTTP response code <ignoredArg0> on the order POST
    And I receive valid data for create new order
    Examples:
      | ignoredArg0 |
      | 200         |

  Scenario Outline: Send GET http request to get order by available id
    Given I set the GET api endpoint for order by id
    When I send HTTP api GET request for order by id
    Then I receive valid HTTP response code <ignoredArg0> for get id data order
    And I receive valid data for id order
    Examples:
      | ignoredArg0 |
      | 200         |