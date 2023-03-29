# Study of Weibull Distribution against a Normal distribution , finding if the treatment had an impact on rats or the mice datasets.

[CODE](https://github.com/pedrocor12/rats_drug_study/blob/main/rscript.R)


## Report :

### Data Generation:

The sample data for the study was randomly generated using two continuous probability distributions:
* Normal Distribution for the mice datasets, and as followed by the specification I carefully square 
rooted the variance value as rnorm takes the standard deviation as one of the parameters.
* Weibull Distribution for the rats. The parameters which define this distribution are the scale and 
shape which I have set according to the specification.

The following qplot and boxplot have been formulated from the sample data of the mice using the ggplot 
package:

![Screenshot 2023-03-29 at 19 51 13](https://user-images.githubusercontent.com/57505565/228639005-18f5a442-4fd0-4003-b1f2-bd12afbc24ef.png)

### Observations for the mice datasets before and after treatment:

Evaluating the density graph (Figure 1). Notice the change of means which by has roughly changed 1.0 
grams. The initial inference is that the nutritional treatment has affected the mice’s weights, and this can 
be further identified by looking the difference of skewness between the density plots, which tells us how 
much the data differs from the symmetrical bell curve. Additionally, the median presented on the boxplot
helps access on the first inference of the change in the mean weight (Figure 2) and (Figure 1) shows us 
the change in weight as the kurtosis is high, we can also assume that it has affected most of the 
population

![Screenshot 2023-03-29 at 19 50 01](https://user-images.githubusercontent.com/57505565/228638680-039b6779-3d7d-47d7-816f-ae3421854faf.png)

### Observations for the Rats datasets before and after treatment:

The rats’ datasets are prevenient from a Weibull distribution function and by analyzing the plots density 
plots (Figure 3). Notice the left tail, predominantly showing that the distributions generated are left
skewed meaning that the weight is concentrated and not normally distributed. The assumption made here 
is that weight have changed, however, compared to the mice population notice that values are more 
concentrated, and this can be identified by looking into the kurtosis which is not as high as the mice 
distribution. However, because of skewness we infer no normality of the data.


### Appropriateness for hypothesis t-testing

#### Quantitively and Qualitative analysis:

![Screenshot 2023-03-29 at 19 52 42](https://user-images.githubusercontent.com/57505565/228639492-ddb44140-f419-421b-9e1a-f753d597c9a4.png)


QQplot allows to determine whether the data follows a theoretical distribution. Since many statistical 
inference procedures assume we are sampling from a normally distributed population, it is important to 
assess normality. The mice qqplot (figure 5), displays that there exists no significant departure from a 
normal distribution. Signs of systematic deviations are not identified in the qqline which helps support 
this quantitively conclusion for normality. Another test has been performed the Shapiro-Wilk-Test which 
returns two values allowing to test for normality in the distribution and the one of interest for this 
research is the p-value equal to 0.5337. 
The following inequality helps us access the normality of the data when running the Shapiro-Wilk-Test:
(No normality) p-value < 0.05 <= p-value (Normality)
Figure 6 represents the qqplot for the rats’ distributions. Data prevenient from a Weibull distribution is 
expected to have deviations from qqline as it is usually normally distributed. The test which allows to 
further assists to assess normality for this case is the Shapiro Wilk test. Looking into the inequality present 
above and the value return from the Shapiro function of p-value 8.588−5
this value is lower than the 
level of significance which safely helps on the inference of the fact that the data is not normally 
distributed for the rat’s data sets where it is not possible to use parametric tests to prove the hypothesis as 
the data needs to be normal distributed and, in this case, requiring non-parametric test to perform the 
hypothesis test.

### Hypothesis Testing:

#### Mice distributions parametric test analysis

#### T-Tests statistics:
Statistically, an inferential test is useful when comparing the means of groups of data, such as when 
testing hypotheses. It is being used for a paired test, in which the datasets are based on related groups of 
mice before and after treatment. Using a t-test, we can compare a sample mean with a hypothetical value 
or target value. The value of alpha or significance level for this research is 0.05.

#### P-Value:

The analysis of the t-test function data for the mice before and after treatment. Provides a p-value of 
6.943−10 and this value is lower than alpha, which is the significance level. Due to the change in weight 
of the mice, we can reject the null hypothesis, since it can be concluded from this value that the average 
weight after the treatment, resulting in the presented p-value.

![Screenshot 2023-03-29 at 19 56 55](https://user-images.githubusercontent.com/57505565/228640182-c9aa7b7b-f587-435d-a5b0-28f76034b896.png)


Calculating the difference between the sample estimate which is the difference from the means before 
and after divided by the weigh

Concluding the acceptance of H0 as the p-value is less than 0.05, and rejection of the null hypothesis, 
proving that the treatment makes the mice gain weight.

