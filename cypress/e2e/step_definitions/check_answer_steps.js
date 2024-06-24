import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

When("the student selects a correct answer {string} on question {string}", (answer,question) => {

    cy.get('[data-cy="question'+question+'"]').select(answer);

}); 


When("the student clicks on the check Answer button on question {string}", (question) => {
    cy.get('[data-cy="button-checkAnswer-question'+question+'"]').click();
}); 

Then("the student should see a display message {string} on question {string}", (message, question) => {

    cy.get('[data-cy="q'+question+'CheckAnswer-question'+question+'"]').should('have.text',message);

}); 

When("the student selects an incorrect answer {string} on question {string}", (answer,question) => {

    cy.get('[data-cy="question'+question+'"]').select(answer);

}); 

When("the student selects an empty answer {string} on question {string}", (answer,question) => {

    cy.get('[data-cy="question'+question+'"]').select(answer);

}); 
