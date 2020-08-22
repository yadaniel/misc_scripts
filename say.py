#!/cygdrive/c/Python37/python

# ./pip install pywin32

import sys
import win32com.client as wincl

print("version => " + sys.version)

speak = wincl.Dispatch("SAPI.SpVoice")
speak.Speak(sys.argv[1])

