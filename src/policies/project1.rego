package policyabac.GET.api.projects.project1

import input.user.attributes.properties as user_props

default allowed = false

default visible = false

default enabled = false

deviceallowed {
	user_props.device == data.allowedDevices[i]
}

allowed {
	user_props.project == "project1"
}

visible {
	user_props.project == "project1"
}

enabled {
	user_props.project == "project1"
	deviceallowed
}
