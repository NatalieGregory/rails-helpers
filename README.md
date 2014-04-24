# Demo Rails App

## Overview

This apps shows how to CRUD different domain objects.

* People - super simple - no validations, few Rails helpers, ERB
* Trees - similar to People, but uses `resources` in routes, and has validations

## Generating this app

Generate the app:

    rails new rails-helpers -d postgresql -T

Delete lots of comments and unnecessary directories.

Get spec up and running by adding the following to the Gemfile

    group :test do
      gem 'rspec-rails', '~> 2.14.2'
      gem 'capybara', '~> 2.2.1'
    end

then run:

    bundle
    RAILS_ENV=test rails g rspec:install

## To run migrations

    bin/rake db:migrate

## Getting Setup Locally

    bundle
    bin/rake db:create
    bin/rake db:migrate
    bin/rake spec

