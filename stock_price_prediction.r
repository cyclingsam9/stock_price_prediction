# load packages ----
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
source('../US-Actuarial-Functions-Modules/R/package_load.r')
package_load()
# Quandl.api_key("P7BZZnu_L2A44sDf4fhK")
# set wd
setwd('../../SamsShiz/Google Drive/Money/Investments')

# Pull Data ---------------------------------------------------------------
# * Investor sentiment data -----------------------------------------------
temp = Quandl('AAII/AAII_SENTIMENT', start_date='2000-01-07', end_date='2021-01-07') 

(temp %>% select(Date,`Bull-Bear Spread`) %>% 
    ggplot(aes(Date,`Bull-Bear Spread`))+geom_line()+geom_smooth()) %>% 
  ggplotly()

# *  Yahoo price data - can pull multiple tickers at once ----
# uses tidyquant
# https://cran.r-project.org/web/packages/tidyquant/vignettes/TQ00-introduction-to-tidyquant.html
aapl <- tq_get('AAPL',
               from = "2017-01-01",
               to = "2018-03-01",
               get = "stock.prices")

# * Add technical indicators
# See this link for detail on quantmod technical indicators 
# https://bookdown.org/kochiuyu/Technical-Analysis-with-R/buy-and-hold-1.html


# Build Models ------------------------------------------------------------


# * Gradient Boosted model to predict direction ---------------------------
# Review as many variables as possible to predict the next days price movement up or down
# Look at predicted next week/month as well as day
# Variable ideas
# Price, Price Change, RSI, Momentum, Moving Averages, Volume, ROC, MACD
# Could I also pull in news snippets here?
# https://www.datacamp.com/community/news/forecasting-markets-using-extreme-gradient-boosting-xgboost-dpiwyu0ag65
# https://blog.quantinsti.com/forecasting-markets-using-extreme-gradient-boosting-xgboost/?utm_campaign=News&utm_medium=Community&utm_source=DataCamp.com



# * ARIMA Time Series Model -----------------------------------------------
# https://blog.quantinsti.com/forecasting-stock-returns-using-arima-model/
# file:///Users/SamsShiz/Downloads/jrfm-13-00181.pdf

# * Nueral Network Model --------------------------------------------------


# Run Final Model ---------------------------------------------------------


# Connect to Robinhood API to make trade ----------------------------------















# Bitcoin Section ---------------------------------------------------------


# Bitcoin price prediction using python
# nueral network example: https://towardsdatascience.com/predicting-bitcoin-prices-with-deep-learning-438bc3cf9a6f

# Alternative example
# https://github.com/abhinavsagar/Cryptocurrency-Price-Prediction
# https://towardsdatascience.com/cryptocurrency-price-prediction-using-deep-learning-70cfca50dd3a

