#!/bin/bash
bundle exec rails db:migrate
bundle exec rails db:seed
bundle lock --add-platform aarch64-linux
bundle install
bundle exec rake assets:precompile