Feature: Posting User Details
 
   Scenario: testing the POST call for User Creation
      Given url 'https://reqres.in/api/users'
      And request '{"name": "manoj","job": "leader"}'
     When method POST
     Then status 201