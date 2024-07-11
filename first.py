from subprocess import Popen
from pywinauto import Desktop

Popen('control.exe', shell=True)
dlg = Desktop(backend="uia").ControlPanel
dlg.wait('visible')
dlg.print_control_identifiers()