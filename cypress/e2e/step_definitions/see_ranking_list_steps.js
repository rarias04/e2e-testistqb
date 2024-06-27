import {
    Given,
    When,
    Then,
} from "@badeball/cypress-cucumber-preprocessor";

When("the student selects 10 questions", (datatable) => {
        datatable.hashes().forEach((element) => {
            cy.get('[data-cy="question'+element.questionNumber+'"]').select(element.selectedAnswer);
        });
    
    }); 

When("presses on the display ranking button", () => {
    cy.get('[data-cy="button-displayRanking"]').click();
});

When("the ranking list should be displayed by score in descending ordered", (datatable) => {
        datatable.hashes().forEach(element => {
            cy.get('[data-cy="newParagraph'+element.id+'"]').should('have.text', `${element.ranking}. Name: ${element.studentName}. Score: ${element.score}`);
        });
    
        
    }); 