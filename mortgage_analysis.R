# import relevant packages

# # Plan of analysis
# 1. import csv file of Libor and possibly one other index (CMT?)
# 2. create graph showing the direction of interest rates
# 3. calculate mortgage payment on 30-year fixed with today's rate to get the calculation of payments right
# 4. calculate rates under different mortgage types with above indices
  # a. rates reset at beginning of year for the remainder; make sure that's accurate
# b. figure out caps on increases
# c. margin of 2.25%? read pamphlet that I downloaded
# 5. summarize the differences:
#   a. graph total payments/aggregate payments
#   b. graph differences in products?
  # c. find a good summary statistic (present-value differences in payments or lifetime differences in payments?)
  # d. report range of payments; challenge with ARM may not be average difference but the max payments that aren't possible to keep up with

# can we bootstrap some estimates of this?