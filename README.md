# Santa's Linux Workshop
To get started, you'll need to either use [Git Bash](https://git-scm.com/install/) on Windows, or Linux/WSL

If using Linux/WSL, you'll need Git installed, to get a copy of these files.
Use `apt install git`
Doesn't work? You'll find this a lot that commands can only be ran as root!
Use `sudo apt install git` to run it as root (superuser do/substitute user do)

Now, you can download a copy of these files and save christmas!
`git clone https://github.com/AlexCK-STFC/eep-linux-workshop`

## Task 1
<details>Santa left a present in his bedroom - can you navigate there and find it?
<details><summary>Click here for a hint</summary>use cd to get there, and ls to look around</details></details>

## Task 2
<details>One of the elves thinks they might have put the wrong thing inside - can you read the contents of the file to find out what is inside
<details><summary>Click here for a hint</summary>use cat, less, or more to read a file</details>
</details>

## Task 3
<details>Can you navigate back to the sleigh and check if his sack contains a present for "Ollie"?
<details><summary>Click here for a hint</summary>use find ./ -name "filename" to search for a file</details>
</details>

## Task 4
<details>It must have been mislabelled - can you search the whole north pole for the present that contains the word "basketball"?
<details><summary>Click here for a hint</summary>grep is how you search for a word inside a file, adding -r * to the end lets you recursivley (because of the -r) search every file which matches the wildcard * (which matches everything)</details>
</details>

## Task 5
<details>Can you move the present containing the basketball to the sack in the sleigh - while you are at it, can you re-wrap it in something less soggy, by changing its name to "present-for-Ollie"
<details><summary>Click here for a hint</summary>mv can be used to move a file and change its name!</details>
</details>

## Task 5
<details>Could you write a short note to Ollie to apologise for the damp present, and put it in the sack
<details><summary>Click here for a hint</summary>use touch to create a file and nano to edit it</details>
</details>

## Task 7
<details>Oh no - an evil reindeer has snuck into the pen! Can you delete it?
<details><summary>Click here for a hint</summary>you wont be able to delete it because it has a cold dead heart inside, add -r to your rm command to also delete the things inside a directory</details>
</details>

## Task 8
<details>Santa doesn't have enough reindeer in the pen to pull the sleigh, can you clone them to make more? - make sure one of them has a red nose!

Optional Challenge: Can you clone enough reindeer in a single command?
<details><summary>Click here for a hint</summary>You can use the cp command to copy a directory. You can use a for loop and variables to repeat a command with different inputs</details>
</details>

## Task 9
<details>Now we need to deliver the present - navigate to the rest of the world and find the directory Ollies-house
<details><summary>Click here for a hint</summary>this is a good situation to use the find command</details>
</details>

## Task 10
<details>Can you move the sleigh to the same place as Ollie's House
<details><summary>Click here for a hint</summary>You can use the mv command to do this</details>
</details>

## Task 11
<details>Can you move the present and apology letter into Ollie's front room
<details><summary>Click here for a hint</summary>You dont have the correct permissions - is there a way to run something as a user that does have the permissions?</details>
</details>
