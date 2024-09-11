# matlab_tool
# In remote sensing data there may be some data with 1 hour as the 
# time precision, but we don't need such a small precision, we only need 
# the precision in days. This function helps you to filter out the data 
# with the same year, month and day in a certain time dataset, leaving 
# only the data with different dates.

# input:ED is a variable with a repeating date that contains 6 elements,
# yyyy, MM, dd, hh, mm, ss. as processed by datevec.
# output:num_ED counts the number of different dates in the ED and 
# event_day returns the sequence of different dates.
