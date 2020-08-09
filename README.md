# DSMM

* Officical code of paper "Deep Neural Network based Sparse Measurement Matirx for Image Compressed Sensing" ICIP2018
* Download the paper: https://arxiv.org/pdf/1806.07026v1.pdf

## Framework of DSMM

![image](https://github.com/WenxueCui/DSMM/raw/master/images/framework.jpg)

## Requirements

* Windows10
* Matlab R2015b
* MatconvNet 1.0-beta23 (https://www.vlfeat.org/matconvnet/)
* CUDA 8.0

## How to Run

### Training

* Generating the imdb training data for DSMM by running `GenerateData_DSMM.m`
* Train the DSMM, run the code `Demo_Train_DSMM.m`

### Testing

* Obtain the learned measurement matrix from the trained model by running `get_sampling_mat.m`
* Using the learned measurement matrix to replace the traditional gaussian matrix for different iteration based CS methods.


## Experimental Results

* ### Subjective results

![image](https://github.com/WenxueCui/DSMM/raw/master/images/results.jpg)

* ### Objective results

![image](https://github.com/WenxueCui/DSMM/raw/master/images/table.jpg)

## Additional instructions

* For training data, you can choose any dataset by yourself.
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

This code is built based on the repo https://github.com/cszn/DnCNN
