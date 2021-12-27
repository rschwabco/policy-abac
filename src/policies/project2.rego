package policyabac.GET.api.projects.project2

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

locationallowed {
	user_props.location == data.allowedLocations[i]
}

allowed {
	user_props.project == "project2"
	isworkinghourswithtimezone
	deviceallowed
	locationallowed
}

visible {
	user_props.project == "project2"
}

enabled {
	user_props.project == "project2"
	locationallowed
	deviceallowed
}
