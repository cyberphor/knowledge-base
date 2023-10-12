# Virtual Environments
**Tasks**  
1. [Configure a Virtual Environment](#task-01)
2. [Configure Your IDE to Use a Specific Python Interpreter](#task-02)

**Purpose**  
Demonstrate knowledge and skill in configuring a Python virtual environment.

## Task 01
### Configure a Virtual Environment
**Step 1.** Create a virtual environment.
```bash
python -m venv .
```

**Step 2.** Activate the virtual environment.
```bash
# windows
.\Scripts\activate

# linux or mac
source bin/activate
```

**Step 3.** Install your project's specific dependencies.
```bash
python -m pip install -r requirements.txt
```

## Task 02
### Configure Your IDE to Use a Specific Python Interpreter
Configure your Integrated Development Environment (IDE) to use the Python interpreter specific to your virtual environment. The steps below are unique to VS Code.  
**Step 1.** Press `CTRL`, `SHIFT`, `p`.  
**Step 2.** Search for "python: select interpreter".  
**Step 3.** Click "Enter intepreter path."  
**Step 4.** Click "Find."  
**Step 5.** Browse for and select your virtual environment's Python interpreter.
