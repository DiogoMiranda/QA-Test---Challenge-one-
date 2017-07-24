
Feature: Add a new participant to the group
    As Group Administrator
    I want to add a participant 
    So that I can add a new member to interact with group

Background:
	 Given I open the Whatsapp on Android

Scenario: Add a new participant to the group successfully

    Given I am on the screen Dados do grupo
    When I click  Adicionar participante button
    Then I should see the screen Contatos 
    And  I should see the contacts
    When I select a contact 
    Then I should see an alert Adicionar <participant> ao grupo <group> 
    And  I should click in Ok button
    Then I should see a new participant in the group

Scenario: Error - Add a new participant to the group

   In this scenario I consider the internet is off
   
    Given I am on the screen Dados do grupo
    When  I click  Adicionar participante button
    Then  I should see the screen Contatos 
    And   I should see the contacts
    When  I select a contact 
    Then  I should see an alert Adicionar <participant> ao grupo <group> 
    And   I should click in Ok button
    Then  I should see a message Verifique a conexão de seu telefone e tente novamente