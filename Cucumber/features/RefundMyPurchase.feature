@All
Feature: Customer Search and Purchase item from the application
         In this feature a customer will come to my application, login, Search
         do payment and logout

    Background:
            Given User open browser, enter URL and navigate to login page
@Regression
    Scenario Outline: Verify login and logout functionality with multiple user data
            When User enters username "<username>"
            And User enters password "<password>"
            And User clicks on signin button
            Then User should be logged in
            When User clicks on signout link
            Then User should be logged out
    Examples:
            |username|password|
            |User1|Pass1|
            |User2|Pass2|
            |User3|Pass3|
            |User4|Pass4|
            
@Smoke @Regression
    Scenario: New User(Unregistered User) comes to application, Search, Register and Purchase
            When User enter data in Search field
            And User click on Search button
            And User click on Add to cart for the first search result
            And User click on my Cart button
            Then User should get added item in Cart
            And User should get price of item in front of Item name
            When User click on Purchase button
            And User Select payment mode is Credit Card

@Smoke
    Scenario: Registered User, Search Item, Add to cart and Purchase
            When User enter "Mobile Phone" in Search field
            And User click on Search button
            And User click on Add to cart for the first search result

    Scenario: Registered User, search, Add to Cart, Change Address and Payment
            When User enter "Smart TV" in Search field
            And User click on Search button
            And User click on Add to cart for the first search result
