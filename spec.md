# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app ++I used Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database ++I used ActiveRecord to store, organize, and retrieve information related to asanas and user-created sequences using those asanas.
- [x] Include more than one model class (list of model class names e.g. User, Post, Category) ++ I created an Asana, Group, Sequence, and User model. I also created a SequenceAsana model to iteract with its respective join table via ActiveRecord.
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts) ++ An asana has many sequences through sequence_asanas and a sequence has many asanas through sequence_asanas
- [x] Include user accounts ++ Users can sign up for their own private account.
- [x] Ensure that users can't modify content created by other users ++Users cannot access other users' accounts
- [x] Include user input validations ++ I added ActiveRecord validates macros to the User and Sequence models
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new) ++ I added flash messages that confirm the successful creation of a sequence, alert to an unsuccessful attempt to create a sequence, and alert to an unsuccessful attempt to signup.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code ++ It does.

Confirm
- [x] You have a large number of small Git commits ++ To this point, I have over 180 small commits.
- [x] Your commit messages are meaningful ++ They are.
- [x] You made the changes in a commit that relate to the commit message  ++ I made sure I confirmed changes I made before committing 
- [x] You don't include changes in a commit that aren't related to the commit message  ++ I made sure I confirmed changes I made before committing 
