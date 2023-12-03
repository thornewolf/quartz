_:
    just --list

# commit to github
commit m:
    git add -A
    git commit -m "{{m}}"
    git push origin HEAD

# upload to railway
up:
    just commit "auto-commit when pushing to railway"
    railway up