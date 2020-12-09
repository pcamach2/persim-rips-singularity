import numpy as np
from ripser import ripser
from persim import plot_diagrams
import matplotlib.pyplot as plt

# import in the positive correlations matrix perform distance conversion here instead of matlab
data = np.genfromtxt ('/datain/distmatposfc.txt', delimiter=",")
diagrams = ripser(data)['dgms']
f, ax = plt.subplots()
plot_diagrams(diagrams, show=False)
plt.savefig('persistancePosCorr.png')