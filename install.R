update.packages()
    
packages = c("devtools", "choroplethr", "choroplethrMaps")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) 
{
  install.packages(setdiff(packages, rownames(installed.packages())))  
}

# choroplethr_zip is on github, not cran
if (!("choroplethrZip" %in% rownames(installed.packages())) ||
    packageVersion("choroplethrZip" != "1.3.0")) 
{
  library(devtools)
  install_github('arilamstein/choroplethrZip@v1.3.0')        
}

# lastly, make sure people are using a current version of R
r = R.Version()
if (r$major < "3" ||
    (r$major == "3" && r$minor < "2.0"))
{
  print(paste0(
    "The current version of R is 3.2.0, but you are using version ",
    r$major, ".", r$minor,
    ". Please google 'download R' and download the current version of R."
    ))
}

# now test
library(choroplethr)
data(df_pop_state)
print(state_choropleth(df_pop_state))

# state_choropleth_acs("B01003", endyear=2012, span=5)
