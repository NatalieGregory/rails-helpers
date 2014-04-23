# Generating this app

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

## Getting Setup Locally

    bundle
    bin/rake db:create
    bin/rake db:migrate
    bin/rake spec
