# Purpose

This repo provides a general Inbox for all issues that are either a) not clearly related to any particular repo, or b) still too ambiguously defined or immature to be reliably assigned to a repo.

To author content you will need to clone the repo, use a local text editor to edit content, then GIT Sync your edits with the remote GitHub repo.

# Setup and Configure the project Docs Wiki

Docs Repo: https://github.com/KWIA-PortNox/PortNox-Wiki

Steps to install PortNox-Wiki website in Local machine 

## Prerequisites
Install Node.js - v16.12.0 or higher. (install it from this url : https://nodejs.org/en/download )

### Text editor - recommend VS Code 
install it from this url :  https://code.visualstudio.com/download

After installing nodejs and VS code please take terminal (command prompt in windows terminal in linux) and run command node -v and check node installed correctly

Instal Git-(please follow steps in this link https://git-scm.com/book/en/v2/Getting-Started-Installing-Git )

## Steps to run website in local machine

1. Git Clone the files from repo  https://github.com/KWIA-PortNox/PortNox-Wiki master branch
 (to clone files please take command prompt or terminal and type git clone https://github.com/KWIA-PortNox/PortNox-Wiki.git or if GIT is not installed you can download the code as zip file. When pressing on code button(green color at top right you can see download zip)
2. Open the VS code then click on file menu at top left then from menu click on open folder then select your folder destination. Now you can see full files added to your vs code.  Click on Terminal menu in vs code.in terminal opened at bottom type npm install.
3. After completing the above command. type npm run dev to Run the Astro dev server. 
After successfully completing the above step, you can see http://localhost:3000 link in terminal you can open the project either by clicking this link from terminal itself or copy paste this link to browser. Now you can preview PortNox-Wiki site

How to add new content to website
Now we created 4 categories. 
Management & Execution
Strategy & Planning
Operations
Design

so, for e.g. if you want to add new content to first category (Management & Execution)
copy paste your md files to src\content\managment_execution\en\ folder
If you want to add to other categories please add a folder just like above with 		category name and copy paste the md files into it.
