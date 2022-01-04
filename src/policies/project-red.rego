package policyabac.GET.api.projects.red

import data.officeManagement.isWorkingHoursWithTimezone
import input.user.attributes.properties as user_props

default allowed = false

default visible = false

default enabled = false

deviceAllowed {
	user_props.device == data.allowedDevices[_]
}

allowed {
	user_props.project == "red"
	isWorkingHoursWithTimezone
	deviceAllowed
}

visible {
	user_props.project == "red"
}

enabled {
	user_props.project == "red"
	isWorkingHoursWithTimezone
}
