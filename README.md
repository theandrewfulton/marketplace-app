# Marketplace App

## Identification of the *problem* you are trying to solve by building this particular marketplace *app*.

surge in home gardens during pandemic

no marketplace dedicated to being able to buy and sell produce (facebook marketplace, gumtree???)

reduce friction associated with those marketplaces - bartering and messaging (although veggie marketplace should probably still have messaging capabilities)



## Why is it a *problem* that needs solving?

reduce carbon footprint associated with transportation and supply chains

support local businesses and people over large corporations

during the pandemic, trying to reduce travel



## A link (URL) to your deployed *app* (i.e. website)

deployment on Heroku

## A link to your GitHub repository (repo).
\- *Ensure the repo is accessible by your Educators*

not yet named but this is the repo:

https://github.com/theandrewfulton/marketplace-app

## Description of your marketplace *app* (website), including:
### Purpose

purpose of the marketplace to facilitate easily buying and selling homegrown produce in and around their local area

### Functionality / features

view listings

​	quantity

search listings

messaging

payment gateway

add/delete/manage listings

users can log in to create listings and make purchases

reviews???

fee on creating listings or just on buying???

reviews for seller but still on listing?

location field on listing?

how to stop customers cancelling orders and paying sellers directly?

- cancellations to go through administrators?
  - how can they tell what's happening
  - how does Airbnb do it?

### Sitemap
### Screenshots
### Target audience
### Tech stack (e.g. html, css, deployment platform, etc)

html and css as part of ruby on rails

deployed on heroku

images hosted on cloundinary/AWS S3

database with PostgreSQL with ruby translated into SQL with ActiveRecord

## User stories for your *app*

see Trello, paste when finalised

## Wireframes for your *app*

combined login/sign up screen if possible, otherwise one for each

see listings

one listing - showing information, photos and reviews

messages?

nav bar along the top with stuff like an "about" page

omniauth for sign up/log in page

admin dashboard - not mvp at this stage

wireframe for messaging? - hard for plugins

image carosel? - or just a list, or thumbnails you can click on?

first image uploaded is the image that appears on listings

Buy Now and Add to Cart?

max 5 images

Home? - or show listings but if not logged in, show explainer

About?

user page?

option for total quantity? - then choose what to offer? - might be hard to implement in the time given



all listings

one listing

create listing

messaging

about

buy page

sign up

sign in

manage user listings

quantity capped out at maximum?

controller to change create and edit listing depending on whether the listing already exists



sort listings by most recently updated? - created by rails by default

categories in seed file?

seed user once you have a user model

roles table?

rails 6.0.3 if you have issues with Heroku and bootsnap



set root to listings

add omniauthable trait to devise in models/user.rb

check scaffolds.scss - at least the visited section

use mailer?



edit user details using routes including delete account or modify profile



Move welcome message to partial?

investigate button to and/or abbreviated styling for tailwindcss

fix banner image

## An ERD for your *app*

start quantity and current quantity column?

sold

Bank details for sellers!

image size parameters

Transactions (including wireframe)

add photos to erd

## Explain the different high-level components (abstractions) in your *app*

## Detail any third party services that your *app* will use

Cloudinary/AWS

Stripe

Messaging service

github

Australia Post??? - some other API for postcodes - maps?

## Describe your projects *models* in terms of the relationships (active record associations) they have with each other

## Discuss the database relations to be implemented in your application

## Provide your database schema design

## Describe the way tasks are allocated and tracked in your project

using trello with colour coded labels