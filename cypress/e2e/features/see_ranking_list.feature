Feature: See ranking and check that the ranking list is ordered by score in descending ordered

Scenario: See ranking and check that the ranking list is ordered by score in descending ordered
Given the student visits istqb test page
And the student enters the name "Mike"
And press send button
And the student selects 10 questions
|questionNumber | selectedAnswer |
| 1             |      A         |
| 2             |      B         |
| 3             |      A         |
| 4             |      A         |
| 5             |      C         |
| 6             |      B         |
| 7             |      C         |
| 8             |      A         |
| 9             |      A         |
| 10            |      C         |
And the student clicks on the finish test button
And the student enters the name "Emma"
And press send button
When the student selects 10 questions
|questionNumber | selectedAnswer  |
| 1             |  B              |
| 2             |  A              |
| 3             |  B              |
| 4             |  C              |
| 5             |  A              |
| 6             |  B              |
| 7             |  A              |
| 8             |  C              |
| 9             |  C              |
| 10            |  A              |
And the student clicks on the finish test button
And the student enters the name "Kaylan"
And press send button
And the student selects 10 questions
|questionNumber | selectedAnswer |
| 1             |                |
| 2             |                |
| 3             |                |
| 4             |                |
| 5             |                |
| 6             |                |
| 7             |                |
| 8             |                |
| 9             |                |
| 10            |                |
And the student clicks on the finish test button
Then presses on the display ranking button
And the ranking list should be displayed by score in descending ordered
|id  | ranking | studentName | score |
| 0  | 1       | Emma        |  20   |
| 1  | 2       | Kaylan      |   0   |
| 2  | 3       | Mike        |  -7   |