![P@tnicroom](Media/title.png)

<h4 align="center">A entropic Sandbox Game in the Shadowrun universe</h4>

<p align="center">
    <a href="https://godotengine.org/download/windows">
    <img src="https://img.shields.io/badge/Godot-478CBF?style=for-the-badge&logo=GodotEngine&logoColor=white">
    <a href="ADD LINK TO INSTALLER REPO">
    <img src="https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white">
    <a href="ADD LINK TO WEBSITE">
    <img src="https://img.shields.io/badge/website-003366?style=for-the-badge&logoColor=white">
    <a href="ADD LINK TO DOCS">
    <img src="https://readthedocs.org/projects/pip/badge/?version=latest&style=for-the-badge">
</p>



<p align="center">
    <a href="#Overview">Overview</a> •
    <a href="#Features">Features</a> •
    <a href="#Installation">Installation</a> •
    <a href="#Getting started">Getting started</a> •
    <a href="#Documentation">Documentation</a> •
    <a href="#contributing">Contributing</a> •
    <a href="#FAQ">FAQ</a> •
    <a href="#credits">Credits</a> •
    <a href="#License">License</a>
</p>


---
<br>


## Overview
P@nicroom is more than a Game, its a Platform! By Installing this Enviroment, you get...

**The Base-game**
* Inspired by the **abstract but fascinating** ASCII-Rougelikes from the 80s
* Set in a World of **Shadowrun**: where Man meets **Magic and Machine**.
* With a **experimental** design which rewards Player who learn to exploit it.
* Demands from the Player to use its **autmatically updated Wiki** to get the upper Hand.
* Uses **Systemic Design** and **DOP** to enable emergent Gameplay and to support personal narratives

**Its Content-creator**
* Gives player the oportunity to **read, write and share elements** of the Game without knowledge in Coding
* Uses its **own text-format for declaration**, the nearest comparrison is a mix of Markdown and JSON
* Includes **filtering by attributes** of elements

**And our inhouse set-up**
* Improved Structure and Navigation by **Line-formatting, Bookmarking and Modulariced Implementations**
* Workflow optimication by personaliced **IDE-shortcuts and Snippets**
* **CLI written in Rust** for pipelined processes




Looking for more details? take a look at our...
* [**Web-page**]() for generall info about the Game.
* [**Game Wiki**]() for specific info about Features.
* [**Docs**]() for in-depth knowldege about Implementation.


---
<br>


## Features
This Repository sets up our inhouse Enviroment for working with P@nicroom.
It contains:
* zip-files of [VS Code Insiders 1.65.0](), for Windows 10 in 32 and 64 bit
* Curated list of Extensions to greatly increase Structure, Readabillity and Navigation. Please take a look at the [credits]()!
* A Shellscript which can do the Installation for you(step-by-step installation can be found rigth below).


---
<br>


## Installation
### Prerequisites
* Windows 10, 32 and 64 bit are both fine
* [Godot 3](https://godotengine.org/download/windows), we recommend [Version 3.4.3](https://downloads.tuxfamily.org/godotengine/3.4.3/)
* Internet connection
* We also recommend [mkDocs]() for generating Wiki articles

### Installing by Script
Some people might be sceptic about running unknown bashs on their personal computer, and thats a good thing.
We can relate to this, so feel free to [take a look on its integrety!]()
it makes some directories, moves files and clones another Repository (The Source-code of the Game).
1. Place the Repository in the Directory where you want to generate your IDE Enviroment
2. run installer.sh

### Installing by Hand
This is a summary, excepting of you to already know VS Code. Try the [verbose instruction]() if you get stuck.
1. Download the zip of [VS Code Insiders](https://code.visualstudio.com/insiders/), we cached here Version 1.65.0
2. Create a folder where you want to unzip it,this is our ``Root``
3. In ``Root``: create a directory called ``data`` to set into portable mode
4. in ``Root/data``: create the nested directory ``user-data/User``
5. in ``Root/data``: insert ``repo/ressources/extensions``
6. in ``Root/data/user-data/User``: insert from ``rep/ressources`` ``snippets``,``keybindings`` and ``settings``
7. Clone the [Game-Source]()
8. open it it as Workspace
9. Insert in ``Game-Source/workspaceSettings.code`` at key ``godot_tools.editor_path`` your filepath to Godot 3

**Your Structure should look like this**
![Structure](Media/Enviroment.PNG)


---
<br>


## Getting started
P@nicroom is not your average Game.
In this early Stage, it can feel empty or even frstrating.
But we also know from our initial interviews of new player that it can be intruiging and provoking curiosity.
We made a whole [Guide]() about the mindset for the Game,here are the most important hints summariced.

**Play the Game and realize, there is no Goal, winning or cheating**
* Its all about Experimenting! Panicroom is a sandbox with a Chemistry set for kids, including plutonium.
* Everything is gearing towards Chaos. Its easier to burn things down than to plant new greens.
* Entering the same Panicroom can be mindnumbingly easy or downright impossible, depending on your set of Abillites.
* Cheat! without hesitation or guilt. Use the wiki to meta-game! like stated above, if you get softblocked just activate Noclip to walk through solid Object.

**When you crave for more, DIY!**
* A lot of our time and energy does not go into new content, but into their underlying rules and compatibillity. So you can tailor them to your specific interests.
* Save your creations! Put them into collections and share them with others! maybe, someone out there built your perfect content.

**Stay up to date**
* There are many entries on our TODO-list, from the most basic stuff to ridicoulusly nieche one. Its in the Nature of an open ended sandbox, we go with the flow. Remember there is a bi-weekly update with a note of its additions.
* Contact us! we like to migrate your content into the public version and do give credit in our text-files, be a part of the development. Due to the content-creator, you dont even need to learn to code



---
<br>


## Documentation
Panicroom is a complex and intricate Enviroment of multiple Languages and Usecases.
For this Reason we are momentarily focused on the Documentation of the Base-game alone.
**We also appreciate feedback to improve its wording, formatting and Navigation!**

We are Mainting two Types of Documentations:
1. **The Wiki** is for Player and content creator. It contains the most elements found in the Game and lists their attributes. We keep the Technical terms at a minimum. Most of it is maintained by our Automation.
2. **The Docs** is for Developer. It contains more Abstract explanations about our Framework and usefull functioncalls of Modules like in an API-doc.Developer may still want to use the Wiki to get specific Infos or examples.


---
<br>


## Contributing
Coming soon


---
<br>


## FAQ
Q : **There are many Bugs,when do you plan to fix it?**
A : We are currently Working on **Eventlogging and Unit-tests**, we are happy about every single person who **sends us a bugreport**.<br><br>

Q : **Where can I share my designed content?**
A : We currently **dont have any moderated message-boards**, but its high on our priority<br><br>

Q : **When do you plan to add more concrete game elements besides abstractions of Systems?**
A : **The more basic Aspects we finsih, the faster we can add concrete content**.There are still many Fundamental things I, RRR, implement basically on my own. This takes a lot of time, and headspace. by finishhing them, Other team-member not only can design them more efficient, I also get time to build some on the side.<br><br>

Q : **What are your next planned Milestones?**
A : Improved Stabillity -> Surfacelevel appearence like sounds -> further implementation of aided content creation -> Enabling sharing of User-generated content<br><br>

Q : **How long do you plan to support/maintain the project.**
A : This project is form of self-expression and experimental ideas, we invest as much and as long time as it feels comfortable. We started at the beginning of COVID-19 where many of us had quite some spare time. I, RRR, invested over the years many hours of the day but i also had a 4 months long hiatus due to mental health. In Short: **I dont know, but we will surely stay for a while.We dont guarantee for consistency,though**.


---
<br>


## Credits
Panicroom is a passion project of RRR and friends:

1. **RedRastaRigger** for lead Game-design and -architecture
2. **K4r11l0w1tch** for QA Engineneering and Pair programming in generall
3. **R.I.C.H.A.R.D** for content design and music
4. **Kapitän Glavinka** for facillity management and catering

<br><br>

We dont want to imply or appropriate the Extensions in this Repository!
They are here as **cached dependencies** and for **flattening our already high entry level**.
We greatly appreciate the Developer of every single one, and if some of them dont want to be associated we will remove them without any further discussion!
<br><br>
Essential Extensions will be written in italic:

| Extension               | Author                            | Usage                                           |
|-------------------------|-----------------------------------|-------------------------------------------------|
| Codesnap                | adpyke                            | Converts Codeblocks into PNG to Showcase        |
| docs-makdown            | Microsoft                         | UI for Markdown-syntax                          |
| *docs-preview*          | *Microsoft*                       | *realtime preview command for Markdown*         |
| *comment Anchors*       | *Starlane Studios*                | *Bookmarking and Line-formatting*               |
| *godot-tools*           | *Geequlim*                        | *Syntax-highlighting and Intellisense*          |
| Render Line Endings     | Joosip Medved                     | usefull for Parsing content of text-files       |
| One Dark Pro            | Binaryify                         | preferred Appearence                            |
| Live Server             | Ritwick Dey                       | realtime Webpage refreshing while designing     |
| *Rust*                  | *The Rust Programming Language*   | *Language support needed for CLI*               |
| *multi-command*         | *ryuta46**                        | *enable concated commands by Userinput*         |
| VS Code Counter         | Kentaro Ushiyama                  | detailed Statistics to Repo                     |
| *vscode-icons*          | *VSCode Icons Team*               | *improves Navigation of Filesystem*             |
| json                    | Zain Chen                         | Renders Tree of JSON-files                      |


---
<br>


## License
Panicroom uses the License of [CC-BY-NC-SA-4.0](creativecommons.org/licenses/by-nc-sa/4.0)

For Legal reasons: we dont guarantee the completeness and correctness of the following content:

This is a passion project and we support the idea of Open source and free ware!   **In Summary:**

>*You are allowed to copy and redistribute this material in any format.*
>*You are also allowd to adapt and build upon this material.*  <br><br>
>
>**Under following conditions**
>
>* You must give apropriate credit to our Team (RRR and Friends) as original creator
>* You must provide a link to its License
>* You must mention if you made changes
>* You must use this material for non-commercial use only
>* You must share your distribution under the same license (CC BY-NC-SA)


---
<br>















### Verbose
* We dont recommend/use the @ or blankspaces in names
* We use the portable version of VS Code Insiders
* We instruct in very small steps to reduce mistakes
* We will start every filepath from the Root of the Enviroment

0.  Choose a Directory where you want to Install your Enviroment, like your Desktop
1.  Create a new Directory named `PatnicRoom-Enviroment`
2.  Enter `PatnicRoom-Enviroment` and...
    1.  create new Directory named `VSCode-Insiders`
    2.  create new Directory named `Workspaces`
    3.  clone this Repository into it.
3. Enter ``PatnicRoom-Enviroment/installer/ressources`` and...
    1. Copy the VS Code Insiders zip according to your Operatingsystem
4. Enter ``PatnicRoom-Enviroment/VSCode-Insiders`` and...
    1. unzip this file  into the Directory
    2. create new Directory named `data`
5. Enter ``PatnicRoom-Enviroment/installer/ressources`` and...
    1. copy the directory `extensions`
6. Enter ``PatnicRoom-Enviroment/VSCode-Insiders/data`` and...
    1. paste the directory `extensions` into it
    1. create new NESTED Directories named ``user-data/User``
7. Enter ``PatnicRoom-Enviroment/installer/ressources`` and...
    1. copy the directory `snippets` AND the files `keybindings` AND `settings`
8. Enter ``PatnicRoom-Enviroment/VSCode-Insiders/data/user-data/User`` and...
    1. paste your three copies into it
9. Clone the [Game-Source]() into your desired Directory
10. Enter ``PatnicRoom-Enviroment/VSCode-Insiders`` and...
    1. start ``Code - Insiders.exe``
    2. Enable extensions
    3. Select the Tab File -> open Workspace from File
    4. Navigate to the Game-Source and select the File ``workspaceSettings``
11. open in VSCode the last file in Explorer named ``Game-Source/workspaceSettings.code`` and...
    1. Jump to key "godot_tools.editor_path" (Line 13)
    2. insert in the value your filepath to godot.exe
