
cd /opt
git clone https://github.com/avinashkolla/sample-website.git
RC=$?
if [[ $RC == 0 ]];then
	echo "Repo cloned"
else
	git pull
	echo "Repo pulled"
fi
