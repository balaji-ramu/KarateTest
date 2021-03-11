Feature: fetching User Details

Background: 
* def expectedOutput = read('../Data/valueGet.json')


Scenario: testing the get call for User Details for ID=2
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And match response == expectedOutput[0]
And match response.data.id == 2
And print 'The response for ID=2 is',response
* def firstName = response.data.first_name
And print 'The firstname for response ID=2 is',firstName



Scenario: testing the get call for User Details for ID=3
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
And match response == expectedOutput[1]
And match response.data.id == 3
And print 'The response for ID=3 is',response


