package policyabac.GET.api.projects.project1

import data.workinghours.isWorkingHoursWithTimezone
import input.user.attributes.properties as user_props

default allowed = false

default visible = false

default enabled = false

deviceAllowed {
	user_props.device == data.allowedDevices[i]
}

allowed {
	user_props.project == "project1"
	isWorkingHoursWithTimezone
	deviceAllowed
}

visible {
	user_props.project == "project1"
	isWorkingHoursWithTimezone
	deviceAllowed
}

enabled {
	user_props.project == "project1"
	isWorkingHoursWithTimezone
	deviceAllowed
}
