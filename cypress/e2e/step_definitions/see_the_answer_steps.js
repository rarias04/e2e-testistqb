import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

  When("the student clicks on the See Answer button on question 1", () => {
    cy.get('[data-cy="button-showAnswer-question1"]').click();
  }); 

  Then("it should be displayed a message {string}", (expectedMessage) => {

    cy.get('[data-cy="q1Response-question1"]').should('have.text',expectedMessage);
  });
