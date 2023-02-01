import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
from scipy import io
from scipy import stats
import os
import seaborn as sns

class SimulationResultsExtractor:

    def __init__(self, orig_data_path, matlab_data_path):
        self.orig_data = pd.read_csv(orig_data_path).drop('Unnamed: 0', axis=1)
        self.matlab_data = io.matlab.loadmat(matlab_data_path)
        self.variables = ['Yhat', 'Chat', 'Ihat', 'qhat', 'Rhat', 'pihat']

    def _matrix_to_df_indexed(self, matrix):
        df_indexed = pd.DataFrame(matrix, columns=self.variables)
        if df_indexed.shape[0] == df_indexed.shape[1]:
            df_indexed.index = self.variables

        return df_indexed

    def _get_descriptive_stats(self, function, statistic, ax=2, plot=True, **kwargs):
        res = function(self.matlab_data[statistic], axis=ax, **kwargs)
        res = self._matrix_to_df_indexed(res)

        if plot:
            sns.heatmap(res, annot=True)
            plt.title(f"Heatmap of {function.__name__} {kwargs} applied on {statistic}")
            plt.show()

        print(f"Table: {statistic}:.2f \n"
              f"{res}")
        return res



if __name__ == "__main__":
    data = SimulationResultsExtractor("./Data/verifikace/data_orig.csv", "./Data/verifikace/simul_results_IM3.mat")
    x = data._get_descriptive_stats(np.mean, "sim_corr", plot=False, ax=2)