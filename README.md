# Card Game

#### clone project
```sh
git clone git@github.com:dmytrokomisaryk/card_game.git
```

#### gemset
```sh
rvm use 2.3.1@card_game --create
bundle install
```

#### prepare DB
install PostgreSQL

```sh
rake db:create
rake db:migrate
rake db:seed
```

