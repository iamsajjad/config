
# .git.sh

# Path To .git.sh
RUNNERDIR="$(pwd)"

# Git File To Run
GITUPDATE=".gitupdate"

# Text And Colors
BLINKDOT="\e[1m\e[5m.\e[25m\e[22m"

# Fetch, Pull Function
UPDATE () {

    # Get Changes For Repositories in ./ Directory

    for Repository in */ ; do

        cd $Repository

        if [ -d .git ]; then

            echo -e "\e[32mStart fetch, pull changes and tags for \e[39m\e[43m${Repository:: -1 }.git\e[49m ..."

            echo -e "\e[43m${Repository:: -1 }.git\e[49m \e[32mRun 'git fetch origin'\e[39m"
            git fetch origin
            echo -e "\e[32m... Finish Fetch ...\e[39m"

            echo -e "\e[43m${Repository:: -1 }.git\e[49m \e[32mRun 'git pull origin master'\e[39m"
            git pull origin master
            echo -e "\e[32m... Finish Pull ...\e[39m"

            echo -e "\e[43m${Repository:: -1 }.git\e[49m \e[32mRun 'git pull origin --tags'\e[39m"
            git pull origin --tags
            echo -e "\e[32m... Finish Tags ...\e[39m"

        echo -e "\e[43m${Repository:: -1 }.git\e[49m is Up-To-Date."

        else

            echo -e "\e[43m${Repository:: -1 }\e[49m Not Git Repository"

        fi;

        cd "../"

    done

}

# Main Function
RUNNER() {

    for GitPath in $(find -name "$GITUPDATE"); do

        CLUSTER="\e[36m\e[1m@$(basename "$(dirname $GitPath)")\e[22m\e[39m"

        # Change Directory To Git File Directory
        cd $(dirname "$(realpath $GitPath)")

        # Update And Changes On Directory
        echo -e "\nUpdate Repositories In $CLUSTER Cluster $BLINKDOT"

        UPDATE

        echo -e "$CLUSTER Repositories Done $BLINKDOT"
        #Done

        # Change Directory to .git.sh Directory
        cd $RUNNERDIR

    done
}

# Run
RUNNER $GITUPDATE

