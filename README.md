<h1 align="center">
  AARCA BACKEND - API REST
</h1>

<div align="center">
![](https://img.shields.io/badge/Ruby%20on%20Rails-API-red)
</div>


API Rest desenvolvida [Ruby on Rails](https://guides.rubyonrails.org/index.html), utilizando as seguintes Gem's:

* [Knock](https://github.com/nsarno/knock)

* [bcrypt](https://github.com/codahale/bcrypt-ruby)

* [active_model_serializers](https://github.com/rails-api/active_model_serializers)

* [rack-cors](https://github.com/cyu/rack-cors)

* [pg](https://github.com/ged/ruby-pg)

### Features

* Autenticação(JWT)
* CRUD - Usuários
* CRUD - Modalidades
* CRUD - Patrocinadores
* CRUD - Corridas
* CRUD - Participantes
* CRUD - Inscrições

### Autenticação

```json
{
  "auth":
   {
    "email": "admin@admin.com",
    "password": "123456789"
   }
}
```

### CRUD - Usuários

```json
{
  "users":
   {
    "email": "admin@admin.com",
    "password": "**********",
    "password_confirmation": "*********",
   }
}
```

### CRUD - Modalidades

```json
{
  "modalities":
   {
    "genre": "masculino",
    "oar": "1" 
   }
}
```
### CRUD - Patrocinadores

```json
{
  "sponsors":
   {
    "name": "João da Silva",
    "telephone": "+55 12 99724-5805"
   }
}
```

### CRUD - Corridas

```json
{
  "races":
   {
    "local": "Praia do Centro",
    "date_race": "2020-05-06",
    "status": "aberta" ou "finalizada",
    "modality_ids": [1,2],
    "sponsor_ids": [1,2]
   }
}
```

### CRUD - Participantes

```json
{
  "players":
   {
    "name": "Pedro da Silva",
    "genre": "masculino",
    "age": "25",
   }
}
```

### CRUD - Inscrições

```json
{
  "registrations":
   {
    "race_id": "1",
    "modality_id": "12",
    "player_id": "3",
   }
}
```

**Autor:** Alef Ojeda de Oliveira

**Linkedin:** https://www.linkedin.com/in/alef-ojeda/

**Facebook:** https://www.facebook.com/AlefOjedaOliveira/
