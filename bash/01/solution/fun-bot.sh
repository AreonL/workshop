

PATH_TO_01="$HOME/git/workshop/bash/01"

source "$PATH_TO_01/utils/colors"


function greeting {
    echo "${green}Hello ${cyan}$USER${clear}"
}

function show_hedgehog_text {
    HEDGEHOG_TEXT_PATH="$PATH_TO_01/utils/hedgehog-text.txt"
    echo
    echo
    echo "The file ${yellow}$HEDGEHOG_TEXT_PATH${clear} has the following text:"
    echo -n "${cyan}" && cat "$HEDGEHOG_TEXT_PATH" && echo "${clear}"
    echo -n "${yellow}There are ${green}" && cat "$HEDGEHOG_TEXT_PATH" | wc -l | tr '\n' ' ' && echo "${yellow}lines in the text."
    echo -n "${yellow}There are ${green}" && cat "$HEDGEHOG_TEXT_PATH" | wc -w | tr '\n' ' ' && echo "${yellow}words in the text."
    echo -n "${yellow}There are ${green}" && cat "$HEDGEHOG_TEXT_PATH" | wc -m | tr '\n' ' ' && echo "${yellow}characters in the text."
}

function tmp_file {
    mkdir -p "$PATH_TO_01/garbage_system"
    echo "This is what's in the garbage system right now:"
    ls "$PATH_TO_01/garbage_system"
    echo "Creating file .."
    touch garbage_file
    echo "Check the garbage file exists:${red}"
    ls | grep "garbage_file"
    echo "${clear}Move the garbage file to garbage system"
    mv garbage_file garbage_system/
    echo "Check garbage system:${red}"
    ls "$PATH_TO_01/garbage_system"
    echo "${clear}Run the garbage system cleaning service"
    mv garbage_system/garbage_file /tmp
    echo "Check garbage system:"
    ls "$PATH_TO_01/garbage_system"
}


function selector {
    echo -e "\n${green}1) Greeting\n2) Show text of hedgehog\n3) Tmp file\n\n${clear}"
    read -p "Select an option: " choice

    if [ "$choice" == "1" ]; then
        greeting
    elif [ "$choice" == "2" ]; then
        show_hedgehog_text
    elif [ "$choice" == "3" ]; then
        tmp_file
    fi
}

selector


















