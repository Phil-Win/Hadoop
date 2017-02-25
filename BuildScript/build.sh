#!/bin/bash
cd /e/deploy/
cd extract
sudo rm -R /e/deploy/extract/*

echo "Please type in the Git Hub branch to deploy"
read branch

git clone $branch

repositoryList=($(ls -d *))
echo "Choose a repository:"
for i in "${!repositoryList[@]}"; do
	echo "[$(($i+1))]	${repositoryList[$i]}"
done

read choice

repo="${repositoryList[$(($choice-1))]}"
echo "Chosen the repo $repo"
cd "$repo"

projectList=($(ls -d *))
echo "Choose a project:"
for i in "${!projectList[@]}"; do
	echo "[$(($i+1))]	${projectList[$i]}"
done

read choice

project="${projectList[$(($choice-1))]}"
echo "Chosen the project $project"
cd "$project"

workflowList=($(ls -d *))
echo "Choose a workflow:"
for i in "${!workflowList[@]}"; do
	echo "[$(($i+1))]	${workflowList[$i]}"
done

read choice

workflow="${workflowList[$(($choice-1))]}"
echo "Chosen the workflow $workflow"

cd /e/deploy/extract

cp $repo/$project/$workflow/Properties/* /e/project/${repo}/dynamicProperties

mkdir -p /e/project/$repo/$project/$workflow/Scripts
cp $repo/$project/$workflow/Scripts/NAS/* /e/project/$repo/$project/$workflow/Scripts