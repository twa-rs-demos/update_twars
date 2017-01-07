#! /usr/bin/env  bash 


#=========================================================================
#
#   description: update submodules of Recruiting System, they are
#				1. web
#				2. teacher-admin-web
#				3. web-api
#				4. paper-api
#
#=========================================================================
twars="$1"
web_api_port=3000


update_web () {
	echo "update web"
	update_static_file "$twars/web"
}

update_teacher_admin_web () {
	echo "update teacher admin web"
	update_static_file "$twars/teacher-admin-web"
}

update_web_api () {
	echo "update web api"
	cd "$twars/web-api" || exit 1
	git pull -r
	npm install 
	npm run refreshMongo
	kill $(lsof -t -i:$web_api_port)
	nohup npm start > /dev/null &
}

update_paper_api () {
	echo "update paper api"
	cd "$twars/paper-api" || exit 1
	git pull -r
	./gradlew clean 
	./gradlew flywayclean 
	./gradlew flywaymigrate
	./gradlew jettyRestart || nohup ./gradlew jettyStart > /dev/null &
}

update_static_file () {
	cd "$1" || exit 1
	git pull -r
	npm install 
	npm run webpack
}

update_web_service () {
	update_web_api
	update_paper_api
}

update_twars () {
	update_web 
	update_teacher_admin_web
	update_paper_api
	update_web_api
}

validate () {
	if [[ ! -d $twars ]]; then
		echo 
		echo "Abort! You need to input a validate directory of Recruiting System"
		echo "For instance, ./update_twars.sh /home/afaren/recruiting-system"
		echo 
		exit 1 
	fi	
}

validate
update_twars


