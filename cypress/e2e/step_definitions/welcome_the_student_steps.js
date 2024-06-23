import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

When("the student enters the name {string}", (name) =>{
    cy.get('[data-cy="input-welcome-student"]').clear();
    cy.get('[data-cy="input-welcome-student"]').type(name);
  }); 

When("press send button", () => {
    cy.get('[data-cy="button-welcome-message"]').click();
  }); 

Then("the student should see the message {string}", (welcomeMessage) => {
    cy.get('[data-cy="message-welcome-response"]').should('have.text', welcomeMessage);
});

When("the student leaves name field empty", () =>{
    cy.get('[data-cy="input-welcome-student"]').should('be.empty');

});

Then("the student should see an error message", () => {
    cy.get('[data-cy="error-welcome-message"]').should('have.text', "Name field is required");
});

