# 2021-08-28 at 12:29 AM
# I literally just lost EVERYTHING I had written in the past half hour. about this new project. 
# Fuck this
# The only thing I'll retrieve is the set I'm listening to



# One of the points above is that I'll start from what other poeple have done :)
# Clearly, giving them enough credit when credit is due
# Here, I'll use as a base: https://github.com/cutterkom/generativeart

library(generativeart)
library(ambient)
library(dplyr)


set.seed(135493) # My ITAM (MX undergrad universiy I attended) code

# set the paths
IMG_DIR <- "img/"
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "handpicked/"
IMG_PATH <- paste0(IMG_DIR, IMG_SUBDIR)

LOGFILE_DIR <- "logfile/"
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, LOGFILE)

# create the directory structure
generativeart::setup_directories(IMG_DIR, IMG_SUBDIR, IMG_SUBDIR2, LOGFILE_DIR)

# include a specific formula, for example:
my_formula <- list(
    x = quote(runif(1, -1, 1) * x_i^2 - runif(1, -1, 1) * sin(y_i^2)),
    y = quote(runif(1, -1, 1) * y_i^3 - cos(x_i^2))
)

# call the main function to create five images with a polar coordinate system
generativeart::generate_img(formula = my_formula, nr_of_img = 5, polar = TRUE, filetype = "png", color = "black", background_color = "white")
