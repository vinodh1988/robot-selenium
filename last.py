import pyautogui

pyautogui.alert('This displays some text with an OK button.')
input=pyautogui.prompt(text="Enter your name",title="Name form",default='')
print(input)

