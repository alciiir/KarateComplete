Feature: Sample API Test

  Scenario: Test Get API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime

    * assert response.data.responseTime < 10