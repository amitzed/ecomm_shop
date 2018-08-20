# [eComm Shop](https://ecomm-amitzaman.herokuapp.com/)


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

rails g scaffold Item brand:string product:string description:text condition:string origin:string title:string price:decimal

After creating uploader:
rails g migration add_image_to_items image:string

To assign user account to the item that they are selling:
rails g migration add_user_id_to_items user_id:integer

Created CART model:
rails g scaffold Cart --no-stylesheets --no-javascript
