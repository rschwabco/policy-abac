package policyabac.GET.api.protected.__projectId

import input.user.attributes.properties as user_props
import input.user.attributes.roles as user_roles

default allowed = false

default visible = false

default enabled = false

default isworkdaywithtimezone = false

locationallowed {
	user_props.location == data.allowedLocations[i]
}

deviceallowed {
	user_props.device == data.allowedDevices[i]
}

isworkdaywithtimezone {
	ns := time.now_ns()
	clock := time.clock([ns, user_props.timezone])
	clock[0] >= 8
	clock[0] <= 17
}

allowed {
	some i
	data.roles[user_roles[i]].perms[path].allowed
	locationallowed
	deviceallowed
}

visible {
	some i
	data.roles[user_roles[i]].perms[path].visible
}

enabled {
	some i
	data.roles[user_roles[i]].perms[path].enabled
}
