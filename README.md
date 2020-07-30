# Phenotypic Data Analysis Workflow and Documentation

- This repository contains the phenotypic data analysis pipeline and complete documentation of analysis workflow as R Markdown generated HTML file.

# Description

```
In this pipeline we provide an overview of how rainfed breeding program at IRRI has leveraged R 
computational power with open-source resource tools like R Markdown, plotly, LaTeX and HTML
to develop a unique data analysis workflow and redesigned it to a reproducible document for
better interpretation, visualization and seamlessly sharing with partners. The generated report 
is the state-of-the-art implementation of analysis workflow and outputs either in text, 
tables or graphics in a unified way as one document. 
```


- The schematic representation of analysis pipeline adopted is given in figure: 

![](www/workflow.png)

#  Source code and Document
- The source codes and ****.Rmd**** file used to generate the report is available here [Sample. Rmd file](https://github.com/whussain2/Analysis-pipeline/blob/gh-pages/Codes/sample.report.Rmd)

- The R Markdown generated html document showing complete analysis pipeline with detailed description can be accessed here [Sample document(https://htmlpreview.github.io/?https://github.com/whussain2/Analysis-pipeline/blob/master/sample.html)
- **All features are not visible in sample document if opened in GitHub preview. To see all features, download html file and open it in any web browser. To download the sample.html file, click the [link](https://github.com/whussain2/Analysis-pipeline/blob/master/sample.html), then click the ***Download button*** and save the file on local drive. After saving open it in any browser.

# How to Use the Source Codes and Run the Pipeline

The steps to use the source codes and run it on local computer is given below:

- Open the GitHub page containing the source codes and files by using clicking the link [https://github.com/whussain2/Analysis-pipeline.git](https://github.com/whussain2/Analysis-pipeline.git).
- This will pop-up the Github repository, click on the **Code** button on right side of page highlighted as green box and scroll and click on **Download Zip**.
- Save and unzip the downloaded repository in local drive.  
- Open the ***.Rmd*** file in R Studio and make sure to change the working directory based on users defined path to the repository. On the following lines (Line no. 85, 135, 634, 815, 998, 1083, 1140, 1269) in ****.Rmd*** file directory needs to be changed.

- Also users must install and upload the following R packages before running the pipeline:

```
library(easypackages)
libraries("dplyr", "reshape2", "readxl", "ggpubr","stringr", "ggplot2", "tidyverse",
          "lme4", "data.table", "readr","plotly", "DT", "pheatmap","asreml", "VennDiagram", 
          "patchwork", "heatmaply", "ggcorrplot", "RColorBrewer", "hrbrthemes", "tm", "proustr")
```

Note: The pipeline requires asreml R package to do the analysis. 

# Manuscript

More details and manuscript is coming soon!


# Contributors
Rainfed Breeding Team IRRI

# Contact
You may contact the author of this code, Waseem Hussain at <waseem.hussain@irri.org>; <waseemhussain907@gmail.com>

