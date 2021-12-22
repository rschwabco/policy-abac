package policyabac.GET.api.protected

import input.user.attributes.roles as user_roles
import input.user.attributes.properties as user_properties

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

visible {
	user_properties.location == "United States"
}