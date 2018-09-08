# [eComm Shop](https://ecomm-amitzaman.herokuapp.com/)

Created using Ruby on Rails, PostgreSQL, Bulma

rails s
postgres -D /usr/local/var/postgres
psql ecomm_shop_development
sass --watch scss:css

user@gmail.com
123456

##### Dev Notes:
Heroku with Ruby/SQL
-> Heroku is already set up to use Postgres, so you don't need any addons. To access DB, log into heroku psql:

##### heroku pg:psql

To Remove Items from DB:
##### delete from items where id = x;
(to delete from database)

To View Items, Users, etc from DB:
##### delete from items where id = x;
(to delete from database)



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.5.0
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
  then...
  rails db:migrate

THEN create line-item models: (the item will reference a line item and the cart will belong to a line item)
  rails g scaffold LineItem item:references cart:belongs_to
  then...
  rails db:migrate

To add QUANTITY to line items:
rails g migration add_quantity_to_line_items
then...
rails db:migrate

Created Seed:
then...
bash $  rails db:seed
