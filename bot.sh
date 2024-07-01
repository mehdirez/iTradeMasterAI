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
