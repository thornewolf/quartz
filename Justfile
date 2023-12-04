_:
    just --list

# commit to github
commit m:
    git add -A
    git commit -m "{{m}}"
    git push origin HEAD

run:
    npx quartz build --serve