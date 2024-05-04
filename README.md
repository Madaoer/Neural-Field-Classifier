# NFC
### [Paper](https://arxiv.org/html/2403.01058v1)

This repository contains the official pytorch implementation of our paper: [Neural Field Classifiers via Target Encoding and Classification Loss]. 

The implementation of NFC Framework is quite simple. In this repo, we provide usage examples of NFC and present some visual results. 

# Abstract

Neural field methods have seen great progress in various long-standing tasks in computer vision and computer graphics, including novel view synthesis and geometry reconstruction. As existing neural field methods try to predict some coordinate-based continuous target values, such as RGB for Neural Radiance Field (NeRF), all of these methods are regression models and are optimized by some regression loss. However, are regression models really better than classification models for neural field methods? In this work, we try to visit this very fundamental but overlooked question for neural fields from a machine learning perspective. We successfully propose a novel Neural Field Classifier (NFC) framework which formulates existing neural field methods as classification tasks rather than regression tasks. The proposed NFC can easily transform arbitrary Neural Field Regressor (NFR) into its classification variant via employing a novel Target Encoding module and optimizing a classification loss. By encoding a continuous regression target into a high-dimensional discrete encoding, we naturally formulate a multi-label classification task. Extensive experiments demonstrate the impressive effectiveness of NFC at the nearly free extra computational costs. Moreover, NFC also shows robustness to sparse inputs, corrupted images, and dynamic scenes.


# Visual Results


## NFR v.s. NFC

<img src='https://madaoer.github.io/assets/NVS_Results.png'>
<center>Qualitative comparisons of NFC and NFR for static scenes. Top Row: NeRF. Bottom Row: DVGO.</center>

## Installation

#### Tested on Ubuntu 20.04 + Pytorch 1.12.1 + cu113

Install environment:
```
pip install -r requirements.txt
```

You also need to install sdfstudio environment, Install pytorch with CUDA and tiny-cuda-nn:
```
pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 -f https://download.pytorch.org/whl/torch_stable.html
pip install git+https://github.com/NVlabs/tiny-cuda-nn/#subdirectory=bindings/torch
cd models/sdfstudio
pip install --upgrade pip setuptools
pip install -e .
# install tab completion
ns-install-cli
```


## Dataset
* [Replica](https://s3.eu-central-1.amazonaws.com/avg-projects/monosdf/data/Replica.tar) 

You can try other dataset as well. NFC Framework is powerful and robust.


## Quick Start
You can prepare the dataset using the following script:
```
sh scripts/preprocess_data/prepare_data.sh
```

You can train the DVGO/NeuS model with NFC Framework using the following script:
```
#for DVGO
sh scripts/DVGO/train_replica.sh
#for NeuS
sh scripts/NeuS/train_replica.sh
```

You can eval the DVGO/NeuS model with NFC Framework using the following script:
```
#for DVGO
sh scripts/DVGO/eval_replica.sh
#for NeuS
sh scripts/NeuS/eval_replica.sh

```

If you want to try other setting in NFC Framework, you can modify the config file in
```
#for DVGO
models/DVGO/configs/replica/scan1/bce_2.0.py
#for NeuS
scripts/NeuS/train_replica.sh
```



## Performance
Here we report our results in Replica Dataset using DVGO. Please refer to our paper for more quantitative results.


<img width="651" alt="results in Replica" src="https://madaoer.github.io/assets/Replica_DVGO.png">



## Citation
If you find our code or paper helps, please consider citing:
```
@inproceedings{yang2024NFC,
  author = {Yang, Xindi and Xie, Zeke and Zhou, Xiong and Liu, Boyu and Liu, Buhua and Liu, Yi and Wang, Haoran and Cai, Yunfeng and Sun, Mingming},
  title = {Neural Field Classifiers via Target Encoding and Classification Loss},
  journal = {The Twelfth International Conference on Learning Representations},
  year = {2024}
}
```

## Acknowledgement
The code base is adapted from [DVGO](https://github.com/sunset1995/DirectVoxGO) and [sdfstudio](https://github.com/autonomousvision/sdfstudio), thanks for their great work!
