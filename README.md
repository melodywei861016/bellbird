# BellBird
A website that allows visitors to create alarms (which will send a push notification to the user's phone) and upvote alarms

## Instructions to Set Up

On Terminal:

* `cd` into the `bellbird` folder
* call the `rake db:seed` command in terminal to get the database in `seed.rb`
* call the `rails s` command in terminal to start the server

On the Web Browser:

* go to the url: `localhost:3000`

## Assumptions
* I assumed that by "visitors" it means the website is not registration based so anyone who links to the website can create and upvote alarms.
* Upvote is based on visitor session (opening up another tab/web browser to the website allows the visitor to add a new vote as a different session user)
* I assumed that the spec only requires us to implement functions to create alarm and upvote alarm, therefore I did not implement delete or edit functions for alarms as well as downvote.
* I wasn't sure how the spec wants us to enforce the ALL CAPS requirement, so I implemented my code so that if the user types in lowercase input for the alarm name, the website automatically converts the input to uppercase and assign it to the new alarm.
* I added some alarms in the database in seed.rb for application testing purposes.
