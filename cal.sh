#!/bin/bash
 # Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'
# ================== TEXT COLORS ==================
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# ================== BOLD TEXT COLORS ==================
BOLD_BLACK='\033[1;30m'
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_PURPLE='\033[1;35m'
BOLD_CYAN='\033[1;36m'
BOLD_WHITE='\033[1;37m'

# ================== UNDERLINE COLORS ==================
UNDER_BLACK='\033[4;30m'
UNDER_RED='\033[4;31m'
UNDER_GREEN='\033[4;32m'
UNDER_YELLOW='\033[4;33m'
UNDER_BLUE='\033[4;34m'
UNDER_PURPLE='\033[4;35m'
UNDER_CYAN='\033[4;36m'
UNDER_WHITE='\033[4;37m'

# ================== BACKGROUND COLORS ==================
BG_BLACK='\033[40m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_PURPLE='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'

# ================== BRIGHT BACKGROUND COLORS ==================
BG_BRIGHT_BLACK='\033[100m'
BG_BRIGHT_RED='\033[101m'
BG_BRIGHT_GREEN='\033[102m'
BG_BRIGHT_YELLOW='\033[103m'
BG_BRIGHT_BLUE='\033[104m'
BG_BRIGHT_PURPLE='\033[105m'
BG_BRIGHT_CYAN='\033[106m'
BG_BRIGHT_WHITE='\033[107m'

# ================== TEXT STYLES ==================
RESET='\033[0m'
BOLD='\033[1m'
DIM='\033[2m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
REVERSE='\033[7m'
HIDDEN='\033[8m'



while true; do
clear
echo -e "${RED}┌───────────────────────────────────────────────┐${NC}"
echo -e "${RED}│${GREEN}                                               ${RED}│${NC}"
echo -e "${RED}│${CYAN}      █████╗ ██████╗ ███████╗███████╗██╗        ${RED}│${NC}"
echo -e "${RED}│${CYAN}     ██╔══██╗██╔══██╗██╔════╝██╔════╝██║        ${RED}│${NC}"
echo -e "${RED}│${CYAN}     ███████║██║  ██║█████╗  █████╗  ██║        ${RED}│${NC}"
echo -e "${RED}│${CYAN}     ██╔══██║██║  ██║██╔══╝  ██╔══╝  ██║        ${RED}│${NC}"
echo -e "${RED}│${CYAN}     ██║  ██║██████╔╝███████╗███████╗███████╗  ${RED}│${NC}"
echo -e "${RED}│${CYAN}     ╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝  ${RED}│${NC}"
echo -e "${RED}│${GREEN}                                               ${RED}│${NC}"
echo -e "${RED}│${WHITE}        Author  : ADEEL RAJPOOT                 ${RED}│${NC}"
echo -e "${RED}│${WHITE}        Version : 1.0                           ${RED}│${NC}"
echo -e "${RED}│${WHITE}        Status  : CALCULATOR                    ${RED}│${NC}"
echo -e "${RED}│${GREEN}                                               ${RED}│${NC}"
echo -e "${RED}└───────────────────────────────────────────────┘${NC}"

echo -e "${YELLOW}Main Menu>${NC}"
echo
echo -e "${CYAN}1) BASIC CALCULATOR..${NC}"
echo -e "${CYAN}2) ADVANCE CALCULATOR..${NC}"
echo -e "${CYAN}3) EXIT ${NC}"
echo

read -p "$(echo -e ${GREEN}SELECT\ YOU\ OPTION\ :${NC}) " option

if [[ "$option" =~ ^[0-9]+$ ]]; then
    sleep 1
else
    echo -e "${RED}x INVALID OPTION --${NC}"
fi

if [ "$option" -eq 1 ]; then

    while true; do

    clear
echo -e "${GREEN}    _    ____  _____ _____ _${NC}"
echo -e "${GREEN}   / \  |  _ \| ____| ____| |${NC}"
echo -e "${GREEN}  / _ \ | | | |  _| |  _| | |${NC}"
echo -e "${GREEN} / ___ \| |_| | |___| |___| |___${NC}"
echo -e "${GREEN}/_/   \_\____/|_____|_____|_____|${NC}"
echo
echo -e "${WHITE}-------------------- CALCULATOR 1.0${NC}"
echo
    echo -e "${YELLOW}IF YOU WANT TO PLUS+ SELECT THIS SYMBOL (+) ${NC}"
    echo -e "${YELLOW}IF YOU WANT TO MINUS- SELECT THIS SYMBOL (-) ${NC}"
    echo -e "${YELLOW}IF YOU WANT TO MULTIPLY× SELECT THIS SYMBOL (*) ${NC}"
    echo -e "${YELLOW}IF YOU WANT TO DEVIDE÷ SELECT THIS SYMBOL (/) ${NC}"
    echo
    echo -e "${BLUE}For Example .. ${NC}"
    echo -e "${WHITE}First number  : ${CYAN}18${NC}"
    echo -e "${WHITE}SYMBOL        : ${CYAN}(/)(*)(+)(-)${NC}"
    echo -e "${WHITE}Second number : ${CYAN}12${NC}"
    echo -e "${WHITE}Answer is     : ${GREEN}......${NC}"
    echo

    read -p "$(echo -e ${YELLOW}Enter\ your\ First\ Number\ \ :${NC}) " a
    read -p "$(echo -e ${YELLOW}Enter\ your\ Symbol\ \ \ \ \ \ \ :${NC}) " sym
    read -p "$(echo -e ${YELLOW}Enter\ your\ Second\ Number\ :${NC}) " b
    
    sleep 2
    if [[ "$a" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo   
    else
    
        echo -e "${RED}1st Number is INVALID  --${NC}"
        
    fi

    if [[ "$b" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        :
    else
        sleep 1
        echo -e "${RED}2nd Number is INVALID  --${NC}"
    fi

    if [ "$sym" = + ]; then
        echo -e "${GREEN}Your answer is = $(echo "scale=2; $a + $b" | bc)${NC}"
    elif [ "$sym" = - ]; then
        echo -e "${GREEN}Your answer is = $(echo "scale=2; $a - $b" | bc)${NC}"
    elif [ "$sym" = '*' ]; then
        echo -e "${GREEN}Your answer is = $(echo "scale=2; $a * $b" | bc)${NC}"
    elif [ "$sym" = / ]; then
        echo -e "${GREEN}Your answer is = $(echo "scale=2; $a / $b" | bc)${NC}"
    else
        sleep 1
        echo -e "${RED}x Invalid Symbol${NC}"
        sleep 1
    fi

    echo
    echo -e "${CYAN}For Main Menu type (EXIT) in small letters -- For Continue press (ENTER)${NC}) "
    read -p "$(echo -e ${YELLOW}---CONTINUE or MAIN MENU:${NC}) " opt

    if [ "$opt" = "exit" ]; then
        echo -e "${RED}Returning to main menu..${NC}"
        sleep 2
        break
    fi
done

elif [ "$option" -eq 2 ]; then
while true; do
clear
echo 
echo
echo
echo
echo
echo -e "${UNDER_YELLOW}NOTE ${NC} : Make sure your terminal is maximized to full screen. 
    Please first maximize the terminal to full screen then use the advance calculator"
    sleep 2
    clear
echo -e "${GREEN}    _    ____  _____ _____ _${NC}"
echo -e "${GREEN}   / \  |  _ \| ____| ____| |${NC}"
echo -e "${GREEN}  / _ \ | | | |  _| |  _| | |${NC}"
echo -e "${GREEN} / ___ \| |_| | |___| |___| |___${NC}"
echo -e "${GREEN}/_/   \_\____/|_____|_____|_____|${NC}"
echo
echo -e "${WHITE}-------------------- CALCULATOR 1.0${NC}"
    echo
    echo -e "${UNDER_YELLOW}NOTE ${NC} : If you write any alphabet and wrong symbol.
    you got an error like this ( (standard_in) 1: syntax error )
     You can use only numbers and (.)(+)(-)(*)(/) this symbols."
     echo
     echo -e "${YELLOW}Using Method--${NC}"
     echo -e "${YELLOW}For PLUS+     : (+) ${NC}"
     echo -e "${YELLOW}For MINUS-    : (-) ${NC}"
     echo -e "${YELLOW}For DEVIDE÷   : (/) ${NC}"
     echo -e "${YELLOW}For MULTIPLY× : (*) ${NC}"
     
    echo
    echo -e "${CYAN}For example : (12+2) or (12+2+3*8/4) etc... ${NC}"
    echo
    read -p "$(echo -e ${YELLOW}Enter\ your\ Question\ :${NC}) " num
    echo
    sleep 1

    if ! [[ "$num" =~ ^[0-9+\-*/.().\ ]+$ ]]; then    
    # Calculate the answer
result=$(echo "scale=2; $num" | bc)

# Print the answer in terminal
printf "${GREEN}Your answer is = %s${NC}\n" "$result"

# Save the answer to a file (optional)
echo "$result" >> result.txt

    sleep 1
                
    fi

    echo
    echo -e "${CYAN}For Main Menu type (EXIT) in small letters -- For Continue press (ENTER)${NC}) "
    read -p "$(echo -e ${YELLOW}---CONTINUE or MAIN MENU:${NC}) " opt


    if [ "$opt" = "exit" ]; then
        break
    fi
done

elif [ "$option" -eq 3 ]; then
    echo -e "${RED}Exiting program...${NC}"
    sleep 1
    exit 0
fi
done

