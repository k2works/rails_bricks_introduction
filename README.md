RailsBricks入門
===================

# 目的 #
RailsBrickを使ってRailsアプリケーションを構築してHerokuにデプロイする。

# 前提 #
| ソフトウェア   | バージョン   | 備考        |
|:---------------|:-------------|:------------|
| OS X           |10.8.5        |             |
| ruby           |2.1.1         |             |
| rvm            |1.24.0        |             |
| rbricks        |2.0.5         |             |
| heroku-toolbelt |3.6.0        |             |

+ [Herokuにサインアップしている](https://id.heroku.com/signup/devcenter)
+ [Heroku Toolbeltをインストールしている](https://toolbelt.heroku.com/)

# 構成 #
+ [環境セットアップ](#1)
+ [アプリケーションのセットアップ](#2)
+ [アプリケーションのデプロイ](#3)

# 詳細 #

## <a name="1">環境セットアップ</a> ##
    
    $ rvm install ruby-2.1.1
    $ rvm use ruby-2.1.1
    $ rvm gemset create rails_bricks
    $ rvm use ruby-2.1.1@rails_bricks
    $ gem install railsbricks
    $ gem install rails --version=4.0.4    

## <a name="2">アプリケーションのセットアップ</a> ##

    $ rbricks -n

    ***********************************
     RailsBricks v2.0.5
    
     www.railsbricks.net
    ***********************************
    
    
    1. Intro
    --------
    Hi. I'm the RailsBricks wizard. Let's spend a little while together to set up
    your awesome Rails application. If you think that I talk too much, I won't be
    offended. You can make me shut up by creating a new app with the command:
    
     rbricks -n --shut-up
    
    - Create a new Rails app?
    Your choice (y/n): y
    
    
    2. Your Environment
    -------------------
    First, I will need some information about your environment.
    
    - Which version of Ruby do you want to use?
    1. 1.9.3
    2. 2.0.0 (default)
    3. 2.1.1
    Your choice (1-3): 3
    
    - How do you usually run your 'gem install' command?
    1. gem install name_of_gem (default)
    2. sudo gem install name_of_gem
    3. I don't know
    Your choice (1-3): 1
    
    - How do you usually run rake tasks?
    1. rake some_task (default)
    2. bundle exec rake some_task
    3. I don't know that
    Your choice (1-3): 1
    
    - Do you use RVM, rbenv or any other Ruby version manager?
    1. RVM
    2. rbenv
    3. other
    4. none (default)
    Your choice (1-4): 1
    
    
    3. Your App
    -----------
    Ok, I've got enough information about your environment for now.
    
    Let's talk about the app you want to create. I can tell you it will be a Rails
    4.0.4 app and that the gem Rails 4.0.4 will be installed globally (in your main
    gem location, that is). So, if you already have other versions of Rails
    installed, don't forget to call your 'rails' command with the correct version,
    like 'rails _4.0.4_ server', for example.
    
    If you wonder, other gems will be isolated from your other ones and installed
    within 'vendor/bundle' inside your app.
    
    - What is the name of your app?
    Enter app name: rails_bricks_introduction
    
    
    4. Your Production Environment
    ------------------------------
    I guess that at some point, your fantastic app is going to be available to
    everyone on the web. If you wish, we can set up some parameters together
    already like the domain name you'll use. Of course, you can modify them at a
    later stage.
    
    - Do you want to configure production settings?
    Your choice (y/n): y
    
    - Where will your app be hosted?
    1. Heroku (default)
    2. Somewhere else
    Your choice (1-2): 1
    
    - What will be its domain name?
    (example: www.myawesomeapp.com, myawesomeapp.example.com, etc...)
    Domain name (without http://): 
    
    
    5. Your Database
    ****************
    I need to know which database engine you will use. You can change these
    settings at a later stage.
    
    This version of RailsBricks uses SQLite in Development and Test. You will need
    to set your Production database manually if you don't use Heroku for hosting
    your app. This will change in a future version of RailsBricks.
    
    Press Enter to continue: 
    
    
    6. Your Authentication Model
    ****************************
    Your app will maybe have users. Maybe you even want users to be able to create
    an account on your app in which case I recommend you select Devise in the given
    options. If you'll only have a handful of users or even only one you'll manage
    yourself, I recommend that you use the Simple authentication.
    
    - Which authentication model do you want to use?
    1. Simple authentication (default)
    2. Devise
    3. No authentication
    Your choice (1-3): 1
    
    - Do you want to create test users?
    1. Yes, create 5
    2. Yes, create 50
    3. Yes, create 250 (slow)
    4. Yes, create 1000 (slower)
    5. No, only create my Admin account (default)
    Your choice (1-5): 5
    
    
    7. Your Email Settings
    **********************
    If you want your app to be able to send emails, I need to get few information
    from you. Of course, you can change these settings manually later by editing
    'config/application.yml'. If you are using the Devise authentication model, I
    strongly advise you to set these settings already so they'll be able to
    retrieve their forgotten password (silly users) or confirm their email address.
    
    - Configure email settings?
    Your choice (y/n): n
    
    
    8. Your Test Framework
    **********************
    I won't tell you how important it is to test your app, to make it more robust,
    yadda yadda. So, I will let you choose one test framework. Of course, if
    testing is only for others but not you, you can opt to have no tests generated
    at all. Ever.
    
    - Which test framework?
    1. Built-in Rails test framework (default)
    2. RSpec + Capybara
    3. Don't generate tests
    Your choice (1-3): 2
    
    
    9. Your User Interface
    **********************
    You know, I can make your application look nice for you with Bootstrap 3. If
    you prefer, I can also reset every CSS settings and let you unleash your visual
    creativity (or have you call your favorite graphic designer).
    
    - Which UI framework?
    1. Reset CSS
    2. Bootstrap 3 (default)
    Your choice (1-2): 2
    
    
    10. Your Source Code Repository
    *******************************
    I can create a local and a remote Git repository for you. If you choose to do
    so, I will also create a specific .gitignore files to make sure your secrets
    are not distributed with your code.
    
    - Create a local Git repository?
    Your choice (y/n): y
    
    - Set up a remote repository?
    Your choice (y/n): y
    
    - What's your remote repository URL?
    (example: https://github.com/yourname/yourapp.git)
    Enter remote address: https://github.com/k2works/rails_bricks_introduction.git
    
    
    11. SUMMARY
    ***********
    I now have all the information I need to start building your app. This will
    take a little while (between a few seconds and a few minutes, depending on the
    speed of your machine) so go have a coffee. When you are back, everything will
    be configured.
    
    - Create RailsBricksIntroduction now?
    (selecting anything other than 'y' will discard everything and exit the wizard)
    
    Your choice (y/n): y
    
    
    ----> Starting RailsBricksIntroduction generation ...
    
    
    ----> Updating Rake & Bundler ...
    
    Successfully installed rake-10.2.2
    1 gem installed
    Updating installed gems
    Nothing to update
    Successfully installed bundler-1.6.0
    1 gem installed
    Updating installed gems
    Nothing to update
    
    ----> Rake & Bundler updated to the latest version.
    
    
    ----> Installing Rails 4.0.4 ...
    
    Building native extensions.  This could take a while...
    Successfully installed atomic-1.1.16
    Successfully installed thread_safe-0.3.1
    Successfully installed tzinfo-0.3.39
    Successfully installed multi_json-1.9.2
    Successfully installed i18n-0.6.9
    Successfully installed activesupport-4.0.4
    Successfully installed erubis-2.7.0
    Successfully installed rack-1.5.2
    Successfully installed rack-test-0.6.2
    Successfully installed builder-3.1.4
    Successfully installed actionpack-4.0.4
    Successfully installed activerecord-deprecated_finders-1.0.3
    Successfully installed arel-4.0.2
    Successfully installed activemodel-4.0.4
    Successfully installed activerecord-4.0.4
    Successfully installed mime-types-1.25.1
    Successfully installed polyglot-0.3.4
    Successfully installed treetop-1.4.15
    Successfully installed mail-2.5.4
    Successfully installed actionmailer-4.0.4
    Successfully installed thor-0.19.1
    Successfully installed railties-4.0.4
    Successfully installed tilt-1.4.1
    Successfully installed hike-1.2.3
    Successfully installed sprockets-2.12.0
    Successfully installed sprockets-rails-2.0.1
    Successfully installed rails-4.0.4
    27 gems installed
    
    ----> Rails 4.0.4 installed.
    
    
    ----> Creating Gemfile ...
    
    ---> Adding Heroku gems ...
    ---> Heroku gems added.
    
    ---> Adding Bootstrap 3 gems ...
    ---> Bootstrap 3 gems added
    
    ---> Adding RSpec + Capybara gems ...
    ---> RSpec + Capybara gems added.
    
    ----> Gemfile created.
    
    
    ----> Updating RailsBricksIntroduction ...
    
    
    ----> RailsBricksIntroduction updated.
    
    
    ----> Installing gems into 'vendor/bundle/' ...
    * THIS CAN TAKE A FEW MINUTES, PLEASE WAIT ... *
    
    Fetching gem metadata from https://rubygems.org/........
    Fetching additional metadata from https://rubygems.org/..
    Resolving dependencies...
    Installing rake 10.2.2
    Installing i18n 0.6.9
    Using minitest 4.7.5
    Installing multi_json 1.9.2
    Installing atomic 1.1.16
    Installing thread_safe 0.3.1
    Installing tzinfo 0.3.39
    Installing activesupport 4.0.4
    Installing builder 3.1.4
    Installing erubis 2.7.0
    Installing rack 1.5.2
    Installing rack-test 0.6.2
    Installing actionpack 4.0.4
    Installing mime-types 1.25.1
    Installing polyglot 0.3.4
    Installing treetop 1.4.15
    Installing mail 2.5.4
    Installing actionmailer 4.0.4
    Installing activemodel 4.0.4
    Installing activerecord-deprecated_finders 1.0.3
    Installing arel 4.0.2
    Installing activerecord 4.0.4
    Installing bcrypt 3.1.7
    Installing bcrypt-ruby 3.1.5
    Installing sass 3.2.18
    Installing bootstrap-sass 3.0.3.0
    Using bundler 1.6.0
    Installing mini_portile 0.5.3
    Installing nokogiri 1.6.1
    Installing xpath 2.0.0
    Installing capybara 2.2.1
    Installing coffee-script-source 1.7.0
    Installing execjs 2.0.2
    Installing coffee-script 2.2.0
    Installing thor 0.19.1
    Installing railties 4.0.4
    Installing coffee-rails 4.0.1
    Installing diff-lcs 1.2.5
    Installing hike 1.2.3
    Installing tilt 1.4.1
    Installing sprockets 2.11.0
    Installing sprockets-rails 2.0.1
    Installing rails 4.0.4
    Installing figaro 0.7.0
    Installing font-awesome-sass 4.0.3.1
    Installing friendly_id 5.0.3
    Installing jbuilder 1.5.3
    Installing jquery-rails 3.0.4
    Using json 1.8.1
    Installing kaminari 0.15.1
    Installing rails_layout 0.5.11
    Installing rdoc 4.1.1
    Installing rspec-core 2.14.8
    Installing rspec-expectations 2.14.5
    Installing rspec-mocks 2.14.6
    Installing rspec-rails 2.14.2
    Installing sass-rails 4.0.2
    Installing sdoc 0.4.0
    Installing sqlite3 1.3.9
    Installing turbolinks 2.1.0
    Installing uglifier 2.4.0
    Your bundle is complete!
    Gems in the group production were not installed.
    It was installed into ./vendor/bundle
    Post-install message from bcrypt-ruby:
    
    #######################################################
    
    The bcrypt-ruby gem has changed its name to just bcrypt.  Instead of
    installing `bcrypt-ruby`, you should install `bcrypt`.  Please update your
    dependencies accordingly.
    
    #######################################################
    
    Post-install message from rdoc:
    Depending on your version of ruby, you may need to install ruby rdoc/ri data:
    
    <= 1.8.6 : unsupported
     = 1.8.7 : gem install rdoc-data; rdoc-data --install
     = 1.9.1 : gem install rdoc-data; rdoc-data --install
    >= 1.9.2 : nothing to do! Yay!
    
    ----> Gems installed in 'vendor/bundle/'.
    
    
    ----> Setting ENV variables in 'application.yml' ...
    
    ----> ENV variables set in 'application.yml'.
    
    
    ----> Configuring Test framework ...
    
    ---> RSpec ...
          create  .rspec
          create  spec
          create  spec/spec_helper.rb
    ---> RSpec set.
    
    ----> Test framework configured.
    
    
    ----> Generating seed data ...
    
    
    ----> Seed data generated.
    
    
    ----> Creating the database ...
    
    == 20131103142222 CreateFriendlyIdSlugs: migrating ============================
    -- create_table(:friendly_id_slugs)
       -> 0.0015s
    -- add_index(:friendly_id_slugs, :sluggable_id)
       -> 0.0004s
    -- add_index(:friendly_id_slugs, [:slug, :sluggable_type])
       -> 0.0004s
    -- add_index(:friendly_id_slugs, [:slug, :sluggable_type, :scope], {:unique=>true})
       -> 0.0013s
    -- add_index(:friendly_id_slugs, :sluggable_type)
       -> 0.0006s
    == 20131103142222 CreateFriendlyIdSlugs: migrated (0.0044s) ===================
    
    == 20131103142223 CreateUsers: migrating ======================================
    -- create_table(:users)
       -> 0.0037s
    -- add_index(:users, :slug, {:unique=>true})
       -> 0.0006s
    == 20131103142223 CreateUsers: migrated (0.0044s) =============================
    
    
    ---> Seeding the database. It can take a few minutes if you have many test
    users ...
    
    
    ---> Database seeded.
    
    ----> Database created.
    
    
    ----> Setting your local Git repository ...
    
    Initialized empty Git repository in /Users/k2works/projects/github/rails_bricks_introduction/.git/
    
    [master (root-commit) ce2d53d] initial commit (generated with RailsBricks v2.0.5)
     70 files changed, 1871 insertions(+)
     create mode 100644 .bundle/config
     create mode 100644 .gitignore
     create mode 100644 .rbricks/config
     create mode 100644 .rspec
     create mode 100644 Gemfile
     create mode 100644 Gemfile.lock
     create mode 100644 README.rdoc
     create mode 100644 Rakefile
     create mode 100644 app/assets/images/.keep
     create mode 100644 app/assets/images/favicon.ico
     create mode 100644 app/assets/javascripts/application.js
     create mode 100644 app/assets/stylesheets/application.css.scss
     create mode 100644 app/assets/stylesheets/framework_and_overrides.css.scss
     create mode 100644 app/controllers/admin/base_controller.rb
     create mode 100644 app/controllers/admin/users_controller.rb
     create mode 100644 app/controllers/application_controller.rb
     create mode 100644 app/controllers/concerns/.keep
     create mode 100644 app/controllers/pages_controller.rb
     create mode 100644 app/controllers/sessions_controller.rb
     create mode 100644 app/helpers/application_helper.rb
     create mode 100644 app/mailers/.keep
     create mode 100644 app/models/.keep
     create mode 100644 app/models/concerns/.keep
     create mode 100644 app/models/user.rb
     create mode 100644 app/views/admin/base/index.html.erb
     create mode 100644 app/views/admin/users/edit.html.erb
     create mode 100644 app/views/layouts/_footer.html.erb
     create mode 100644 app/views/layouts/_messages.html.erb
     create mode 100644 app/views/layouts/_navigation.html.erb
     create mode 100644 app/views/layouts/_navigation_links.html.erb
     create mode 100644 app/views/layouts/application.html.erb
     create mode 100644 app/views/pages/home.html.erb
     create mode 100644 app/views/sessions/new.html.erb
     create mode 100755 bin/bundle
     create mode 100755 bin/rails
     create mode 100755 bin/rake
     create mode 100644 config.ru
     create mode 100644 config/application.rb
     create mode 100644 config/boot.rb
     create mode 100644 config/database.yml
     create mode 100644 config/environment.rb
     create mode 100644 config/environments/development.rb
     create mode 100644 config/environments/production.rb
     create mode 100644 config/environments/test.rb
     create mode 100644 config/initializers/backtrace_silencers.rb
     create mode 100644 config/initializers/date_format.rb
     create mode 100644 config/initializers/filter_parameter_logging.rb
     create mode 100644 config/initializers/friendly_id.rb
     create mode 100644 config/initializers/inflections.rb
     create mode 100644 config/initializers/kaminari_config.rb
     create mode 100644 config/initializers/mime_types.rb
     create mode 100644 config/initializers/secret_token.rb
     create mode 100644 config/initializers/session_store.rb
     create mode 100644 config/initializers/wrap_parameters.rb
     create mode 100644 config/locales/en.yml
     create mode 100644 config/routes.rb
     create mode 100644 db/migrate/20131103142222_create_friendly_id_slugs.rb
     create mode 100644 db/migrate/20131103142223_create_users.rb
     create mode 100644 db/schema.rb
     create mode 100644 db/seeds.rb
     create mode 100644 lib/assets/.keep
     create mode 100644 lib/tasks/.keep
     create mode 100644 public/404.html
     create mode 100644 public/422.html
     create mode 100644 public/500.html
     create mode 100644 public/favicon.ico
     create mode 100644 public/robots.txt
     create mode 100644 spec/spec_helper.rb
     create mode 100644 vendor/assets/javascripts/.keep
     create mode 100644 vendor/assets/stylesheets/.keep
    
    ----> Local Git repository set.
    
    
    ----> Setting your remote Git repository ...
    
    
    To https://github.com/k2works/rails_bricks_introduction.git
     ! [rejected]        master -> master (fetch first)
    error: failed to push some refs to 'https://github.com/k2works/rails_bricks_introduction.git'
    hint: Updates were rejected because the remote contains work that you do
    hint: not have locally. This is usually caused by another repository pushing
    hint: to the same ref. You may want to first integrate the remote changes
    hint: (e.g., 'git pull ...') before pushing again.
    hint: See the 'Note about fast-forwards' in 'git push --help' for details.
    
    
    ----> Remote Git repository set.
    
    
    ----> RailsBricksIntroduction generated in 5 minutes and 37 seconds.

    ***************************
    Your default admin account:

    Username: admin
    Password: 1234
    ***************************

    RailsBricks v2.0.5
    Happy coding! - http://www.railsbricks.net
    
    $cd rails_bricks_introduction
    $rails server


## <a name="3">アプリケーションのデプロイ</a> ##

### ログイン ###

    $ heroku login

### デプロイ ###

    $ heroku create --addons heroku-postgresql
    Creating gentle-coast-3866... done, stack is cedar
    Adding heroku-postgresql to gentle-coast-3866... done
    http://gentle-coast-3866.herokuapp.com/ | git@heroku.com:gentle-coast-3866.git
    Git remote heroku added

    $ git push heroku master
    Initializing repository, done.
    Counting objects: 101, done.
    Compressing objects: 100% (87/87), done.
    Writing objects: 100% (101/101), 35.34 KiB | 0 bytes/s, done.
    Total 101 (delta 5), reused 0 (delta 0)
    
    -----> Ruby app detected
    -----> Compiling Ruby/Rails
    -----> Using Ruby version: ruby-2.1.1
    -----> Installing dependencies using 1.5.2
           Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4 --deployment
           Fetching gem metadata from https://rubygems.org/........
           Fetching additional metadata from https://rubygems.org/..
           Using minitest (4.7.5)
           Installing multi_json (1.9.2)
           Installing i18n (0.6.9)
           Installing rake (10.2.2)
           Installing tzinfo (0.3.39)
           Installing builder (3.1.4)
           Installing atomic (1.1.16)
           Installing erubis (2.7.0)
           Installing polyglot (0.3.4)
           Installing activerecord-deprecated_finders (1.0.3)
           Installing mime-types (1.25.1)
           Installing rack (1.5.2)
           Installing arel (4.0.2)
           Installing coffee-script-source (1.7.0)
           Installing execjs (2.0.2)
           Installing sass (3.2.18)
           Using json (1.8.1)
           Installing hike (1.2.3)
           Using bundler (1.5.2)
           Installing thor (0.19.1)
           Installing bcrypt (3.1.7)
           Installing rails_serve_static_assets (0.0.2)
           Installing tilt (1.4.1)
           Installing rails_stdout_logging (0.0.3)
           Installing rack-test (0.6.2)
           Installing thread_safe (0.3.1)
           Installing treetop (1.4.15)
           Installing coffee-script (2.2.0)
           Installing bootstrap-sass (3.0.3.0)
           Installing font-awesome-sass (4.0.3.1)
           Installing bcrypt-ruby (3.1.5)
           Installing sprockets (2.11.0)
           Installing rdoc (4.1.1)
           Installing uglifier (2.4.0)
           Installing rails_12factor (0.0.2)
           Installing mail (2.5.4)
           Installing activesupport (4.0.4)
           Installing sdoc (0.4.0)
           Installing activemodel (4.0.4)
           Installing jbuilder (1.5.3)
           Installing actionpack (4.0.4)
           Installing activerecord (4.0.4)
           Installing actionmailer (4.0.4)
           Installing railties (4.0.4)
           Installing sprockets-rails (2.0.1)
           Installing friendly_id (5.0.3)
           Installing kaminari (0.15.1)
           Installing jquery-rails (3.0.4)
           Installing coffee-rails (4.0.1)
           Installing turbolinks (2.1.0)
           Installing sass-rails (4.0.2)
           Installing rails (4.0.4)
           Installing pg (0.17.1)
           Your bundle is complete!
           Gems in the groups development and test were not installed.
           It was installed into ./vendor/bundle
           Post-install message from bcrypt-ruby:
           #######################################################
           The bcrypt-ruby gem has changed its name to just bcrypt.  Instead of
           installing `bcrypt-ruby`, you should install `bcrypt`.  Please update your
           dependencies accordingly.
           #######################################################
           Post-install message from rdoc:
           Depending on your version of ruby, you may need to install ruby rdoc/ri data:
           <= 1.8.6 : unsupported
           = 1.8.7 : gem install rdoc-data; rdoc-data --install
           = 1.9.1 : gem install rdoc-data; rdoc-data --install
           >= 1.9.2 : nothing to do! Yay!
           Bundle completed (21.75s)
           Cleaning up the bundler cache.
    -----> Writing config/database.yml to read from DATABASE_URL
    -----> Preparing app for Rails asset pipeline
           Running: rake assets:precompile
           I, [2014-03-29T06:00:17.341135 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/favicon-3d3d7b2a2753789066cf419df98298a4.ico
           I, [2014-03-29T06:00:22.752465 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/application-edbedaf0842d9ae52f882636e697f4e8.js
           I, [2014-03-29T06:00:27.728818 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/application-a4675fb93558e61f870265bfd3cb6383.css
           I, [2014-03-29T06:00:27.734783 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/bootstrap/glyphicons-halflings-regular-fb71914b40d1e1c20cc23982e6bce1c8.eot
           I, [2014-03-29T06:00:27.735324 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/bootstrap/glyphicons-halflings-regular-db16ef179f96cbd0198908c13e47d5e1.svg
           I, [2014-03-29T06:00:27.735744 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/bootstrap/glyphicons-halflings-regular-1837a54d175259b84d7e0a0481535bb5.ttf
           I, [2014-03-29T06:00:27.736236 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/bootstrap/glyphicons-halflings-regular-1b3690c46cea789082015677ba9e5db2.woff
           I, [2014-03-29T06:00:27.736652 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/fontawesome-webfont-3b53a5ecdb9473016ee097f74f4f16c0.eot
           I, [2014-03-29T06:00:27.737069 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/fontawesome-webfont-51b69bdec08f19b3142dcd085ba6238a.svg
           I, [2014-03-29T06:00:27.737729 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/fontawesome-webfont-69b0f4550dbb8738458172d11513538d.ttf
           I, [2014-03-29T06:00:27.738215 #1108]  INFO -- : Writing /tmp/build_28370750-0ed7-4572-8411-136aa653c2e0/public/assets/fontawesome-webfont-9a3b8f90662fe9149f07a059f1a4c782.woff
           Asset precompilation completed (12.15s)
           Cleaning assets
           Running: rake assets:clean
    -----> Discovering process types
           Procfile declares types -> (none)
           Default types for Ruby  -> console, rake, web, worker
    
    -----> Compressing... done, 23.3MB
    -----> Launching... done, v6
           http://gentle-coast-3866.herokuapp.com/ deployed to Heroku
    
    To git@heroku.com:gentle-coast-3866.git
     * [new branch]      master -> master
 
### データベースマイグレーション ###

    $ heroku run rake db:migrate
    Running `rake db:migrate` attached to terminal... up, run.3304
    Migrating to CreateFriendlyIdSlugs (20131103142222)
    == 20131103142222 CreateFriendlyIdSlugs: migrating ============================
    -- create_table(:friendly_id_slugs)
    -> 0.0559s
    -- add_index(:friendly_id_slugs, :sluggable_id)
    -> 0.0099s
    -- add_index(:friendly_id_slugs, [:slug, :sluggable_type])
    -> 0.0287s
    -- add_index(:friendly_id_slugs, [:slug, :sluggable_type, :scope], {:unique=>true})
    -> 0.0289s
    -- add_index(:friendly_id_slugs, :sluggable_type)
    -> 0.0149s
    == 20131103142222 CreateFriendlyIdSlugs: migrated (0.1392s) ===================
    
    Migrating to CreateUsers (20131103142223)
    == 20131103142223 CreateUsers: migrating ======================================
    -- create_table(:users)
    -> 0.0287s
    -- add_index(:users, :slug, {:unique=>true})
    -> 0.0112s
    == 20131103142223 CreateUsers: migrated (0.0402s) =============================

    $ heroku run rake db:seed
    Running `rake db:seed` attached to terminal... up, run.1246
    
### アプリケーションの確認 ###

    $ heroku ps:scale web=1
    heroku ps:scale web=1
    Scaling dynos... done, now running web at 1:1X.

    $ heroku ps
    heroku ps
    === web (1X): `bin/rails server -p $PORT -e $RAILS_ENV`
    web.1: up 2014/03/29 15:00:41 (~ 8m ago)

    $ heroku open

### ログを確認する ###

    $ heroku logs
    heroku logs
    2014-03-29T02:41:42.706980+00:00 app[web.1]: Completed 302 Found in 137ms (ActiveRecord: 4.5ms)
    2014-03-29T02:41:42.989055+00:00 app[web.1]: Started GET "/admin" for 114.161.128.59 at 2014-03-29 02:41:42 +0000
    2014-03-29T02:41:42.989055+00:00 app[web.1]: Started GET "/admin" for 114.161.128.59 at 2014-03-29 02:41:42 +0000

    $ heroku logs --tail

### コンソール ###

    $ heroku run rails console
    heroku run rails console
    Running `rails console` attached to terminal... up, run.9681
    Loading production environment (Rails 4.0.4)
    irb(main):001:0> 

### Rake ###

    $ heroku run rake db:migrate

### データベースに接続する ###

    $ heroku pg:psql

### Webサーバー ###

    gem 'unicorn'

    $ bundle install

    $ touch config/unicorn.rb

### Procfileの作成 ###

    $ touch Procfile

    web: bundle exec unicorn -p $PORT -c ./config/unicorn.rb
   
    $ echo "RACK_ENV=development" >>.env 
    $ echo "PORT=3000" >> .env
    $ echo ".env" >> .gitignore 
    $ git commit -m "add .env to .gitignore"
    $ gem install foreman
    $ foreman start

### アプリケーションの名前変更 ###

    $ heroku apps:rename rails-bricks-introduction
    Renaming gentle-coast-3866 to rails-bricks-introduction... done
    http://rails-bricks-introduction.herokuapp.com/ | git@heroku.com:rails-bricks-introduction.git
    Git remote heroku updated

# 参照 #

[RailsBricks](http://www.railsbricks.net/)

[Heroku](https://www.heroku.com/)

[Getting Started with Rails 4.x on Heroku](https://devcenter.heroku.com/articles/getting-started-with-rails4)

