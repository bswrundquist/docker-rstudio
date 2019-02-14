FROM rocker/tidyverse

RUN sudo apt-get -y install libudunits2-dev

RUN R -e "install.packages('brms', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('lme4', dependencies=TRUE, repos='http://cran.rstudio.com/')"
