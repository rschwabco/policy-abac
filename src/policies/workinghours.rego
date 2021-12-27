package officeManagement

import input.user.attributes.properties as user_props

isWorkingHoursWithTimezone {
	ns := time.now_ns()
	clock := time.clock([ns, user_props.timezone])
	clock[0] >= 8
	clock[0] <= 17
}
