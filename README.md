#  Image Segmentation: Region Growing


# Table of contents
1. [Introduction](#introduction)

2. [Four Neighborhood Connectivity](#4-connectivity)
    - [Gray Scale Images](#4-GS-images)
        - [Coins Image](#4-coins-image)
        - [MedTest Image](#4-medtest-image)
    - [RGB Images](#4-RGB-images)
        - [Color Image](#4-color-image)
        - [Gantry-Crane Image](#4-gantrycrane-image)
        - [Woman Image](#4-woman-image)


3. [Egiht Neighborhood Connectivity](#8-connectivity)
    - [Gray Scale Images](#8-GS-images)
        - [Coins Image](#8-coins-image)
        - [MedTest Image](#8-medtest-image)
    - [RGB Images](#8-RGB-images)
        - [Color Image](#8-color-image)
        - [Gantry-Crane Image](#8-gantrycrane-image)
        - [Woman Image](#8-woman-image)

4. [Conclusion](#conclusion)
---

## **Introduction** <a name="introduction"></a>
The goal of this tutorial is to investigate the effectiveness of the region growing (RG) algorithm for 
image segmentation. We'll apply the RG algorithm to 2D and 3D images.

## **Four Neighborhood Connectivity** <a name="4-connectivity"></a>
First we started with 4-Neighborhood kernel. This Section is divided into two parts; first Gray Scale Images, then Colored (RGB) Images.

### **Gray Scale Images** <a name="4-GS-images"></a>
For Grayscale images, we tested Coins, and Medtest images. Let's see results.

#### **Coins Image** <a name="4-coins-image"></a>
| Result | ![4-neigh-10-thresh](./Captures/coins/4-neigh-10-thresh.jpg) | ![4-neigh-15-thresh](./Captures/coins/4-neigh-15-thresh.jpg) | ![4-neigh-20-thresh](./Captures/coins/4-neigh-20-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 10 | 15 | 20 |
| **Time (seconds)** | 1.52 | 1.57 | 1.71 
| **Comment** | Bad result, because it doesn't separate foreground and background efficienntly | Also still bad result | Good result as it segmented foreground and background |
---

&nbsp;
| Result | ![4-neigh-25-thresh](./Captures/coins/4-neigh-25-thresh.jpg) | ![4-neigh-30-thresh](./Captures/coins/4-neigh-30-thresh.jpg) | ![4-neigh-35-thresh](./Captures/coins/4-neigh-35-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 25 | 30 | 35 |
| **Time (seconds)** | 1.76 | 1.6 | 1.61
| **Comment** | Also, this is a good result | top coins started to disappear (be like the background) | top coins started to disappear (be like the background) |
---
> **Best threshold is 20** as it segmented the coins from background without overfitting. Also good in execution time compared to another results and their execution time.

&nbsp;
#### **MedTest Image** <a name="4-medtest-image"></a>
| Result | ![4-neigh-10-thresh](./Captures/medtest/4-neigh-10-thresh.jpg) | ![4-neigh-15-thresh](./Captures/medtest/4-neigh-15-thresh.jpg) | ![4-neigh-20-thresh](./Captures/medtest/4-neigh-20-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 5 | 15 | 20 |
| **Time (seconds)** | 45.9 | 49.69 | 50.57 
| **Comment** | Bad results, because we didn't see the inner details  | results starts to be good | It's nearly a fine result as we see inner details |
---

&nbsp;
| Result | ![4-neigh-30-thresh](./Captures/medtest/4-neigh-30-thresh.jpg) | ![4-neigh-35-thresh](./Captures/medtest/4-neigh-35-thresh.jpg) | ![4-neigh-40-thresh](./Captures/medtest/4-neigh-40-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 25 | 30 | 35 |
| **Time (seconds)** | 52.38 |  51.68 | 53.31 |
| **Comment** | It's nearly a fine result as we see inner details in addition to it's separated foreground from the background  | foreground starts to take same pixel values of background  | upper part of image disappeared (take same values as background)  |
---
> Overall, **Thresholds 20, 25** got the best results as they segmented foreground and background without vanishing the inner details. Also, they are almost best results compared to execution time.

&nbsp;
### **RGB Images** <a name="4-RGB-images"></a>
For RGB images, we tested color, woman, and gantrycrane images. Let's see results.
#### **Color Image** <a name="4-color-image"></a>
| Result | ![4-neigh-10-thresh](./Captures/color/4-neigh-10-thresh.jpg) | ![4-neigh-15-thresh](./Captures/color/4-neigh-15-thresh.jpg) | ![4-neigh-20-thresh](./Captures/color/4-neigh-20-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 10 | 15 | 20 |
| **Time (seconds)** | 2.13 | 2.15 | 2.128
---
> As we increased the threshold, we got the same result as 3 colors are segmented successfuly and efficiently

&nbsp;

#### **Gantry-Crane Image** <a name="4-gantrycrane-image"></a>
| Result | ![4-neigh-10-thresh](./Captures/gantrycrane/4-neigh-10-thresh.jpg) | ![4-neigh-20-thresh](./Captures/gantrycrane/4-neigh-20-thresh.jpg) | ![4-neigh-30-thresh](./Captures/gantrycrane/4-neigh-30-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 10 | 20 | 30 |
| **Time (seconds)** | 2.9 | 3.2 | 3.31
| **Comment** |  |  |  |
---
&nbsp;

| Result | ![4-neigh-40-thresh](./Captures/gantrycrane/4-neigh-40-thresh.jpg) | ![4-neigh-50-thresh](./Captures/gantrycrane/4-neigh-50-thresh.jpg) | ![4-neigh-80-thresh](./Captures/gantrycrane/4-neigh-80-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 40 | 50 | 80 |
| **Time (seconds)** | 3.34 | 3.39 | 3.31
| **Comment** |  |  | | 
---
&nbsp;

#### **Woman Image** <a name="4-woman-image"></a>
| Result | ![4-neigh-10-thresh](./Captures/woman/4-neigh-10-thresh.jpg) | ![4-neigh-15-thresh](./Captures/woman/4-neigh-15-thresh.jpg) | ![4-neigh-25-thresh](./Captures/woman/4-neigh-25-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 10 | 15 | 25 |
| **Time (seconds)** | 0.52 | 0.56 | 0.56
| **Comment** | couldn't distingush between foreground and background | woman starts to appear but still a bad results | results started to be good |
---
&nbsp;


| Result | ![4-neigh-30-thresh](./Captures/woman/4-neigh-30-thresh.jpg) | ![4-neigh-40-thresh](./Captures/woman/4-neigh-40-thresh.jpg) | ![4-neigh-50-thresh](./Captures/woman/4-neigh-50-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 30 | 40 | 50 |
| **Time (seconds)** | 0.6 | 0.57 | 0.59
| **Comment** | more fine result | It's nearly a fine result as we see inner details | It's nearly a fine result as we see edges of the foreground (woman) | more fine result
---
> **Threshold 50** got the best result as it's fine segmented the woman from the background without overfitting.

&nbsp;


<!--  -->
<!--  -->
## **Eight Neighborhood Connectivity** <a name="8-connectivity"></a>
This Section is divided into two parts; first Gray Scale Images, then Colored (RGB) Images.

### **Gray Scale Images** <a name="8-GS-images"></a>
For Grayscale images, we tested Coins, and Medtest images. Let's see results.

#### **Coins Image** <a name="8-coins-image"></a>
| Result | ![8-neigh-10-thresh](./Captures/coins/8-neigh-10-thresh.jpg) | ![8-neigh-15-thresh](./Captures/coins/8-neigh-15-thresh.jpg) | ![8-neigh-20-thresh](./Captures/coins/8-neigh-20-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 10 | 15 | 20 |
| **Time (seconds)** | 1.66 | 1.51 | 1.52
---

&nbsp;
| Result | ![8-neigh-25-thresh](./Captures/coins/8-neigh-25-thresh.jpg) | ![8-neigh-30-thresh](./Captures/coins/8-neigh-30-thresh.jpg) | ![8-neigh-35-thresh](./Captures/coins/4-neigh-35-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 25 | 30 | 35 |
| **Time (seconds)** | 1.52 | 1.56 | 1.58
---
> **Best threshold is 25** as it segmented the coins from background without overfitting. Also good in execution time compared to another results and their execution time.

&nbsp;
#### **MedTest Image** <a name="8-medtest-image"></a>
| Result | ![8-neigh-10-thresh](./Captures/medtest/8-neigh-10-thresh.jpg) | ![8-neigh-15-thresh](./Captures/medtest/8-neigh-15-thresh.jpg) | ![8-neigh-20-thresh](./Captures/medtest/8-neigh-20-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 5 | 15 | 20 |
| **Time (seconds)** | 46.99 | 50.85 | 51.30 
---

&nbsp;
| Result | ![8-neigh-30-thresh](./Captures/medtest/8-neigh-30-thresh.jpg) | ![8-neigh-35-thresh](./Captures/medtest/8-neigh-35-thresh.jpg) | ![8-neigh-40-thresh](./Captures/medtest/8-neigh-40-thresh.jpg) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 30 | 35 | 40 |
| **Time (seconds)** | 53.99 |  53.00 | 53.18 |
---
> **Threshold 20** got the best results as they segmented foreground and background without vanishing the inner details. Also, they are almost best results compared to execution time.

&nbsp;

### **RGB Images** <a name="8-RGB-images"></a>
For RGB images, we tested color, woman, and gantrycrane images. Let's see results.

#### **Color Image** <a name="8-color-image"></a>
As we can see there is no much difference when we increased the threshold so it won't make anysense to increase threshhold 
&nbsp;
| Result | ![8-neigh-5-thresh](./Captures/color/R5.PNG) | ![8-neigh-35-thresh](./Captures/color/r25.PNG) | ![8-neigh-40-thresh](./Captures/color/r40.PNG) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 5 | 25 | 40 |
---
>So we can say threshold = 5 is great enough

#### **Gantry-Crane Image** <a name="8-gantrycrane-image"></a>
This is a sub sub paragraph 2, formatted in heading 3 style 
&nbsp;
| Result | ![8-neigh-5-thresh](./Captures/gantrycrane/r5.PNG) | ![8-neigh-10-thresh](./Captures/gantrycrane/r10.PNG) | ![8-neigh-25-thresh](./Captures/gantrycrane/r25.PNG) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 5 | 10 | 25 |

&nbsp;
| Result | ![8-neigh-45-thresh](./Captures/gantrycrane/r5.PNG) | ![8-neigh-62-thresh](./Captures/gantrycrane/r10.PNG) |  |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 45 | 62 |

---
>**Threshold 25** got the best results as the bigger threshold started overfitting and removing some details in the bridge.

#### **Woman Image** <a name="8-woman-image"></a>
This is a sub sub paragraph 3, formatted in heading 3 style

&nbsp;
| Result | ![8-neigh-30-thresh](./Captures/woman/r10.PNG) | ![8-neigh-35-thresh](./Captures/woman/r20.PNG) | ![8-neigh-40-thresh](./Captures/woman/r30.PNG) |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 10 | 20 | 30 |

&nbsp;
| Result | ![8-neigh-30-thresh](./Captures/woman/r40.PNG) | ![8-neigh-30-thresh](./Captures/woman/r45.PNG) |  |
|----------|:-------------:|:-------------:| :-------------:|
| **Threshold** | 40 | 45 |
---
> Overall, **Threshold 40** got the best results since smaller threshold couldn't complelty segement the background, and the  higher thresholds overfitted some details from the woman's body like her hands

&nbsp;
## **Conclusion** <a name="conclusion"></a>
- As we discussed, each image has its own best threshold based on its details and its background, foreground pixel values.
- We tested the Segmentation Algorithm with two different Algorithms 8-Neighborhood Kernel, and 4-Neighborhood Kernel and 8-Neighborhood was faster than 4-neighborhood for all images