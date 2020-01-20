
# Path To .gitrunner.sh
RUNNERDIR="$(pwd)"

# Git File To Run
GITUPDATE=".gitupdate"

# Text And Colors
BLINKDOT="\e[1m\e[5m.\e[25m\e[22m"

# Fetch Pull Function
UPDATE () {
    echo Update
}

# Main Function
RUNNER() {

    for GitPath in $(find -name "$GITUPDATE"); do

        # Change Directory To Git File Directory
        cd $(dirname "$(realpath $GitPath)")

        # Update And Changes On Directory
        DIRECTORY="\e[39\e[35m\e[1m@$(basename "$(pwd)")\e[22m\e[39\e[90m"
        echo -e "\e[90m\e[40mUpdate Repositories In $DIRECTORY Directory $BLINKDOT \e[49m\e[39m"

        UPDATE

        echo -e "\e[90m\e[40m$DIRECTORY Repositories Done $BLINKDOT \e[49m\e[39m"
        #Done

        # Change Directory to .gitrunner.sh Directory
        cd $RUNNERDIR

    done
}

# Run
RUNNER $GITUPDATE
