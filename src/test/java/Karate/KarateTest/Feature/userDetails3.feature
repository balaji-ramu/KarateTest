Feature: creating user details using post method

Background:
* def givenInput = read('../Data/valuePost.json')
* header Content-Type = 'application/json'

Scenario: Adding new details to the database
Given url 'https://reqres.in/api/users'
And request givenInput
When method POST
Then status 201
Then print 'The response is---',response

