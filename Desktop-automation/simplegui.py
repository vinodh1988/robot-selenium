import pyautogui
import time

pyautogui.click(300,300)
screenshot=pyautogui.screenshot()
screenshot.save("x.png")

pyautogui.press("win")

time.sleep(30)