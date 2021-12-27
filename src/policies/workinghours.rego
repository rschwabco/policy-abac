package workinghours

# import input.user.attributes.properties as user_props

# default isWorkingHoursWithTimezone = false

isWorkingHoursWithTimezone(tz) = x {
	ns := time.now_ns()
	clock := time.clock([ns, tz])
	clock[0] >= 8
	clock[0] <= 17
}
