import pyautogui
import time

pyautogui.press("win")
time.sleep(2)
icon=pyautogui.locateOnScreen('photos.png',confidence=0.9)
print(icon)
x,y=icon.left,icon.top
iconnow=pyautogui.center(icon)
x,y=iconnow
print(x,y)
pyautogui.moveTo(x,y,duration=4)
pyautogui.click()
print(iconnow)
time.sleep(15)