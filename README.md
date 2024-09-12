# matlab_tool

# dateunique function
# In remote sensing data there may be some data with 1 hour as the 
#   time precision, but we don't need such a small precision, we only need 
#   the precision in days. This function helps you to filter out the data 
#   with the same year, month and day in a certain time dataset, leaving 
#   only the data with different dates.
# input:ED is a variable with a repeating date that contains 6 elements,
#   yyyy, MM, dd, hh, mm, ss. as processed by datevec.
# output:num_ED counts the number of different dates in the ED and 
#   event_day returns the sequence of different dates.

# tide0 function
# This function calculates the result of superimposing a specified 
#   number of harmonic waves over a specified time range, based on the 
#   period, amplitude, and phase of the harmonic waves you provide.
# input:ti is the specified length of time in hours. 
#   harmonics is a harmonic wave structure containing the fields Time, 
#   Amp and Pha, which are the period, amplitude and phase of the harmonic 
#   wave, respectively. The units are hours, centimeters, and angles.
#   N is the number of selected harmonization waves, e.g., if N is 4, 
#   the first four waves in harmonics are selected.
# output:wave is a sequence of water levels over a specified length of 
#   time in centimeters under the joint action of harmonic waves.
