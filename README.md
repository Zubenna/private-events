# README

# Rails Associations Project

This project is basically to understand and apply rails association by building an event management like application. A user need to create an account to be able to log into the application. He can now create an event with and send invitation to others. User can create and attend many events and each event has many attndees.

## Features 
- User can sign up into the app.
- User can log in after sign up. 
- User can create and attend many events.
- You can see all attendees for a particular event.
- Events are grouped as past and upcoming event
- Logged in Users can see all events and their creators grouped by past and upcoming events.

## How to Test the Project

Get a local copy of the file  clone with HTTPS 

```
https://github.com/Zubenna/private-events  
```
Install all the dependencies
```
bundle install
```

Migrate the database with the following command
```
rails db:migrate
```

## Run the server

- Access the project folder by typing the command cd private-events folder from your terminal
- Start rails server with the command rails server.
- In your brwoser, type http://localhost:3000/welcome to access the app.
- You can now sign up, Log in, create events and navigate the app to test all features.

## Built With
- Ruby, Ruby on Rails
- RSpec, Capybara 

## Author

 **Nnamdi Emelu**
- Github: [@githubhandle](https://github.com/zubenna)
- Twitter: [@twitterhandle](https://twitter.com/zubenna)
- Linkedin: [linkedin](https://linkedin.com/in/nnamdi-emelu-08b14340/)

##  Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Zubenna/private-events/issues)

## Show your support

Give a star if you like this project!

## Acknowledgments

- Project originally taken from The Odin Project
- Project inspired by Microverse Program
