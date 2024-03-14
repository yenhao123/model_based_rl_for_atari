import tensorflow as tf

# 替换为您的检查点文件路径
checkpoint_path = 'checkpoint/142/policy/model.ckpt-171992'

# 列出检查点中的所有变量名和形状
variables_in_checkpoint = tf.train.list_variables(checkpoint_path)

# 打印每个变量的名字
for name, shape in variables_in_checkpoint:
    print("Name: {}, Shape: {}".format(name, shape))
