import keyboard as key
import pyautogui as py
import time

while True:
    py.click()
    time.sleep()

    if key.is_pressed('x'):
        break
