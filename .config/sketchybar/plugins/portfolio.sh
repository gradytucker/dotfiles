#!/bin/bash
#!/Users/gradytucker/.pyenv/shims/python
python_output=$(python ~/.config/sketchybar/plugins/csmb.py 2>&1)

sketchybar --set portfolio label="$python_output" 
