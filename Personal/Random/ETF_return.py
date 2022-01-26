import numpy as np
from matplotlib import pyplot as plt

euro_per_time = 500
age_start = 25
age_end = 55
fire = 85 - age_end
rent_per_year = 1.06
rent_per_month = 1 + 0.06 / 12
invest_type = 'month'

# Calculates return
if invest_type == 'month':
    money_etf = np.zeros((age_end - age_start) * 12)
    money_etf_cumulative = np.zeros((age_end - age_start) * 12)
    money_in = np.zeros((age_end - age_start) * 12)
    for month in np.arange(0, len(money_etf)):
        money_etf *= rent_per_month
        money_etf[month] = euro_per_time
        money_etf_cumulative[month] = np.sum(money_etf)
        money_in[month] = euro_per_time + money_in[month-1]

# Calculates some key elements
money_return = np.sum(money_etf)
money_in_total = np.max(money_in)
money_etf_cumulative_year = money_etf_cumulative[::12]
money_in_year = money_in[::12]
fire_monthly = money_return / (12 * fire)

# Plot
plt.plot(np.arange(1, ((age_end-age_start) + 1)), money_etf_cumulative_year)
plt.plot(np.arange(1, ((age_end-age_start) + 1)), money_in_year)
plt.show()
plt.plot(np.arange(1, ((age_end-age_start) + 1)), money_etf[::12])
plt.show()

print("Start age: %g\n End age: %g\n Years to enjoy: %g\n With: €%g" % (age_start, age_end, fire, fire_monthly))
