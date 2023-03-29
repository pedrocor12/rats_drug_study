# Study of Weibull Distribution against a Normal distribution

### Comparing if the treatment had an impact of on the weight of the mice 

#### Report :


The sample data for the study was randomly generated using two continuous probability distributions:
* Normal Distribution for the mice datasets, and as followed by the specification I carefully square 
rooted the variance value as rnorm takes the standard deviation as one of the parameters.
* Weibull Distribution for the rats. The parameters which define this distribution are the scale and 
shape which I have set according to the specification.
The following qplot and boxplot have been formulated from the sample data of the mice using the ggplot 
package:

# Image

#### Observations for the mice datasets before and after treatment:

Evaluating the density graph (Figure 1). Notice the change of means which by has roughly changed 1.0 
grams. The initial inference is that the nutritional treatment has affected the mice’s weights, and this can 
be further identified by looking the difference of skewness between the density plots, which tells us how 
much the data differs from the symmetrical bell curve. Additionally, the median presented on the boxplot
helps access on the first inference of the change in the mean weight (Figure 2) and (Figure 1) shows us 
the change in weight as the kurtosis is high, we can also assume that it has affected most of the 
population
