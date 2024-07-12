import pyautogui
import time

icon=pyautogui.locateOnScreen('code.png',confidence=0.9)
print(icon)
topx,topy=icon.left,icon.top
x,y=pyautogui.center(icon)
print(x,y)
print(topx,topy+10)
pyautogui.moveTo(topx+7,topy+10,duration=3)
pyautogui.click()

pyautogui.keyDown("shift")
for x in range(10):
    pyautogui.press("down")
    time.sleep(0.5)
pyautogui.keyUp("shift")
pyautogui.hotkey('ctrl','c')
time.sleep(4)