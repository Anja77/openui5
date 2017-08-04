Feature: Buy a Product

  Background:
    Given I start my App

  Scenario: Buy it
    When on home: I press on "The Flat Screens category"
    When on the category: I press on "The first Product"
    When on the product: I add the displayed product to the cart
    When on the category: I go to the cart page

    When on the cart: I press on the proceed button
    Then on checkout: I should see the wizard step contents step

    When on checkout: I press on the next step button
    Then on checkout: I should see the wizard step payment type step

    When on checkout: I press on the next step button
    Then on checkout: I should see the credit card step

    When on checkout: I enter credit card text
    Then on checkout: I should see the step4 button enabled

    When on checkout: I press on the next step button
    Then on checkout: I should see the billing step

    When on checkout: I enter billing address text
    Then on checkout: I should see the step5 button validated

    When on checkout: I press on the next step button
    Then on checkout: I should see the delivery type step

    When on checkout: I press on the next step button
    Then on checkout: I should see the order summary

    When on checkout: I press on the edit button backto list
    Then on checkout: I should see the wizard step contents step

    When on checkout: I press on the bank transfer button
    When on checkout: I press on the yes button
    Then on checkout: I should see the step3 button enabled

    When on checkout: I press on the next step button
    Then on checkout: I should see the step4 button enabled

    When on checkout: I press on the next step button
    Then on checkout: I should see the step5 button enabled

    When on checkout: I press on the next step button
    Then on checkout: I should see the delivery type step

    When on checkout: I press on the next step button
    Then on checkout: I should see the order summary

    When on checkout: I press on the edit button back to payment type
    Then on checkout: I should see the wizard step contents step

    When on checkout: I press on the cash on delivery button
    When on checkout: I press on the yes button
    Then on checkout: I should see the step3 button enabled

    When on checkout: I press on the next step button
    Then on checkout: I should see the cash on delivery step

    When on checkout: I enter cash on delivery text
    Then on checkout: I should see the step4 button enabled

    When on checkout: I press on the next step button
    Then on checkout: I should see the billing step

    When on checkout: I enter billing address text
    Then on checkout: I should see the step5 button validated

    When on checkout: I press on the next step button
    Then on checkout: I should see the delivery type step

    When on checkout: I press on the next step button
    Then on checkout: I should see the order summary

    When on checkout: I press on the edit button back to billing address
    Then on checkout: I should see the wizard step contents step

    When on checkout: I check different address text
    When on checkout: I press on the yes button
    When on checkout: I press on the next step button
    Then on checkout: I should see the delivery address step

    When on checkout: I enter delivery address text
    Then on checkout: I should see the step6 button validated

    When on checkout: I press on the next step button
    Then on checkout: I should see the delivery type step

    When on checkout: I press on the next step button
    Then on checkout: I should see the order summary

    When on checkout: I press on the edit button back to delivery type
    Then on checkout: I should see the wizard step contents step

    When on checkout: I press on the express delivery button
    When on checkout: I press on the next step button
    Then on checkout: I should see the order summary
    Then on checkout: I should see express delivery

    When on checkout: I press on the submit button
    When on checkout: I press on the yes button
    Then on order completed: I should see the order completed page

    When on order completed: I press on the return to shop button
    Then on the welcome page: I should see the welcome page
    Then on the welcome page: I teardown my app
