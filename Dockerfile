FROM rocker/tidyverse:4.5.1

WORKDIR /home/rstudio/project

COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

RUN Rscript -e "install.packages('renv')" && \
    Rscript -e "renv::restore(prompt = FALSE)"

COPY . .

CMD ["bash"]