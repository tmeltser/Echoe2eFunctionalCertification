Feature: Echo product E2E testing

Background:
    * url 'http://il-tmeltser'
Scenario Outline: Echo: <what>
    Given path 'echo'
    And param what = <what>
    When method get
    Then status 200
    And match response == <expected>

    Examples:
    | what      | expected  |
    | 'hello'   | 'hello'   |
    | 'world'   | 'world'   |
    | 'Good'    | 'Good'    |
    | 'Morning' | 'Morning' |
    | 'Vietnam' | 'Vietnam' |
