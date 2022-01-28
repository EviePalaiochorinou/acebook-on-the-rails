# AceBook

Acebook is a Facebook-clone application made with Ruby on Rails by Makers team 'On the Rails' of Nov '21 cohort.\
Kim Morgan\
Inigo Meshoulam\
Sarah Dousse\
Zoë Idehen\
Evie Palaiochorinou\
Michael Kassim\
James Cort

## Technologies Used

- Ruby on Rails
- Rspec & Capybara (for testing)
- HTML
- CSS
- Bulma (for CSS)
- JavaScript
- Heroku (deployment)
- AWS for Active Storage
- Github actions for CI/CD

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Troubleshooting

If you don't have Node.js installed yet, you might run into this error when running rspec:

```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
 ```

Rails requires a Javascript runtime to work. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again

## Acebook on Heroku
Deployed on Heroku with CI/CD.\
https://immense-sea-58140.herokuapp.com/

## MVC diagram of the MVP
![Acebook - MVC](https://user-images.githubusercontent.com/44344660/151557855-64085525-0375-40fc-87c1-28f4595e7455.jpg)

![Acebook - MVC (1)](https://user-images.githubusercontent.com/44344660/151558005-60144c1d-5166-4c18-a3d5-24a8be0d6fde.jpg)

## Features

- User can sign up
- User can log in
- User can create a post (from news feed or own profile page)
- User can edit their post
- User can comment on their or another's post
- Use can edit their comment within 10 mins of posting
- User can like their or another's post
- User can unlike their or another's post
- User can see the likes count and last liker on a post
- User can delete their own posts and comments
- User can see a flash message when they delete a post or comment
- User can view their or someone else's profile page
- Use can toggle newsfeed by 'all posts' or 'friends' posts' only
- User can upload their own profile picture
- User's name and profile picture is displayed next to their post, on the navigation bar, and also on their profile page
- User can log out

## Trello Board
https://trello.com/b/bj3kJWGF/acebook
