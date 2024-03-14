python /usr/local/anaconda3/envs/mbrl_atari_1/lib/python3.8/site-packages/tensor2tensor/rl/evaluator.py \
  --loop_hparams_set=rlmb_long_stochastic_discrete \
  --loop_hparams=game=pong,eval_max_num_noops=8,eval_sampling_temps=[0.5] \
  --policy_dir=/root/Master_Thesis/rl_tutorial/Model_based_RL-Atari/checkpoint/142/policy \
  --eval_metrics_dir=pong_pretrained \
  --debug_video_path=pong_pretrained \
  --num_debug_videos=4
