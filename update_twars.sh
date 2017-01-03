#! /usr/bin/env bash

#=========================================================================
#
#   description: update submodules of Recruiting System, they are
#				1. web
#				2. teacher-admin-web
#				3. web-api
#				4. paper-api
#
#=========================================================================


update_web () {
	echo "update web"
}

update_teacher_admin_web () {
	echo "update teacher admin web"
}

update_web_api () {
	echo "update web api"
}

update_paper_api () {
	echo "update paper api"
}


update_static_file () {
	update_web
	update_teacher_admin_web
}


update_web_service () {
	update_web_api
	update_paper_api
}






update_static_file && update_static_file 
