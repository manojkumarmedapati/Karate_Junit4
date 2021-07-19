Feature: Check list of countries
  Background:
    * url 'https://restcountries.eu'
    * header Accept = 'application/json'
  Scenario: Get list of all countries
    Given path '/rest/v2/all'
    When method GET
    Then status 200
    And match response.[*].name contains ["India"]
    And match response.[*].currencies[*].code contains ["INR"]
    And match response.[*].languages[*].name contains ["Hindi"]