import yfinance as yf
from datetime import datetime, timedelta
from matplotlib import pyplot as plt
import pandas as pd
import numpy as np


# Initialization
date_diff = 365  # determines how many days of data I want
date_type = '1h'
date_begin = datetime.today() - timedelta(days=date_diff)  # Calculates beginning date from it
date_begin = date_begin.strftime('%Y-%m-%d')  # Formalizes it in correct jargon
mov_avg_types = [10, 25, 50]  # days

date_now = datetime.today().strftime('%Y-%m-%d')  # Sets current date in correct jargon

# SPDR WORLD TECH: WTCH.AS, Bitcoin: BTC-USD
tickerSymbol = 'WTCH.AS'  # choose stock/ETF
tickerData = yf.Ticker(tickerSymbol)  # get all data on ticker
df = tickerData.history(period='1d', start=date_begin, end=date_now)  # get the prizes (interval='1h' gives per hour)
print(df)  # Shows result

# Moving averages
tot_tobe_rounded = 0
for mov_avg in mov_avg_types:
    for i in range(mov_avg - 1, df.shape[0]):
        tot_tobe_rounded = 0
        for j in range(0, mov_avg):
            tot_tobe_rounded += df.iloc[i - j, 3]
        df.loc[df.index[i], ['SMA' + str(mov_avg)]] = np.round(tot_tobe_rounded / mov_avg, 1)
print(df)

# Plot moving averages with data
plt.plot(df['Open'], label='Opening daily')
plt.plot(df['Close'], label='Closing daily')
plt.plot(df['Low'], '--', label='Low daily')
plt.plot(df['High'], '--', label='High daily')
for mov_avg in mov_avg_types:
    plt.plot(df['SMA' + str(mov_avg)], label='SMA' + str(mov_avg))
plt.legend()
plt.title(tickerSymbol + ' in time')
plt.show()

# Next steps calculate difference short and long SMA, if difference is negative at this day and first derivative
# is positive of parabolic fitted formula then buy
