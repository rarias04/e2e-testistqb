Feature: Welcome the student

Scenario: Enter a name with less than 10 characters

Given the student visits istqb test page
When the student enters the name "Emma"
And press send button
Then the student should see the message "Welcome Emma to the ISTQB online Test"


Scenario: Enter a name with more than 10 characters

Given the student visits istqb test page
When the student enters the name "Emma Taylor"
And press send button
Then the student should see the message "Welcome Emma Taylo to the ISTQB online Test"

Scenario: Enter an empty name

Given the student visits istqb test page
When the student leaves name field empty
Then the student should see an error message
