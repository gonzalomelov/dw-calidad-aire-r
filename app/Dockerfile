FROM trestletech/plumber
RUN install2.r --error \
    -r 'http://cran.rstudio.com' \
    -r 'http://datacube.wu.ac.at' \
    -r 'http://packages.ropensci.org' \
    -r 'http://www.bioconductor.org/packages/release/bioc' \
    -r 'http://nceas.github.io/drat' \
    openair
EXPOSE 8000
ENTRYPOINT ["R", "-e", "pr <- plumber::plumb(commandArgs()[4]); pr$run(host='0.0.0.0', port=8000)"]
CMD ["/usr/local/lib/R/site-library/plumber/examples/04-mean-sum/plumber.R"]