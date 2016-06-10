## Installation
- install heroku toolbelt
- download at [https://toolbelt.heroku.com/](https://toolbelt.heroku.com)

## Login
- `heroku login`
- Enter your Heroku credentials.

## Add heroku gem
- add `gem 'rails_12factor', group: :production` to **Gemfile**

## New App
- `heroku create YourAppName`

## Exiting app
- `heroku git:clone -a YourAppName`

## Exiting repo
- `heroku git:remote -a YourAppName`

## Deploy to heroku
- deploy your code `git push heroku master`
- if you need to deploy specific branch `git push heroku yourbranch:master`

## Migrate and Seed your db
- `heroku run rake db:migrate`
- `heroku run rake db:seed`

## Open in browser
- `heroku open`

## View logs
- `heroku logs --tail`
