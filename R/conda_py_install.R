
#' conda_py_install
#'
#' @description combined installation of conda/py packages in one call
#' @param env_name name of conda environment
#' @param pkgs named list of conda/py packages to install (default:
#' list(conda = "python", py = NULL))
#' @param ... additional arguments passed to \code{\link{install_miniconda}}
#' @return creates conda environment and returns path
#' @export
#' @importFrom reticulate conda_install use_miniconda py_config py_install
conda_py_install <- function(env_name,
                             pkgs = list(conda = "python",
                                         py = NULL),
                             ...
                          )
{

stopifnot(all(names(pkgs) == c("conda", "py")))
install_miniconda(...)

reticulate::conda_install(envname = env_name,
                          packages = pkgs$conda)

reticulate::use_miniconda(condaenv = env_name, required = TRUE)

pyconfig <- reticulate::py_config()

reticulate::use_python(python = pyconfig$python, required = TRUE)

if(!is.null(pkgs$py)) {
## on windows: (try this: https://github.com/rstudio/reticulate/issues/367#issuecomment-432920802)
if(.Platform$OS.type == "windows") {
  Sys.setenv(PATH = paste(PATH = pyconfig$pythonpath,
                          Sys.getenv()["PATH"], sep=";")
  )
}

reticulate::py_install(envname = env_name,
                       packages = pkgs$py,
                       pip = TRUE,
                       pip_install_ignored = TRUE)
}
pyconfig
}
