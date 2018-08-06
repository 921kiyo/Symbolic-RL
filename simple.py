import matplotlib
import gym
import gym_vgdl
import numpy as np
import time

import os
import subprocess

from lib.helper import gen_log_dir
from lib import plotting, helper, induction


TIME_RANGE = 400
# env = gym.make('vgdl_experiment1-v0')
# env = gym.make('vgdl_experiment3.5-v0')
env = gym.make('vgdl_experiment4_after-v0')
# env = gym.make('vgdl_experiment5-v0')


# for i_episode in range(TIME_RANGE):

#     # Reset the env and pick the first action
#     state = env.reset()

#     for t in range(TIME_RANGE):
#         env.render()
#         time.sleep(0.1)
#         # Take a step
#         action = env.action_space.sample()
#         next_state, reward, done, _ = env.step(action)

#         if done:
#             break


base_dir = os.path.dirname(os.path.abspath(__file__))
# print(induction.check_ILASP_cover(base_dir, "output2.las", ""))

stats = plotting.load_stats(base_dir, "experiment1_ILASP")
stats_test = plotting.load_stats(base_dir, "experiment1_ILASP_test")
# # import ipdb; ipdb.set_trace()
plotting.plot_episode_stats_test(stats, stats_test)
# plotting.plot_episode_stats_simple(stats)

# plotting.plot_episode_stats_multiple(stats, stats_test)

