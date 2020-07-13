# README
TRAINING PROGRAM -- PROJECT 3
DEVELOPING A BLOGGING PLATFORM

REQUIREMENTS

* Ruby 2.5

* Rails 6

INSTALL AND MIGRATE DB

bundle install
rails db:migrate

START SERVER
To start rails server

rails server

Navigate to http://localhost:3000 in the browser to view the home page.



This is a simple blogging platform developed using rails.

Features:

* Multi user support with authentication

* A user can have many articles

* Articles can be updated or deleted

* A user can only edit or delete their articles

* Anyone can see a list of all the articles, or a particular article without loggin in

Gems used:

* Bcrypt

This project achieves multi user authentication with login and signup using Bcrypt. Anyone can signup
using an email and a password. After logging in, users are allowed to create new articles, or edit
or delete the articles they have previously created.

Each article is associated with a user to make sure only the owner can modify or delete articles.
