# iTradeMasterAI
mkdir ft_userdata
cd ft_userdata
#download docker yml file
curl https://raw.githubusercontent.com/freqtrade/freqtrade/develop/docker/docker-compose-freqai.yml -o docker-compose.yml
#pull docker image          
sudo docker-compose pull
#create user directory
sudo docker-compose run --rm freqtrade create-usrdir --userdir user_data
cd user_data
#download example config file
curl https://raw.githubusercontent.com/freqtrade/freqtrade/develop/config_examples/config_freqai.example.json
mkdir strategies
cd strategies
curl https://raw.githubusercontent.com/freqtrade/freqtrade/develop/freqtrade/templates/FreqaiExampleStrategy.py
# sudo docker-compose run --rm freqtrade download-data --exchange binance -t 15m 1h --timerange 20210501-20210701

sudo docker-compose run --rm freqtrade trade --strategy FreqaiExampleStrategy --freqaimodel XGBoostRegressor


# freqtrade trade --config config_examples/config_freqai.example.json --strategy FreqaiExampleStrategy --freqaimodel XGBoostRegressorr --strategy-path freqtrade/templates

# sudo docker-compose run --rm freqtrade hyperopt --enable-protections --strategy BBRSIOptimizedStrategy --spaces roi stoploss trailing trades --hyperopt-loss SharpeHyperOptLoss -i 15m -e 50

# docker-compose run --rm freqtrade backtesting --strategy FreqaiExampleStrategy --strategy-path freqtrade/templates --config config_examples/config_freqai.example.json --freqaimodel LightGBMRegressor --timerange 20210501-20210701

# pip install lightgbm

Sudo docker-compose run --rm freqtrade backtesting --strategy FreqaiExampleStrategy --freqaimodel XGBoostRegressor --timerange 20240901-20241210
