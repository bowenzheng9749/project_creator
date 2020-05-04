import sys
from access_token import token
from github import Github


repo_name = sys.argv[1]
g = Github(token['username'], token['password'])
user = g.get_user()
try:
    repo = user.create_repo(repo_name)
except Exception as error:
    repo = g.get_repo('bowenzheng9749/'+repo_name)

url = repo.clone_url
exit(url)





