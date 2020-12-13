FROM python:3.8

RUN apt-get update\
#&& apt-get install -y libpython2-dev\
#&& apt-get install -y libpython3-dev\
&& apt-get install -y dpkg-dev zlib1g-dev libssl-dev libffi-dev\
&& apt-get install -y curl nano less libcurl4-openssl-dev gawk\
#&& apt-get -y build-dep libcurl4-gnutls-dev\
&& apt-get -y install libcurl4-gnutls-dev\
&& apt-get install -y git\
&& apt-get install -y tabix\
&& apt-get install -y bcftools\
&& apt-get install -y awscli\
&& apt-get install -y less\
&& apt-get install -y vsftpd\
&& apt-get install -y vcftools\
&& apt-get install -y coreutils\
&& apt-get install -y python-pip\
&& pip install synapseclient\
&& pip install aws-mfa\
&& pip install awsmfa\
&& git clone https://github.com/mossnicholas/TWAS.git\
&& mkdir TWAS/bin\
&& wget http://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20190617.zip\
&& unzip plink_linux_x86_64_20190617.zip\
&& mv plink TWAS/bin \
&& rm toy.* \
#&& wget http://s3.amazonaws.com/plink2-assets/plink2_linux_x86_64_20191015.zip\
#&& unzip plink2_linux_x86_64_20191015.zip\
#&& mv plink2 TWAS/bin \
&& apt-get install -y r-base\
&& R -e "install.packages('BiocManager')"\
&& R -e "BiocManager::install('biomaRt')"\
&& R -e "BiocManager::install('devtools')"\
&& R -e "devtools::install_github('th1vairam/CovariateAnalysis@dev')"\
&& R -e "devtools::install_github('brian-bot/githubr')"\
&& R -e "install.packages('synapser', repos = c('http://ran.synapse.org', 'http://cran.fhcrc.org'))"\
&& R -e "devtools::install_github('Sage-Bionetworks/knit2synapse')"\
&& R -e "install.packages('PythonEmbedInR', repos=c('http://cran.fhcrc.org', 'http://ran.synapse.org'))"\
&& R -e "install.packages('doParallel')"\
&& R -e "install.packages('data.table')"\
&& R -e "install.packages('dplyr')"\
&& R -e "install.packages('foreach')"\
&& R -e "install.packages('ggplot2')"\
&& R -e "install.packages('knitr')"\
&& R -e "install.packages('plyr')"\
&& R -e "install.packages('rmarkdown')"\
&& R -e "install.packages('reticulate')"\
&& R -e "install.packages('plotrix', repos = 'http://cran.us.r-project.org')"\
&& R -e "install.packages('reticulate', repos = 'http://cran.us.r-project.org')"\
&& R -e "install.packages('optmatch', repos = 'http://cran.us.r-project.org')" \
&& R -e "BiocManager::install('scater')" \
&& R -e "install.packages('tidyr')"\
&& R -e "install.packages('glmnet', repos = 'http://cran.us.r-project.org')"\
&& R -e "BiocManager::install('sva')"\
&& R -e "BiocManager::install('WGCNA')"\
&& R -e "BiocManager::install('cqn')"\
&& R -e "BiocManager::install('limma')"\
&& R -e "BiocManager::install('edgeR')"\
&& R -e "BiocManager::install('ComplexHeatmap')"\
&& R -e "devtools::install_github('gabraham/plink2R/plink2R', dependencies=TRUE)"
