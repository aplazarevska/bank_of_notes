# The Bank of Notes (and Coins!) Marketplace App

A simple two-sided marketplace application for buying and selling old money, banknotes and coins. 



# Identification of the Problem / Why is it a problem?

As a collector of old money myself, I always though of increasing my collection, without having to ask my elderly relatives if they have any old money left in their wallets by any chance. I looked online for people who sell old banknotes, and there are, many, but they are either using general marketplaces like Ebay or Etsy, or they go to dedicated websites for this purpose. But since I am not a serious collector, and do not plan to devote many hours to this hobby, I feel that those dedicated websites are not the best option for people like me. The issue with such websites is that they are either devoted to selling and buying only Australian currency ([therightnote.com.au](https://vintagecoinsandbanknotes.com.au/)), they only buy old money from customers ([oldmoneyprices.com](https://vintagecoinsandbanknotes.com.au/)), or they buy and sell old money as well as offer numismatics books, other financial services, are cumbersome to look at, are for serious collectors ([vintagecoinsandbanknotes.com.au](https://vintagecoinsandbanknotes.com.au/), [pgsgoldandcoin.com](https://www.pgsgoldandcoin.com/)). 

I wanted to create simple two-sided marketplace where anyone can easily create an account and trade their old banknotes and coins, that does not tire the user with tons of additional contents, that is made for those thousands (or more) people who only want to sell one old banknote they have and be done with it, or who only want to buy something interesting from all around the world without turning it into dedicated hobby. 



# URL of the App

[the-bank-of-notes.herokuapp.com](https://the-bank-of-notes.herokuapp.com/)



# GitHub Repository

[github.com/aplazarevska/bank_of_notes](https://github.com/aplazarevska/bank_of_notes)



# Description

#### Purpose

The Bank of Notes (and Coins!) is a two-sided marketplace where everyone can crate account and buy or sell vintage money. It allows the sellers to easily create account and in a very simple way list their offers. For the buyers it offers an easy way to browse the listings, view information about them, create account and make the purchase. 

#### Functionality / Features

The app is very simple. It allows the users to create profile, and then to buy and/or to sell things by clicking on the sell and buy buttons. The sell button is clearly visible and leads to a page where the user can create new listing. The seller has to upload two images of the money, provide price and title. The seller can edit and delete their own listings. The buy button appears after the user logs in, and views the individual listing from the browse list. After the purchase the button turns to sold and can not be purchased anymore. Using the browse feature every visitor of the website can view all the listings. There is search button which is still work in progress.

#### Target Audience

The target audience is anyone who is interested to sell or buy vintage banknotes and coins. That would mean that everyone can be a customer, as every one of us has at least one old banknote or coin (old can even mean 10 years old). I am especially targeting those people who are not serious collectors, and they are much more numerable for sure, but there is nothing stopping those who collect vintage money as a serous hobby or profession to also use this website. 

#### Tech Stack

The app is written in Ruby on Rails, and additionally uses HTML and CSS. The database is managed with PostgreSQL. Payments are processed through Stripe. Bootstrap is used for styling. Devise is in charge of the authentication. Simple-form was used for the forms throughout the app. The code is hosted on Github and git was used frequently for code management. The site is deployed on Heroku. Trello is used for organising the project. The wireframes are drawn in Balsamiq, the ERD in dbdesigner.net, the sitemap in diagrams.net. 

#### Sitemap

![marketplace_app_sitemap](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/marketplace_app_sitemap.png)



#### Screenshots

![homepage](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/homepage.png)

![browse](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/browse.png)



![view](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/view.png)



![new_listing](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/new_listing.png)



![payment](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/payment.png)



# User Stories

- As someone who owns some vintage money, I want to be able to buy more banknotes and coins, so that I can grow my collection.
- As a serious vintage money collector, I want to be able to obtain rare gems that random people might have in their possession, so that I can enrich my existing collection with them. 
- As a person who inherited one 100-year old banknote from my grandfather, I want to sell this banknote to someone who will take good care of it instead of disposing of it or losing it myself, so that this valuable item can be taken good care of and will continue to have a long-lasting life. 
- As someone who is not interested in numismatics, I want to sell some vintage money that I have in an easy and fast way on a simple website, so that I don't have to be contacted by the buyer website with newsletters, offers, etc.
- As a collector of vintage money, I want to be able to sell the item I don't want to keep anymore, so that someone else can have them in their collection.
- As a person who wants to start collecting old money, I want to be able to buy items from all around the world, so that I can start my collection with affordable banknotes. 



# Wireframes

![wireframes_homepage](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/wireframes_homepage.png)

![wireframes_browse](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/wireframes_browse.png)

![wireframes_view](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/wireframes_view.png)

![wireframes_login](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/wireframes_login.png)

![wireframes_new](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/wireframes_new.png)

![wireframes_search](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/wireframes_search.png)



# ERD



![marketplace_app_erd](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/marketplace_app_erd.png)



![marketplace_app_erd_old](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/marketplace_app_erd_old.png)



# High-level Components (Abstractions)

At the core of the MVC architecture are the models, views and controllers. My app uses this architecture. Initially I created seven models for each table in my initial ERD. I simplified this design during the development process, so subsequently I added the attributes of three tables to two other tables and reduced the number of models to four. I set the relationships and associations in each model's rb file, and added validations to some crucial components in the listing, profile and user models. The models communicate with the views through the controllers. As that crucial link between the database and the visual side of the app, the controllers for each model contain the code that directs the functions of the app. In the application_controller the user_type is defined, and before_action is taken to determine if the user is buyer or seller and adequately point him towards the functions that user will need. Also after_sign_in_path is set for the users, again, to point them to the right direction (ex. a seller should make listing, not be taken to Stripe payment). The params for some controllers (listings, profiles) were manually adjusted to include additional components of each of those models. The views are where the frontend is dealt with. Using Bootstrap code and HTML, as well as Embedded Ruby, the look of the webpages is designed. Any additional CSS styling is added to the app/assets/stylesheets folder. Additional home and partials folders were created, to cater for the code for the navbar (same on each page) and the homepage. Also, small changes to the Devise forms were made in the new.html.erb file. 

One static image is included in the app/assets/images for the homepage. And of course, additional settings to the routes.rb file was made to adjust some of the paths for payments and homepage. Active Storage is used for the images that are uploaded for each listing.



# Third Party Services Used by the App

Devise is used for the authentication. The app has login feature, and this is managed by Devise. New users have to create profile before they can log in. A hidden filed was added to the devise/registration/new.html.erb file to determine the user type and adequately manage that feature. 

Stripe is used for payments. When a user logs in and wants to make a purchase, clicking on the Buy button takes him to the Stripe page. If the user decides not to proceed with the payment, clicking on the back button on the Stripe page will take them back to the listing. Same things happens if they proceed with the payment. 

Simple-form is used to set the format and manage the functionality of the forms that are created in the app, such as the form for making new listing. Simple-form provides additional gem for getting a list of countries, which in the case of The Bank of Notes was not needed. Therefore in the views/listings/_form.html.erb and the views/profiles/_form.html.erb the country had to be manually set to string, to remove the need for simple-form to mess with this feature. 

Heroku was used for deployment. The local database was not uploaded to Heroku because it was not necessary. New users and listings can be made for the deployed site. Stripe functions without issues on the deployed site, and this is true for all the other features as well. 

Trello was used as a project management tool. Cards were made for each requirement of the assignment, as well as for every step of the development process. Issues were listed and ticked when finished. 



# The Models and Their Relationships

The initial database had seven models, but subsequently three were removed and their attributes were implemented in the other existing models. Of the remaining four models, three of them belong to one other model. Images belongs_to listings, profile belongs_to user, and listing belongs_to profile. But due to the fact that the profile can be of a seller or buyer, using the self join relation, the listing model belongs_to two additional relations: buyer and seller. 

Of the four models, two have a has_many relationship and one has has_one relationship. This is opposite of the belongs_to relationship that was explained before. The user has one profile because this has to be kept unique for security reasons. The profile however has many listings to buy and to sell. The profile user can be both buyer and seller and is not restricted to how many purchases or listings he can make. The listing also has many images attached, but the number of images is then restricted to two, because there is no need for more images to be uploaded of a banknote or a coin. 

So for this simple application there was no need to make more models. The listings model deals with all the listings that the seller has to sell or the buyer has to look through. The images model deals with the images which must be attached to each listing. And the user model has to exist because the sellers and buyers must be users who will then create profile for security reasons. So the profile model has to exist separately from the users model, as this is where the personal information is stored, while in the user model just the login details are stored. 



# Database Relations

The database relations are very similar to the model relations explained above. There are four tables in the database, and three of them have foreign keys that point to other tables. The profile has a foreign key pointing to the users table through the user_id. All the personal information relevant for this kind of marketplace are attributes in the profiles table. But because each profile belongs to some user, this is where the foreign key connects these two tables. The users table on the other hand have the login details as attributes. 

The listings table includes attributes that display information relevant for each listing. As listing has to be made by a seller, it therefore belongs to the profiles table and is connected to it through a foreign key. Due to the self join association the listings table also includes buyer_id and seller_id attributes. Another attribute of a listing is the images that are attached to each listing. 

The images table has few attributes that describe the image. Images belong to a certain listing, so the foreign key of a listing is present in this table as well. 



# Database Schema Design

![final_erd](/Users/Ana/Documents/CA/assignments/AnaLazarevska_T2A2/docs/final_erd.png)



The final database includes all the initial tables that I created in the beginning. I did not rollback the database since they were not making any issue for the code. I decided to remove those three initial tables (Issuing_countries, Years, and Addresses) because I needed the information captured in them to appear in the other tables. There was no need to have them in separate tables. I also removed some attributes which again seemed unnecessary. 

Otherwise, the initial and final ERD have the same contents. 

# Implementation Plan

I used Trello board to set tasks and track them. Each assignment requirement was tracked. Additionally, during the development process, each stage was assigned a new card, problems were recorded in the card, and they were ticked when completed, and the card was placed in the Done stack. The cards were given a priority and due date. 

Access the Trello Board for the Marketplace App: [trello.com/b/rpqQMvG8/the-bank-of-notes-and-coins](https://trello.com/b/rpqQMvG8/the-bank-of-notes-and-coins)