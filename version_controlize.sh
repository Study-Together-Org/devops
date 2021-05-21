## declare an array variable
# set -x 
declare -a arr=("mc" "roles4" "test123" "modmail4" "roles5" "time_counter_test" "gugumusic" "modmail5" "role_update_test" "timezone" "music" "study" "totti" "invitemanager" "music2" "watcher3" "invitemanager_old" "musicbot" "study_api_backup" "welcomer3" "lfsb" "musicbot2" "study_api_experiment" "marty" "musicbot3" "studychannel" "martytestvoicebot" "remind" "studytimer")

## now loop through the above array
read -s -p "gh password: " password

for i in "${arr[@]}"
do
   echo "$i"
   cd "$i"
   gh repo create --confirm -d "" --private Study-Together-Org/"$i"
   rm -rf .git
   # rm -rf $i
   git init
   find ./* -size +100M | cat >> .gitignore
   git add .
   git commit -m "Push the first commit"
   git remote add origin https://github.com/Study-Together-Org/"$i".git
   git push -f --set-upstream https://zackhardtoname:$password@github.com/Study-Together-Org/"$i".git --all
   cd ..
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also
