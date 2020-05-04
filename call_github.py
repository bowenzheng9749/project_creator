import sys
from access_token import token
from github import Github

repo_name = sys.argv[1]
g = Github(token['username'], token['password'])
user = g.get_user()
repo = user.create_repo(repo_name)



