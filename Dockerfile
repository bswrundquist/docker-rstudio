FROM rocker/tidyverse

RUN sudo apt-get -y install r-cran-rjava
RUN sudo apt-get -y install libudunits2-dev
RUN sudo apt-get install -y libgdal-dev

RUN R -e "install.packages('Matrix', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('RcppEigen', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('RcppParallel', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('config', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('RODBC', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('lattice', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('network', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('ggrepel', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('SnowballC', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('R.oo', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('R.utils', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('spacyr', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('survival', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('cluster', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('boot', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('foreign', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('MASS', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('mgcv', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('rpart', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('nnet', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('Hmisc', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('nlme', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('rgeos', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
#RUN R -e "install.packages('sf', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
#RUN R -e "install.packages('plotly', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN sudo apt-get install -y default-jdk
RUN sudo R CMD javareconf
RUN R -e "install.packages('rJava', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN sudo apt-get install -y libgsl-dev
RUN R -e "install.packages('topicmodels', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('tidytext', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('msgpack', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('feather', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('rstan', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('StanHeaders', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('dygraphs', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('prophet', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('bsts', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('bookdown', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "tinytex::install_tinytex()"

RUN R -e "install.packages('ggraph', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('rlang', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('DT', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('widyr', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('trelliscopejs', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('brms', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('lme4', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

