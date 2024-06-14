import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";

  Given("the student visits istqb test page", () => {
    // Visitar una pagina web diferente a la que este en base url
    // cy.visit("https://bootcampqa.com/");

    // Cuando está definida en cypress.config.js la baseeurl
    cy.visit("/");
    
  });