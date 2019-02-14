FROM rocker/tidyverse

RUN sudo apt-get -y install libudunits2-dev

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
