package policyabac.GET.api.projects.blue

import data.officeManagement.isWorkingHoursWithTimezone
import input.user.attributes.properties as user_props

default allowed = false

default visible = false

default enabled = false

deviceAllowed {
	user_props.device == data.allowedDevices[_]
}

locationAllowed {
	user_props.location == data.allowedLocations[_]
}

allowed {
	user_props.project == "blue"
	isWorkingHoursWithTimezone
	deviceAllowed
	locationAllowed
}

visible {
	user_props.project == "blue"
}

enabled {
	user_props.project == "blue"
	locationAllowed
	deviceAllowed
}
