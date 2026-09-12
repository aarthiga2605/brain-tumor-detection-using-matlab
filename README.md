# MRI Based Brain Tumor Detection using K-Means Clustering (MATLAB)
Programming Language: MATLAB

This program uses K-Means clustering to group MRI pixels on the basis of their intensity, selects the brighter one as the suspected tumor region, removes noisy regions and separates it with a tumor boundary on the original MRI.

*How it works?* 

MRI Image -> Converts it into greyscale (if its in colour) -> Converts into double -> Extracts pixel values -> Performs K-means clustering (K = 3) -> Finds the brightest region -> Removes unwanted regions -> Overlays tumor boundary on the original MRI image

*Why K-Means?*

K-means clustering is an unsupervised ML algorithm, which makes it easier to group pixels with similar intensity. It doesn't require labeled data to train, so it can be used for tumor segmentation in MRI images.

*Note: K = 3 because it divides the image into three intensity groups, the background, normal tissue and the tumor region*
