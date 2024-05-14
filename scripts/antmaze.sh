envs='antmaze-large-play-v2' 'antmaze-large-diverse-v2' 'antmaze-medium-play-v2' 'antmaze-medium-diverse-v2' 'antmaze-umaze-v2' 'antmaze-umaze-diverse-v2'



env='antmaze-large-play-v2'


config_path=configs/offline/iql/antmaze/${env}.yaml
datapath=/home/orl/neurips/qlearningdataset/${env}.npy
device=cuda:6
GDA=None # S4RL, synther

for seed in 0 1 2 3
do
    python /home/jaewoo/academic/CORL/algorithms/offline/iql.py --env=$env --config_path=$config_path --datapath=$datapath --device=$device --GDA=$GDA --seed=$seed --eval_freq=50000 &
done