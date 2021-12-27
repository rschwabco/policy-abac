package workinghours

import input.user.attributes.properties as user_props

# default isWorkingHoursWithTimezone = false

isWorkingHoursWithTimezone {
	ns := time.now_ns()
	clock := time.clock([ns, user_props.timezone])
	clock[0] >= 8
	clock[0] <= 17
}
