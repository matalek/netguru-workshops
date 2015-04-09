# Workshops application

This app is an improved version of the training application created by Netguru: [https://github.com/netguru-training/workshops](https://github.com/netguru-training/workshops). It was created as a recruitment task for Netguru Gdańsk Workshops 2015.

## Issues solved

1. All tests are passing.

2. Website is available on Heroku at: [https://strawberry-cake-5156.herokuapp.com](https://strawberry-cake-5156.herokuapp.com) with seeds data.

3. Design has been finished: I have used [Unity Bootstrap theme](https://bootswatch.com/united/).

4. User profile has been created.

5. Appropriate links have been added (and hidden from inappropriate users).

## Additional improvements

1. Password recovery system for app working on localhost has been enabled (not yet on Heroku due to security reasons).

2. Review display has been enhanced.

3. Some further authentications, not specified, but reasonable, have been added.

## Setup

**Database (as in the original app)**

Copy the database config file (and edit if needed): 
` cp config/database.yml.sample config/database.yml`

Make sure the user you've listed in `database.yml` is created for postgres:
`createuser -s -r workshops`

Setup the database for your application (development and test environments):
`bin/rake db:setup`
`bin/rake db:test:prepare`

**Mailing**

Source: [https://rubyonrailshelp.wordpress.com/2014/01/02/setting-up-mailer-using-devise-for-forgot-password/](https://rubyonrailshelp.wordpress.com/2014/01/02/setting-up-mailer-using-devise-for-forgot-password/)

Create file called `.env` in root directory filled with your mail account data:

```
GMAIL_DOMAIN=yoururl.com
GMAIL_USERNAME=support@yoururl.com
GMAIL_PASSWORD=password12345
```

Create another file called `Procfile` in root directory with `web: bundle exec rails s`

Now you can start server using: `foreman start`.




