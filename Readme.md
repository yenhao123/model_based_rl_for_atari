Reproduce the [Model-Based Reinforcement Learning for Atari](https://arxiv.org/abs/1903.00374) results. [These videos](https://sites.google.com/corp/view/modelbasedrlatari/home)

## Requirement


## Inference
```
bash inference.sh
```

## Issues
### AttributeError: module 'jax.interpreters.xla' has no attribute 'DeviceArray'
fix /home/yenhao/anaconda3/envs/mbrl_atari_1/lib/python3.8/site-packages/dopamine/jax/networks.py, line 285
rng_key: jax.interpreters.xla.DeviceArray -> rng_key: jax.eArray


### AttributeError: module 'numpy' has no attribute 'bool'
fix /home/yenhao/anaconda3/envs/mbrl_atari_1/lib/python3.8/site-packages/tensorflow_probability/python/mcmc/sample_halton_sequence.py"

np.bool -> bool

### Exception: ROM is missing for pong, see https://github.com/openai/atari-py#roms for instructions

Go to https://github.com/openai/atari-py#roms and step by step install (download ROM+link ROM)

### ValueError: The passed save_path is not a valid checkpoint: /home/yenhao/Model_based_RL-Atari/log/mb_sd_pong_pretrained/world_model

reason: no world model
sol: 1. download gsutil(https://cloud.google.com/storage/docs/gsutil_install#deb) 2. download world_model(gsutil -m cp -r \
  gs://tensor2tensor-checkpoints/modelrl_experiments/train_sd/142/world_model \
  $OUTPUT_DIR/)