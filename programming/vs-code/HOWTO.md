# VS Code

## Change the Python Interpreter Path
**Step 1.** Press `CTRL`, `SHIFT`, `p`.  
**Step 2.** Search for "python: select interpreter".  
**Step 3.** Click "Enter intepreter path."  
**Step 4.** Click "Find."  
**Step 5.** Browse for and select your virtual environment's Python interpreter.

## Resolve 'LF will be replaced by CRLF' Errors
```
git config core.autocrlf
# true

git config core.autocrlf false
# false
```

## Automatically Set File Line Endings to LF in VS Code
1. File > Preferences Settings
2. Search for "EOL"
3. Set "The default end of line character." to "\n"