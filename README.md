# r-census-tutorial-2015-05

This respository contains installation instructions and slides for my May 2015 tutorial [Analyzing US Census Data with R](https://justanrblog.wordpress.com/2015/05/11/upcoming-tutorial-analyzing-us-census-data-in-r/). Before attempting to run the code in the slides, please do the following:

1. Download the latest version of R. As of this writing, the latest 
version is 3.2.0. You can see your current version by typing `R.Version()` from the R command line.
You can get the latest version of R by googling "download latest version
of R".

1. Run the install.R file in this directory.

1. Get an API Key from the US Census Bureau [here](http://api.census.gov/data/key_signup.html). Then type:
```
library(acs)
api.key.install("<your census api key>")
```
