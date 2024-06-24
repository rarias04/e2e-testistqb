import {
    Given,
    When,
    Then,
} from "@badeball/cypress-cucumber-preprocessor";

When("the student selects answer {string} on question {string}", (answer,question) => {

    cy.get('[data-cy="question'+question+'"]').select(answer);

}); 

When("the student clicks on the finish test button", () => {
    cy.get('[data-cy="button-finishTest"]').click();
}); 

Then("the student should see a display message {string}", (message) => {

    cy.get('[data-cy="response-finishTest"]').should('have.text',message);

});