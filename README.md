_E-Commerce_

#### _This is an application for an online store. It was given to us incomplete and needed changes to be made to fix bugs_

#### By _**Mohamed Warsame**_

## Features

Changes made by me to application are:

* Users can add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
* Users can click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.
* Users can remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

To pass this code review, six of the following additional features were also required to be implemented (checked boxes indicate which features are currently implemented in this project):

* Ensure that users can't order a negative number of items.
* Add flash messages for signing up, signing in and signing out.
* Add product update and delete functionality for admins.
* Add admin flash messages for adding, updating and deleting products.
* Add product validations.
* Add admin links to navbar so admins can easily add, update and delete products.
* Add password validations to ensure a user's password is sufficiently complex.
* Fix the row height for products, which can quickly become uneven.
* Add further AJAX functionality where it might be useful (new product creation).

## Setup/Installation Requirements

* _Clone the repo_
* _Run the following commands in the root of the project to set up the application_
```
$ bundle install
$ rails db:create
$ rails db:schema:load
$ rails db:seed
$ rails s
```

## Technologies Used

* _HTML5/SCSS_
* _Rails_
* _Ruby_
* _Rspec_
* _Capybara_
* _Faker_

### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **_Mohamed Warsame_**
