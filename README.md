# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Run the Rails app
```
rails s
```

* Restart PostgreSQL in Ubuntu
```
sudo service postgresql restart
```

* [Table Schema](https://dbdiagram.io/d/60863e4db29a09603d1215da)

Users
| 欄位名稱   | 資料型態 |
| -------- | -------- |
| id |  Integer [pk, increment] |
| username | String |
| email | String |
| password | String |
| created_at | Timestamp |

Tasks
| 欄位名稱   | 資料型態 |
| -------- | -------- |
| id | Integer [pk, increment] |
|  user_id | Integer |
|  title | String |
|  content| String |
|  priority | String |
|  state | String |
|  tags_id | Array |
|  starttime | Timestamp |
|  endtime | Timestamp |
|  created_at | Timestamp |

Tags
| 欄位名稱   | 資料型態 |
| -------- | -------- |
| id | Integer [pk, increment] |
|  name | String |
| created_at | Timestamp |

Relationships

// > many-to-one; < one-to-many; - one-to-one

Tasks.user_id > Users.id

Tasks.tags_id < Tags.id
