#!/bin/bash
cd /e/deploy/
cd extract

echo "Please type in the Git Hub branch to deploy"
read branch

git clone $branch

repositoryList=$(ls -d *)
echo "Choose a repository:"
for i in "${#repositoryList[@]}"; do
	echo "[$i]	${repositoryList[$(($i-1))]}"
done

read choice

repo="${repositoryList[$(($i-1))]}"

cd "$repo"

projectList=$(ls -d *)
echo "Choose a project:"
for i in "${#projectList[@]}"; do
	echo "[$i]	${projectList[$(($i-1))]}"
done

read choice

project="${projectList[$(($i-1))]}"

cd "$project"

workflowList=$(ls -d *)
echo "Choose a workflow:"
for i in "${#workflowList[@]}"; do
	echo "[$i]	${workflowList[$(($i-1))]}"
done

read choice

workflow="${workflowList[$(($i-1))]}"
cd /e/deploy/extract

cp $repo/$project/$workflow/Properties/* /e/project/${repo}/dynamicProperties

mkdir -p /e/project/$repo/$project/$workflow/Scripts
cp $repo/$project/$workflow/Scripts/NAS/* /e/project/$repo/$project/$workflow/Scripts