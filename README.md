# DSMM

* Officical code of paper "DEEP NEURAL NETWORK BASED SPARSE MEASUREMENT MATRIX FOR IMAGE COMPRESSED SENSING" ICIP2018
* Download the paper: https://arxiv.org/pdf/1806.07026v1.pdf

## Framework of LapCSNet

![image](https://github.com/WenxueCui/DSMM/raw/master/images/framework.jpg)

## Requirements

* Windows10
* Matlab R2015b
* MatconvNet 1.0-beta23 (https://www.vlfeat.org/matconvnet/)
* CUDA 8.0

## How to Run

### Training

* Copying the function in `+dagnn` folder to your `Matconvnet` location `<MatconvNet>\matlab\+dagnn`
* Preparing the training data. (T91 and BSDS200 are included in our repo)
* Train the LapCSNet, run the code `train_LapCSN(0.1, 2, 0);`

```
The first param is CS subrate
The second param is the number of conv layers in each pyramid level
The third param is gpu setting. (0 is CPU, 1 is GPU)
```

### Testing

* Preparing the testing data. (Set5 and Set14 are included in our repo)
* Test the LapCSNet, run the code `test_LapCSN_main(100, 200)`

```
The first param is start epoch for testing model
The second param is end epoch for testing model 
```


## Experimental Results

* ### Subjective results

![image](https://github.com/WenxueCui/DSMM/raw/master/images/results.jpg)

* ### Objective results

![image](https://github.com/WenxueCui/DSMM/raw/master/images/table.jpg)

## Additional instructions

* For training data, you can choose any dataset by yourself.
* When subrate<=0.25, the laplacian structure can be used.
* If you have any problem, please email wenxuecui@stu.hit.edu.cn

## Citation

* If you find the code is useful in your research, please cite:

```
@article{Cui2018An,
  title={Deep Neural Network based Sparse Measurement Matirx for Image Compressed Sensing},
  journal={IEEE International Conference on Image Processing (ICIP)},
  author={Cui, Wenxue, Jiang, Feng, Gao, Xinwei, Tao, Wen and Zhao, Debin},
  year={2018},
}
```

## Acknowledgments

This code is built based on the repo https://github.com/phoenix104104/LapSRN
