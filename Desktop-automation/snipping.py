from subprocess import Popen
from pywinauto import Desktop,mouse
import time

Popen('snippingtool.exe', shell=True)
dlg = Desktop(backend="uia").SnippingTool
dlg.wait('visible')
#dlg.print_control_identifiers()
dlg.child_window(title="New screenshot", auto_id="NewCaptureButton", control_type="Button").click()

time.sleep(3)
mouse.press(coords=(100, 100))  # Starting point of the snip
mouse.move(coords=(1000, 600))   # Drag to the endpoint
mouse.release(coords=(1000, 600))
time.sleep(10)
dlg.close()