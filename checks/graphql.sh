#!/bin/sh
# /graphql answers a query for the blog posts.
set -e
H=http://web:5000
curl -fsS -H "Content-Type: application/json" -d '{"query":"{ allPosts { edges { node { title } } } }"}' "$H/graphql" | grep -q '"allPosts"'
