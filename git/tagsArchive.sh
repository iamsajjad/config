#cd repo/

for tag in $(git tag) 
do
    # if you want to suppress @... part
    if [[ $tag != *"rc"* ]] && [[ $tag != *"beta"* ]] ; then
        #for tar.gz
        #git archive -o gitlab-"$tag".tar.gz "$tag"
        #for tar.xz
        git archive "$tag" | xz -z > gitlab-"$tag".tar.xz
    fi
done
