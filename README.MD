# Welcome to my home assignment!

I hope you are in a mood for an adventure 😀 , so let's get started.

I choose to start from  cloning [npkill](https://github.com/voidcosmos/npkill) repository

## Prerequisite 
docker enabled host with ansible 

## First step -  Clone repository
Login to  docker enabled  machine and run :

    git clone git@github.com:adiCohenIL/my-npkill.git

## Get jenkins container up and running
 In order to get jenkins up and running run the below commands:

      cd <repo-local-path>/Jenkins
      ./setup_jenkins.sh

## Login To Jenkins
open your favorite browser goto [jenkins-local-url](http://localhost:8080)

so .. what we got here 🤔 

Jenkins with **builds-npkill**  - Multibranch pipeline  job
which was created by **seed job** scanning for all dsl jobs  

 ## Run build job

 1. Enter to **builds-npkill** job 
 2. Choose **master** branch 
 3. You can run job - to run build and test 
	  first scan of branches trigger build you see that is already ran

 ## Doceraize and deploy
  In order to create and deploy *npkill* container run the bleeow commands:
  
 💡 volume  is optional 
 
       cd <repo-local-path>/ansible
       ansible-playbook deploy_npkill.yml  [ -e volume=<node_modules_path_on_host>:/node_modules_path ] 
       

that's all folks 

![LOONEY TUNES - The Shorty Awards](https://shortyawards.imgix.net/entries/11th/a776c723-0ff2-4e1a-8cfa-909428ad5adc.jpg?auto=format&fit=crop&h=300&q=65&w=500&s=dad6e054bfb283ee35340e2543a78c12)
