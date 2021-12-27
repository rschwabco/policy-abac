package policyabac.GET.api.projects.project1

import input.user.attributes.properties as user_props

default allowed = false

default visible = false

default enabled = false

default isworkinghourswithtimezone = false

isworkinghourswithtimezone {
	ns := time.now_ns()
	clock := time.clock([ns, user_props.timezone])
	clock[0] >= 8
	clock[0] <= 17
}

deviceallowed {
	user_props.device == data.allowedDevices[i]
}

allowed {
	user_props.project == "project1"
	deviceallowed
}

visible {
	user_props.project == "project1"
}

enabled {
	user_props.project == "project1"
	isworkinghourswithtimezone
	deviceallowed
}
