# Schema Information

## users
column name   | data type | details
--------------|-----------|-----------
id            |integer    | not null, primary key
username      |string     | not null, indexed, unique
password_digest| string   | not null
session_token | string    | not null, indexed, unique
title         | string    |
image_url     |string     |

## products
column name   | data type   | details
--------------|-------------|----------
id            |integer      |not null, primary key
name          |string       |not null, unique, indexed
description   |string       |not null
hunter_id     |integer      |not null, foreign key, indexed
image_url     |string       |
product_url   |string       |not null

## discussion
column name   | data type   | details
--------------|-------------|------------
id            |integer      |not null, primary key
author_id     |integer      |not null, indexed, foreign key
product_id    |integer      |not null, indexed, foreign key
body          |string       |not null
