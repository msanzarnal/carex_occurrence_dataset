# --------------------------------------------------------
# Script: download_dataset.R
# Purpose: Download the full version of the Carex occurrence dataset directly from the Zenodo repository
# License: CC-BY 4.0
# --------------------------------------------------------

# Load required package
if (!requireNamespace("utils", quietly = TRUE)) {
  stop("This script requires base R functions (no extra packages needed).")
}

# Define Zenodo direct download URL (you can update this for new versions)
zenodo_url <- "https://zenodo.org/records/14998163/files/ecd_dataset_v1.0.0.csv?download=1"

# Define output path
output_path <- file.path("data", "carex_occurrences_v1.0.0.csv")

# Create data folder if it doesn't exist
if (!dir.exists("data")) dir.create("data")

# Download the file
download.file(url = zenodo_url,
              destfile = output_path,
              mode = "wb")

message("Download complete: ", output_path)

