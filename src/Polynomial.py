import numpy as np

class Polynomial(object):

    coeffs = [0] # type: np.ndarray

    def __init__(self, coeffs : np.ndarray):
        self.coeffs = coeffs

    def evaluate(self, x: float):
        return np.polyval(self.coeffs, x)
