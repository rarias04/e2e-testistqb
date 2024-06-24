Feature: Finish the test and check the total score

Scenario:  Finish the test and check the total score
Given the student visits istqb test page
When the student selects answer "B" on question "1"
And the student selects answer "" on question "2"
And the student selects answer "B" on question "3"
And the student selects answer "A" on question "4"
And the student selects answer "A" on question "5"
And the student selects answer "B" on question "6"
And the student selects answer "" on question "7"
And the student selects answer "B" on question "8"
And the student selects answer "" on question "9"
And the student selects answer "A" on question "10"
And the student clicks on the finish test button
Then the student should see a display message "The final score is: 8"
