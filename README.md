# README

Introduction

This is a simple Book/Author/Publisher application. Basicly what the application does is listing every single book that is stored on the database. This books are ordered by title and you can make a search of any of it based on the title and the publisher house given. 
Also, you can access to book's covers via '/covers' where you'll find a list of the cover books. Books can be editable so you are free to make any change by clicking the edit button on the book profile view. 

There is also another view where you can see all the authors stored on the database. As with the books, you are free to make any modification by clicking the edit button on the profile author view. 

The last feature is the publisher house. You can create any Publisher house you want, as with authors, accesing the following url '/publisher_houses/new' and for authors '/authors/new'. Publisher Houses are modificable too, so don't be afraid if you make a mistake mistyping. 

Instalation 
1) Download App typing on terminal: 
git clone'https://github.com/Kevanz10/interview2.git'
2) Access to downloaded folder and type on terminal 
Bundle install. 
This will install project's gems.

4) Type on terminal
rake db:migrate
(this will create tables on the database that will store all data related to models)

5)Type on terminal 
rake db:seed 
(This will create 20 books on the database.)

6) Try the app with (Rails s)
Project was delivered ( Nov 8,2016)