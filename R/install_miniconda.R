#' Helper function: is_windows
#'
#' @return TRUE/FALSE
#' @keywords internal
is_windows <- function ()
{
  identical(.Platform$OS.type, "windows")
}

#' miniconda_conda
#'
#' @param path path
#' @return path to Miniconda executable
#' @keywords internal

miniconda_conda <- function (path)
{
  exe <- if (is_windows())
    "condabin/conda.bat"
  else "bin/conda"
  file.path(path, exe)
}

#' miniconda_exists
#' @param path path
#' @return TRUE or FALSE
#' @keywords internal
miniconda_exists <- function(path)
{
  conda <- miniconda_conda(path)
  file.exists(conda)
}

#' install_miniconda
#' @param path The path in which Miniconda will be installed. Note that the
#' installer does not support paths containing spaces. See \link[reticulate]{miniconda_path} for
#' more details on the default path used by reticulate.
#' @param update Boolean; update to the latest version of Miniconda after install?
#' (default: TRUE)
#' @param force Boolean; force re-installation if Miniconda is already installed
#' at the requested path? (default: FALSE)
#' @return installs Miniconda at requested path (or skips in case already
#' installed, where reticulate would otherwise throw an error!)
#' @export
#' @importFrom reticulate install_miniconda miniconda_path
install_miniconda <- function(path = reticulate::miniconda_path(),
                              update = TRUE,
                              force = FALSE)
{

if(miniconda_exists(path)){
  msg <- sprintf("Skipping miniconda installation. Already installed at: %s",
                 path
                 )
  message(msg)
} else {
reticulate::install_miniconda(path = path, update, force = force)
}
}
