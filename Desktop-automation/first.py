from subprocess import Popen
from pywinauto import Desktop

Popen('control.exe', shell=True)
dlg = Desktop(backend="uia").ControlPanel
dlg.wait('visible')
dlg.print_control_identifiers() 
#system_security=dlg.child_window(title="System and Security", auto_id="name", control_type="Hyperlink")
#system_security.click_input()