Feature: Order Juice
  
  Order for juice

  @order_juice
  Scenario: 
    Given burp is setup for scanning
    And I open juiceshop landing page
    And proceed to login
    When Login into juice shop
    When add 1 item to basket