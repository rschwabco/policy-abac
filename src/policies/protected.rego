package policyabac.GET.api.protected

import input.user.attributes.roles as user_roles
import input.user.attributes.properties as user_props

default allowed = false

default visible = false

default enabled = false

allowed {
	some i
	data.roles[user_roles[i]].perms[path].allowed	
}

visible {
	some i
	data.roles[user_roles[i]].perms[path].visible
}

enabled {
	some i
	data.roles[user_roles[i]].perms[path].enabled
}

isworkday {
	ns := time.now_ns()	
	day := time.weekday(ns)
	day == data.workdays[i]
}

isallowedlocation {
	user_props.location == data.allowedLocations[i]
}

isalloweddevice {
	user_props.device == data.allowedDevices[i]
}