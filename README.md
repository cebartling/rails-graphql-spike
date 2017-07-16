# Rails 5 GraphQL spike solution


## Introduction

This spike solution consists of a Rails 5.1 system that responds to GraphQL HTTP GET requests. The Rails system has a few entities: **movies** and **actors** and the association between the two entities (a *many-to-many relationship*). The entire spike solution is self-contained and can be run easily without much effort (SQLite is used for a persistence store).


## Project versions

* Rails version: 5.1.2
* Ruby version: 2.4.1
* Database: SQLite


## GraphQL 
 
This spike solution uses the [`graphql` gem](http://graphql-ruby.org/). 
The official GraphQL site is at [graphql.org](http://graphql.org).



## Running the spike solution

The spike solution is entirely self-contained. All dependencies are installed via Bundler.

1. Clone the repository to your local system. 
1. Install Ruby 2.4.1 via `rvm` or `rbenv`.
1. Install the **bundler** gem: `gem install bundler` 
1. Install the project dependencies via bundler: `bundle install` 
1. Build the SQLite database and seed it with data: `bundle exec rake db:drop db:setup db:seed`
1. Start up the Rails web server: `rails s`
1. Execute GraphQL queries using your favorite HTTP tool. See below for a few examples using the cURL.



## GraphQL queries
 
### Get a movie by ID

##### cURL request

```bash
curl -XGET http://localhost:3000/movies -d "query={movie(id: 1) {title, year, actors {name, birth_date}}}"
```

##### JSON response

```json
{
  "data": {
    "movie": {
      "title": "Indiana Jones and the Raiders of the Lost Ark",
      "year": 1981,
      "actors": [
        {
          "name": "Harrison Ford",
          "birth_date": "1942-07-13"
        },
        {
          "name": "Karen Jane Allen",
          "birth_date": "1951-10-05"
        }
      ]
    }
  }
}
```


### Get all movies filtered by year of release

##### cURL request

```bash
curl -XGET http://localhost:3000/movies -d "query={movies(year: 1977) {title, year, actors {name, birth_date}}}"
```

##### JSON response

```json
{
  "data": {
    "movies": [
      {
        "title": "Star Wars: Episode IV – A New Hope",
        "year": 1977,
        "actors": [
          {
            "name": "Mark Richard Hamill",
            "birth_date": "1951-09-25"
          },
          {
            "name": "Harrison Ford",
            "birth_date": "1942-07-13"
          },
          {
            "name": "Carrie Frances Fisher",
            "birth_date": "1956-10-21"
          }
        ]
      }
    ]
  }
}
```



### Get actor by ID

##### cURL request

```bash
curl -XGET http://localhost:3000/actors -d "query={actor(id: 1) {name, birth_date, movies {title, year, budget_in_millions, box_office_in_millions}}}"
```

##### JSON response

```json
{
  "data": {
    "actor": {
      "name": "Harrison Ford",
      "birth_date": "1942-07-13",
      "movies": [
        {
          "title": "Indiana Jones and the Raiders of the Lost Ark",
          "year": 1981,
          "budget_in_millions": 18.0,
          "box_office_in_millions": 389.9
        },
        {
          "title": "Indiana Jones and the Temple of Doom",
          "year": 1984,
          "budget_in_millions": 28.2,
          "box_office_in_millions": 333.1
        },
        {
          "title": "Indiana Jones and the Last Crusade",
          "year": 1989,
          "budget_in_millions": 55.4,
          "box_office_in_millions": 474.2
        },
        {
          "title": "Indiana Jones and the Kingdom of the Crystal Skull",
          "year": 2008,
          "budget_in_millions": 185.0,
          "box_office_in_millions": 786.6
        },
        {
          "title": "Star Wars: Episode IV – A New Hope",
          "year": 1977,
          "budget_in_millions": 11.0,
          "box_office_in_millions": 775.4
        },
        {
          "title": "Star Wars: Episode V – The Empire Strikes Back",
          "year": 1980,
          "budget_in_millions": 33.0,
          "box_office_in_millions": 538.4
        },
        {
          "title": "Star Wars: Episode VI – Return of the Jedi",
          "year": 1983,
          "budget_in_millions": 42.7,
          "box_office_in_millions": 572.7
        },
        {
          "title": "Star Wars: Episode VII – The Force Awakens",
          "year": 2015,
          "budget_in_millions": 306.0,
          "box_office_in_millions": 2068.0
        }
      ]
    }
  }
}
```



### Get all actors filtered by gender

##### cURL request

```bash
curl -XGET http://localhost:3000/actors -d "query={actors(gender: "female") {name, birth_date, movies {title, year, budget_in_millions, box_office_in_millions}}}"
```

##### JSON response

```json
{
  "data": {
    "actors": [
      {
        "name": "Karen Jane Allen",
        "birth_date": "1951-10-05",
        "movies": [
          {
            "title": "Indiana Jones and the Raiders of the Lost Ark",
            "year": 1981,
            "budget_in_millions": 18.0,
            "box_office_in_millions": 389.9
          },
          {
            "title": "Indiana Jones and the Kingdom of the Crystal Skull",
            "year": 2008,
            "budget_in_millions": 185.0,
            "box_office_in_millions": 786.6
          }
        ]
      },
      {
        "name": "Kathleen \"Kate\" Capshaw Spielberg",
        "birth_date": "1953-11-03",
        "movies": [
          {
            "title": "Indiana Jones and the Temple of Doom",
            "year": 1984,
            "budget_in_millions": 28.2,
            "box_office_in_millions": 333.1
          }
        ]
      },
      {
        "name": "Catherine Elise Blanchett",
        "birth_date": "1969-05-14",
        "movies": [
          {
            "title": "Indiana Jones and the Kingdom of the Crystal Skull",
            "year": 2008,
            "budget_in_millions": 185.0,
            "box_office_in_millions": 786.6
          }
        ]
      },
      {
        "name": "Carrie Frances Fisher",
        "birth_date": "1956-10-21",
        "movies": [
          {
            "title": "Star Wars: Episode IV – A New Hope",
            "year": 1977,
            "budget_in_millions": 11.0,
            "box_office_in_millions": 775.4
          },
          {
            "title": "Star Wars: Episode V – The Empire Strikes Back",
            "year": 1980,
            "budget_in_millions": 33.0,
            "box_office_in_millions": 538.4
          },
          {
            "title": "Star Wars: Episode VI – Return of the Jedi",
            "year": 1983,
            "budget_in_millions": 42.7,
            "box_office_in_millions": 572.7
          },
          {
            "title": "Star Wars: Episode VII – The Force Awakens",
            "year": 2015,
            "budget_in_millions": 306.0,
            "box_office_in_millions": 2068.0
          }
        ]
      }
    ]
  }
}
```

