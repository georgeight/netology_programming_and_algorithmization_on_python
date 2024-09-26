if git show-ref --quiet jopa && git show-ref --quiet prd;
then
    echo "Branches are OK"
else
    echo "ERROR Check are branches 'dev' and 'prd' exists."
    exit
fi


read -p "Enter revision tag: " tag_name
read -p "Enter revision tag message: " tag_message
git tag -a $tag_name -m "$tag_message"


git checkout prd
git merge dev
