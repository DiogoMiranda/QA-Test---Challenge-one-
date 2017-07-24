
Feature: Do a chat backup
     As a user
     I want  to do a backup
     So that I can back up local in my WhatsApp

Background:
     Given I open the Whatsapp on Android

Scenario: Do local backup successfully

     Given I am on the screen Configurações
     When I click Conversas button
     Then I should see a screen Configurações de conversas
     When I click Backup de conversas button
     Then I should see a screen Backup de conversas
     When I click Fazer Backup button
     Then I should see a message Fazendo backup das mensagens
     And  I should see a alert conecte seu telefone a uma rede Wi-fi para fazer o backup no Google Drive
     And  I should see a message Enviando <size> <percentage>

Scenario: Do backup using Google Drive successfully

  In this scenario I consider the internet is On
  and I have a Google account connected

     Given I am on the screen Configurações
     When I click Conversas button
     Then I should see a screen Configurações de conversas
     When I click Backup de conversas button
     Then I should see a screen Backup de conversas
     When I click Fazer Backup button
     Then I should see a message Fazendo backup das mensagens
     And  I should see a message Preparando backup do Google Drive
     And  I should see a message Enviando <size> <percentage>