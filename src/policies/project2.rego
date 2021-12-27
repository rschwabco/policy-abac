package policyabac.GET.api.projects.project2

import input.user.attributes.properties as user_props

default allowed = false

default visible = false

default enabled = false

default isWorkingHoursWithTimezone = false

isWorkingHoursWithTimezone {
	ns := time.now_ns()
	clock := time.clock([ns, user_props.timezone])
	clock[0] >= 8
	clock[0] <= 17
}

deviceAllowed {
	user_props.device == data.allowedDevices[i]
}

locationAllowed {
	user_props.location == data.allowedLocations[i]
}

allowed {
	user_props.project == "project2"
	isWorkingHoursWithTimezone
	deviceAllowed
	locationAllowed
}

visible {
	user_props.project == "project2"
}

enabled {
	user_props.project == "project2"
	locationAllowed
	deviceAllowed
}
