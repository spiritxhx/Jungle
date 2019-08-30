# Jungle

Jungle is a mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Product screenshots

### Users
1. Users can see the list of the products and price, description about the products. 
![JungleMainPage](https://github.com/spiritxhx/Jungle/blob/master/screenshots/JungleMainPage.png)

2. Users can sign up for their new account with name, email and password. 
![JungleSignUp](https://github.com/spiritxhx/Jungle/blob/master/screenshots/JungleSignUp.png)

3. After signed up, users will be redirected to the mainpage with login information. 
![JungleSigned](
  https://github.com/spiritxhx/Jungle/blob/master/screenshots/JungleSigned.png
)

4. Users can add items to their shopping cart. 
![JungleCart](https://github.com/spiritxhx/Jungle/blob/master/screenshots/JungleCart.png)

5. Users can pay for their items in cart(using fake credit card for now)
![JunglePayment](https://github.com/spiritxhx/Jungle/blob/master/screenshots/JunglePayment.png)

### Administrators
System admins can modify the inforamtion for the products
![JungleProducts](https://github.com/spiritxhx/Jungle/blob/master/screenshots/JungleProducts.png)

### Testing
Screenshots for test results

![JungleTest](https://github.com/spiritxhx/Jungle/blob/master/screenshots/JungleTest.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
