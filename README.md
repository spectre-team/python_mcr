# Spectre

![Spectre](https://user-images.githubusercontent.com/1897842/31115297-0fe2c3aa-a822-11e7-90e6-92ceccf76137.jpg)

This repository contains definition of Docker image with MATLAB Common Runtime
environment on Python 3.4 slim image.

# How to run MATLAB code through Python?

```
import OurMATLAB.ModuleName as mt
context = mt.initialize()
context.exported_function(...)
```

# Why Python 3.4?

It is the most up-to-date version allowed by MCR.
