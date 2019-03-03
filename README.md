# Multi-criteria slicing simple data repo

#### Date: 19.3.3

Multi-criteria slicing result for three small benchmark projects. The benchmark projects are:

- *Montreal Boat Example*
- *word count*
- *mug*

## Summary

### Static Statistics

|  Project | LoC | U | C | ORBS observations | avg orbs slice size | ratio |
| --- | --- | --- | --- | --- | --- | --- |
|  mbe | 77 | 21 | 14 | 6102 | 40.79 | 52.97% |
|  wc | 46 | 21 | 17 | 3843 | 17.24 | 37.47% |
|  mug | 61 | 9 | 13 | 4420 | 25.23 | 41.36% |

### Multi-criteria Statistics

|  project | doe | # of observations | once success |  |  |  |  | logistic |  |  |  |  | simple bayes, mean |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|   |  |  | slice size |  | slice similarity |  | slicing success rate | slice size |  | slice similarity |  | slicing success rate | slice size |  | slice similarity |  | slicing success rate |
|   |  |  | # line | ratio | mean | std |  | # line | ratio | mean | std |  | # line | ratio | mean | std |  |
|  mbe | onehot | 22 | 56.71 | 73.65% | 0.744 | 0.155 | 1 | 57.00 | 74.03% | 0.7365 | 0.1668 | 1 | 57.00 | 74.03% | 0.7365 | 0.1668 | 1 |
|   | 2hot | 208 | 55.86 | 72.54% | 0.7525 | 0.1418 | 1 | 56.71 | 73.65% | 0.744 | 0.155 | 1 | 57.00 | 74.03% | 0.7365 | 0.1668 | 1 |
|   | random | 100 | 55.86 | 72.54% | 0.7525 | 0.1418 | 1 | 57.57 | 74.77% | 0.7365 | 0.1668 | 1 | 57.00 | 74.03% | 0.7365 | 0.1668 | 1 |
|   | ff2l | 16 | 62 | 80.52% | 0.6923 | 0.195 | 1 | 62 | 80.52% | 0.6923 | 0.195 | 1 | 62 | 80.52% | 0.6923 | 0.195 | 1 |
|  wc | onehot | 22 | 22.4118 | 48.72% | 0.7248 | 0.2161 | 1 | 30.1176 | 65.47% | 0.5017 | 0.2122 | 1 | 28.2941 | 61.51% | 0.5424 | 0.1958 | 1 |
|   | 2hot | 185 | 21.8235 | 47.44% | 0.7261 | 0.1593 | 0.8823529412 | 36.1176 | 78.52% | 0.4378 | 0.2545 | 1 | 26.1176 | 56.78% | 0.5788 | 0.2034 | 1 |
|   | random | 100 | 21.8235 | 47.44% | 0.7261 | 0.1593 | 0.8823529412 | 33.0588 | 71.87% | 0.4649 | 0.259 | 1 | 26.9412 | 58.57% | 0.5646 | 0.2253 | 1 |
|   | ff2l | 29 | 26.1765 | 56.91% | 0.6723 | 0.1595 | 0.9411764706 | 37.2353 | 80.95% | 0.3716 | 0.2091 | 1 | 31.7647 | 69.05% | 0.4715 | 0.1868 | 1 |
|  mug | onehot | 10 | 48.0769 | 78.81% | 0.5586 | 0.2565 | 1 | 48.0769 | 78.81% | 0.5586 | 0.2565 | 1 | 49.8462 | 81.72% | 0.5553 | 0.2628 | 1 |
|   | 2hot | 46 | 48.0769 | 78.81% | 0.5586 | 0.2565 | 1 | 48.0769 | 78.81% | 0.5586 | 0.2565 | 1 | 49.8462 | 81.72% | 0.5553 | 0.2628 | 1 |
|   | random | 100 | 48.0769 | 78.81% | 0.5586 | 0.2565 | 1 | 48.0769 | 78.81% | 0.5586 | 0.2565 | 1 | 49.8462 | 81.72% | 0.5553 | 0.2628 | 1 |
|   | ff2l | 17 | 49.1538 | 80.58% | 0.5229 | 0.2353 | 1 | 58.9231 | 96.60% | 0.4205 | 0.2306 | 1 | 50.9231 | 83.48% | 0.5196 | 0.2418 | 1 |

## Contents

### original

A directory which contains the original source code of the projects.

### orbs

A directory which contains the result of ORBS as a baseline.

### experiment

A directory which contains the training observation data of multi-criteria slicing

### gcov

A directory which contains a coverage data.

### unit

A directory which contains deletion units.

### model

A directory which contains the inferred slice by the model trained.

### compare

A directory which contains the comparing result between ORBS slice and multi-critera slice

- only_code: compare only the code which has been executed, which has been extracted from the result of **gcov**.
- vanilla: compare the whole code.

### bayes_sim

A directory which contains the incremental slice ordered by the bayesian inference model(*Section 5.4 on the report*).