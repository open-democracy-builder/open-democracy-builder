# README
# Configuration for development and test environments

```bash
git clone https://github.com/open-democracy-builder/open-democracy-builder.git
cd open-democracy-builder
bundle install
cp config/environments/variables/default_config.yml.example config/environments/variables/default_config.yml
cp config/environments/variables/development_config.yml.example config/environments/variables/development_config.yml
cp config/environments/variables/test_config.yml.example config/environments/variables/test_config.yml
cp config/environments/variables/staging_config.yml.example config/environments/variables/staging_config.yml
cp config/environments/variables/production_config.yml.example config/environments/variables/production_config.yml
rails db:create
rails db:migrate
rails db:dev_seed
RAILS_ENV=test rake db:setup
```

Run the app locally:

```bash
rails s
```
Run the tests with:

```bash
rspec
```
