# README
### Installation

You'll need Ruby 3.1.1 and PostgreSQL to be installed.

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

#### Docker

You can also run the project with Docker. Make sure you have Docker installed and running.

```
chmod +x ./setup.sh
./setup.sh
docker-compose up
```

