#' run_django
#'
#' @param condaenv name/path of conda environment with Django app
#' @param cmd command (default: "runserver")
#' @param path_manage.py relative/absolute path to "manage.py" (default:
#' tools/manage.py")
#' @return runs Django command and opens webbrowser (if cmd == "runserver")
#' @export
#' @importFrom fs path_abs
#' @importFrom utils browseURL

run_django <- function(condaenv,
                       cmd = "runserver",
                       path_manage.py = "tools/manage.py") {


  stopifnot(file.exists(path_manage.py))
  path_manage.py <- normalizePath(fs::path_abs(path_manage.py))
  reticulate::use_miniconda(condaenv = condaenv, required = TRUE)
  pyconfig <- reticulate::py_config()

  ## on windows: (try this: https://github.com/rstudio/reticulate/issues/367#issuecomment-432920802)
  if(.Platform$OS.type == "windows") {
    Sys.setenv(PATH = paste(PATH = pyconfig$pythonpath,
                            Sys.getenv()["PATH"], sep=";")
    )
  }

  cmds <- sprintf("conda activate %s && python %s %s",
                  condaenv,
                  path_manage.py,
                  cmd)

  if(cmd == "runserver") utils::browseURL("http://127.0.0.1:8000", browser = NULL)
  shell(cmd = cmds, shell = "cmd.exe")
}
