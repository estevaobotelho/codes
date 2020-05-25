from __future__ import division
import math, random, re
from collections import defaultdict, Counter, deque
from linear_algebra import dot, get_row, get_column, make_matrix, magnitude, scalar_multiply, shape, distance
from functools import partial


users = [
  { "id": 0, "name": "Hero" },
  { "id": 1, "name": "Dunn" },
  { "id": 2, "name": "Sue" },
  { "id": 3, "name": "Chi" },
  { "id": 4, "name": "Thor" },
  { "id": 5, "name": "Clive" },
  { "id": 6, "name": "Hicks" },
  { "id": 7, "name": "Devin" },
  { "id": 8, "name": "Kate" },
  { "id": 9, "name": "Klein" }
]

friendships = [
  (0, 1), (0, 2), (1, 2), (1, 3), (2, 3), (3, 4),
  (4, 5), (5, 6), (5, 7), (6, 8), (7, 8), (8, 9)
]


for user in users:
  user["friends"] = []

for i, j in friendships:
  users[i]["friends"].append(users[j]) #add j as a friend of i
  users[j]["friends"].append(users[i]) #add i as a friend of j

def number_of_friends(user): return len(user["friends"])
#print (number_of_friends(users[1])) -- With this we can see the number of friends of a given index from users

total_connections = sum(number_of_friends(user) for user in users)
#print (total_connections) -- This returns 24: 12 connections * 2 - (j friend of i and i friend of j)

num_users = len(users)

num_users = len(users)
avg_connections = total_connections/num_users

print(total_connections)
print(avg_connections)
print(num_users)

num_friends_by_id = [(user["id"], number_of_friends(user))
                    for user in users]

#sorted(num_fiends_by_id, key=lambda (user_id, num_friends): num_friends, reverse=True)

def friends_of_friend_ids_bad(user):
  return [foaf["id"]
  for friend in user["friends"]
  for foaf in friend["friends"]]
