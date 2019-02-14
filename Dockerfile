FROM rocker/tidyverse

RUN sudo apt-get install r-cran-rjava
RUN sudo apt-get -y install libudunits2-dev

RUN R -e "install.packages('RcppEigen', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('RcppParallel', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('rJava', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('config', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('RODBC', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('network', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('statnet.common', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('ggrepel', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('SnowballC', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('R.oo', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('R.utils', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('spacyr', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('tidytext', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('msgpack', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('bookdown', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "tinytex::install_tinytex()"

RUN sudo apt-get -y install libudunits2-dev

RUN R -e "install.packages('ggraph', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('rlang', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('DT', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('widyr', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('trelliscopejs', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

RUN R -e "install.packages('brms', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"
RUN R -e "install.packages('lme4', dependencies=TRUE, repos='http://cran.rstudio.com/', quiet=TRUE)"

