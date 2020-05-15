
cd /opt
git clone https://github.com/nnunna81/cicd-kubectl.git 
RC=$?
if [[ $RC == 0 ]];then
	echo "Repo cloned"
else
	git pull
	echo "Repo pulled"
fi
