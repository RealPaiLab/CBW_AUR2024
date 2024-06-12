[![Build Status](https://travis-ci.com/rstudio/bookdown-demo.svg?branch=master)](https://travis-ci.com/rstudio/bookdown-demo)

![](book/images/Bioinfo_Logo.jpeg)

This repo contains course materials for the "Analysis Using R" workshop offered as part of 2024 [Canadian Bioinformatics Workshop](https://bioinformatics.ca/), offered on 12-13 June 2024. 

## Compile the book

In R, go to the root directory of the repo.
Run `bookdown::render_book("book/", output_dir="../docs")`.

## Serving up the bookdown on a website

1. In the github repo, go to Settings > Pages. 
2. Under "Build and Deployment" > Branch > set directory to "main" > "/docs". Click Save.
3. Locally in R, generate your book with the `output_dir` set to `docs/`: bookdown::render_book("book/", output_dir="../docs/").The `docs/` dir now contains all the HTML output from the book. 
4. Add the `docs/` subdir to github. `github add docs/`



Module author and instructor: Shraddha Pai

