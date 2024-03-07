#!/bin/bash
# Make sure file is stored in ~/Pictures and named .exam.sh

# Clears terminal
clear

# Makes it so user has to do the trivia and can't quit
trap '' INT TSTP

# Creates ASCII art so it looks nicer
echo "                         .------------------------.
                              |    Well, Berto, do       |
    __________________________|   you know the answer?   |
   |  _________________________'-------------,----------'
   | |                         ____         /  | |
   | |  Who is the President  (___ \           | |
   | |  of the U.S.?         ( (..) )          | |
   | |                  \\\' |( < ,) )         | |
   | |                   `|_\_\)--(  )         | |
   | |                    \  ,"""(___)         | |
   | |                     `'\_  __  \         | |
   | |                        |    ,  )        | |
   | |_______________________ /  _/  /_________| |
   |________________________ I ///\./I___________|     
                             |       |
                             |       |
                             '-.._..-'   .---------------------------.
                               | |  )   (  Erm... Tyler Barnes?       )
                              _| | /     '--------,------------------'
                            .'_.�_/7            _/
                                         .((()           Z  z
              _..._                     /_ (())        z
             /     \                   <   ?)))     Z
             |     |                    \_.((((
             \  __ /                    __()))))
              \(__)                    /        \
            __//  \                   /   ,..--'^|
          /`  (____)-.               /  ( |      |
         /            \                 / |..--/^ "
# Explains the rules
echo "We hope you've been studying!"
sleep 1
echo "If you fail, one of your team members will be taken :O"
sleep 1
echo "You have ten seconds per question, and thirty seconds before the test starts"
sleep 1
echo "Answer everything in lowercase! If you don't read the rules don't expect pity"
sleep 1
echo "The test will start shortly, don't type anything until a question appears"

# Gives thirty seconds to prepare
sleep 30

# Defines score and question total
score=0
questions=8

# Question 1
echo ""
echo "What is the capital of South Korea?"
read -t 10 -p ">" answer1
if [ "$answer1" == "seoul" ]; then
    echo "Correct!"
    ((score++))
else
    echo "Incorrect"
fi
sleep 2

# Question 2
echo ""
echo 'What scientist is known as the "Father of Modern Physics" (lastname)'
read -t 10 -p ">" answer2
if [ "$answer2" == "einstein" ]; then
    echo "Correct!"
    ((score++))
else
    echo "Incorrect"
fi
sleep 2

# Question 3
echo ""
echo "What is the name of the dwarf planet which was formerly known as the ninth planet in our solar system?"
read -t 10 -p ">" answer3
if [ "$answer3" == "pluto" ]; then
    echo "Correct!"
    ((score++))
else
    echo "Incorrect"
fi
sleep 2

# Question 4
echo ""
echo "What is a common name for sodium chloride (NaCL)?"
read -t 10 -p ">" answer4
if [ "$answer4" == "salt" ]; then
    echo "Correct!"
    ((score++))
else
    echo "Incorrect"
fi
sleep 2

# Question 5
echo ""
echo "What was the first country to use paper money?"
read -t 10 -p ">" answer5
if [ "$answer5" == "china" ]; then
    echo "Correct!"
    ((score++))
else
    echo "Incorrect"
fi
sleep 2

# Question 6
echo ""
echo "What color is a giraffe's tongue?"
read -t 10 -p ">" answer6
if [ "$answer6" == "purple" ]; then
    echo "Correct!"
    ((score++))
else
    echo "Incorrect"
fi
sleep 2

# Question 7
echo ""
echo "What does the Richter scale measure (plural)?"
read -t 10 -p ">" answer7
if [ "$answer7" == "earthquakes" ]; then
    echo "Correct!"
    ((score++))
else
    echo "Incorrect"
fi
sleep 2

# Question 8
echo ""
echo "Which continent has the most countries?"
read -t 10 -p ">" answer8
if [ "$answer8" == "africa" ]; then
    echo "Correct!"
    ((score++))
else
    echo "Incorrect"
fi
sleep 2

echo ""
echo ""
echo "Quiz completed. Calculating grade..."
sleep 5

# Funny troll
echo "Somebody didn't study... you failed"
sleep 2
echo "I lied, we didn't even look at what you got yet, hold on"
sleep 4
echo""
echo""

# Checking if your score is high enough to pass
# ge = greater or equal to
if [ $score -ge 6 ]; then
    echo "Wow, you actually passed, guess you get to keep your whole team..."
else
    echo "You failed the test :)"
    echo "You should probably start thinking about who's getting taken"
fi

# Ends quiz and makes it where a faculty member has to input the password
# This is so we can manually verify if you win or lose...
echo ""
echo ""
echo "END QUIZ, ONLY A FACULTY MEMBER CAN EXIT YOU!"
echo "Have all your team members stand up and raise your hands SILENTLY to alert faculty you have finished"
while true
do
    read -p ">" safeword
    if [ "$safeword" = "faculty-arrived" ]; then
        echo ""
        echo ""
        echo "Thank you for taking the quiz!"
        echo "Hope the questions didn't hurt the brain TOO much"
        break
    fi
done

# script by b3rt0
# hope you enjoy :)
# Script self deletes so they won't even know what hit them

# Deletes file, granted its in /Pictures 
# rm -f ~/Pictures/.exam.sh
