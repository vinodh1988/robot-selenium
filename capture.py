import pyautogui
import time

pyautogui.press("win")
icon=pyautogui.locateOnScreen('photos.png',confidence=0.9)
print(icon)
time.sleep(15)