# Open Democracy Builder
## 🇫🇷
Open Democracy Builder est une plateforme open-source de gestion de campagne électorale. Elle permet notamment:

- 💡 aux adhérents de s'inscrire
- 💡 de créer ou trouver des comités locaux
- 💡 de partager de l'information au sein de la communauté
- 💡 d'avoir un espace de réflexion pour l'élaboration des thématiques du programme
- 💡 de questionner les comités locaux via la plateforme afin de construire un programme commun
- 💡 de fournir une cartographie des résultats électoraux précédents pour programmer et suivre les actions de campagne
- 💡 de mettre à disposition et gérer les sites des candidats aux législatives et sénatoriales après une présidentielle
- 💡 de partager des ressources (articles de fond, supports de communication prêts à imprimer)
## 🇬🇧
TODO: translate

# Légende
- 💡 idea (spec needed)
- 🚧 work in progress
- ✅ done
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
