package policyabac.GET.api.projects.project1

import input.user.attributes.properties as user_props

allowed {
	user_props.project == "project1"
}

visible {
	user_props.project == "project1"
}

enabled {
	user_props.project == "project1"
}