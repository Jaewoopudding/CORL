env='antmaze-large-play-v2'


config_path=configs/offline/iql/antmaze/${env}.yaml
datapath=False
device=cuda:0
# S4RL, synther


GDA=synther
datapath=/input/${env}.npz
for seed in 0 1 2 3
do
    python algorithms/offline/iql.py --env=$env --config_path=$config_path --datapath=$datapath --device=$device --GDA=$GDA --seed=$seed --eval_freq=50000 &
done
wait
# for seed in 4 5 6 7
# do
#     python algorithms/offline/iql.py --env=$env --config_path=$config_path --datapath=$datapath --device=$device --GDA=$GDA --seed=$seed --eval_freq=50000 &
# done
# wait
