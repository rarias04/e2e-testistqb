Feature: Check answer

Scenario Outline: check correct answers
Given the student visits istqb test page
When the student selects a correct answer <answer> on question <question>
And the student clicks on the check Answer button on question <question>
Then the student should see a display message "The answer is correct, well done! You get 2 points for a correct answer" on question <question>

Examples:
    | question | answer   |
    |  "1"     | "B" |
    |  "2"     | "A" |
    |  "3"     | "B" |
    |  "4"     | "C" |
    |  "5"     | "A" |
    |  "6"     | "B" |
    |  "7"     | "A" |
    |  "8"     | "C" |
    |  "9"     | "C" |
    |  "10"    | "A" |


Scenario Outline: check incorrect answers
Given the student visits istqb test page
When the student selects an incorrect answer <answer> on question <question>
And the student clicks on the check Answer button on question <question>
Then the student should see a display message "The answer is incorrect, good try! One point is deducted for an incorrect answer" on question <question>

Examples:
    | question | answer   |
    |  "1"     | "A" |
    |  "2"     | "B" |
    |  "3"     | "C" |
    |  "4"     | "A" |
    |  "5"     | "B" |
    |  "6"     | "C" |
    |  "7"     | "C" |
    |  "8"     | "A" |
    |  "9"     | "A" |
    |  "10"    | "B" |


Scenario Outline: check incorrect answers
Given the student visits istqb test page
When the student selects an empty answer <answer> on question <question>
And the student clicks on the check Answer button on question <question>
Then the student should see a display message "Please, select an option. Zero points for an empty answer" on question <question>

Examples:
    | question | answer   |
    |  "1"     | "" |
    |  "2"     | "" |
    |  "3"     | "" |
    |  "4"     | "" |
    |  "5"     | "" |
    |  "6"     | "" |
    |  "7"     | "" |
    |  "8"     | "" |
    |  "9"     | "" |
    |  "10"    | "" |