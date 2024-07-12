from subprocess import Popen
from pywinauto import Desktop

Popen('explorer.exe', shell=True)
dlg = Desktop(backend="uia").Home
dlg.wait('visible')
dlg.print_control_identifiers()