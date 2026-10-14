set dotenv-load


NOM := env_var_or_default("NOM", "yapa")
PRENOM := env_var_or_default("PRENOM", "yapa")
EMAIL := env_var_or_default("EMAIL", "yapa")


nom:
    echo {{NOM}}

prenom:
    echo {{PRENOM}}

email:
    echo {{EMAIL}}


commit-succes: 
    echo "Commit Success!"

helloworld:
    #!/bin/bash -x
    # JUST curly vars work even when we've called bash
    echo "Hello World"

init REPO:
    grit clone {{REPO}}

devops1:
    cd ~/Document/devops/devops
    git checkout main


status:
    git status

add:
    git add *


commit MESSAGE="commit": commit-succes
    git commit -m "{{MESSAGE}}"

gitupdate: 
    git status
    git add *
    git commit -m "commit auto"
    git push


log:
    #!/bin/bash -x
    echo "jsp"

clean: 
    #!/bin/bash -x
    if [ -f ./tmp.txt ] ; then
        rm tmp.txt
    fi
