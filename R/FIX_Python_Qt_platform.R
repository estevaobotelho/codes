# FIX rsession --
# this application failed to star because it could not find or load
# the Qt platform

library(reticulate)
py_run_string("import os as os")
py_run_string("os.environ['QT_QPA_PLATFORM_PLUGIN_PATH'] = 'C:/ProgramData/Anaconda3/Library/plugins/platforms'")