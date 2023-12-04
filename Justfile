_:
    just --list

alias c := commit
# commit to github
commit m="update":
    git add -A
    git commit -m "{{m}}"
    git push origin HEAD

run:
    npx quartz build --serve