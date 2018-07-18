import sys
sys.path.insert(0, '../..')
import pyrosim # noqa

sim = pyrosim.Simulator(use_textures=True, eval_time=1000)
sim.start()
sim.wait_to_finish()
