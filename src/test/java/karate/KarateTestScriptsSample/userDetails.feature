Feature: fetching User Details
Scenario: testing the get call for User Details
 
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200

#We are printing the Response of the API using the print keyword
Then print response
 

#Reading the file ExpectedOutput.json and storing same response in variable expectedResult
Given expectedResult=read('./resources/ExpectedOutput.json')
#Asserting the Actual Response with the Expected Response
And match response == expectedResult