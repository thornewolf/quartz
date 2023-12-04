_:
    just --list

# commit to github
commit m="update":
    git add -A
    git commit -m "{{m}}"
    git push origin HEAD

run:
    npx quartz build --serve