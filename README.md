# README
### Installation

You'll need Ruby 3.4.2 and PostgreSQL to be installed.

```
git clone https://github.com/sdogruyol/gencleredestek.com
cd gencleredestek.com
bundle install
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rake assets:precompile
```

### Running the project

Once all the dependencies are installed run the server with

```
bundle exec rails s
```

