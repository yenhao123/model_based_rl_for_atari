OUTPUT_DIR=/root/Master_Thesis/rl_tutorial/Model_based_RL-Atari/log/mb_sd_pong_pretrained
python /usr/local/anaconda3/envs/mbrl_atari_1/lib/python3.8/site-packages/tensor2tensor/rl/player.py \
  --wm_dir=$OUTPUT_DIR/world_model \
  --loop_hparams_set=rlmb_base_stochastic_discrete \
  --loop_hparams=game=pong \
  --game_from_filenames=False \
  --zoom=3 \
  --fps=5
