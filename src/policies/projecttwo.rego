package policyabac.GET.api.projects.projecttwo

import input.user.attributes.properties as user_props

allowed {
	user_props.project == "project2"
}

visible {
	user_props.project == "project2"
}

enabled {
	user_props.project == "project2"
}
