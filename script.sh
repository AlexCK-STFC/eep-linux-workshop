
#!/usr/bin/env bash
# Simple terminal animation that cycles through four frames.
# Requires a UTF-8 capable terminal for the overline characters (‾).

set -u -o pipefail

# Hide cursor and ensure it gets restored on exit
printf '\e[?25l'  # hide cursor
trap 'printf "\e[?25h\e[0m\n"; tput cnorm 2>/dev/null || true; clear' EXIT

# Clear screen once and position cursor at home
clear

# Define frames (use a quoted here-doc to avoid escaping backslashes)
read -r -d '' frame1 <<'EOF'
nice job!
  *
  /\
  ()
-(  )-
 /‾‾\
 ‾||‾
 ‾ ‾
EOF

read -r -d '' frame2 <<'EOF'
nice job
   * 
  /\
  ()
\(  )\
 /‾‾\
 ‾|\‾
  ‾ ‾
EOF

read -r -d '' frame3 <<'EOF'
nice job!
  *
  /\
  ()
-(  )-
 /‾‾\
 ‾||‾
  ‾ ‾
EOF

read -r -d '' frame4 <<'EOF'
nice job!  
   *
  /\
  ()
/(  )/
 /‾‾\
 ‾/|‾
 ‾ ‾
EOF

frames=("$frame1" "$frame2" "$frame3" "$frame4")

# Animation settings
delay="${1:-0.20}"   # seconds between frames; override with a command-line arg, e.g., ./anim.sh 0.1

# Optional: keep the cursor hidden using tput if available
tput civis 2>/dev/null || true
# Infinite loop over the frames
while true; do
  for f in "${frames[@]}"; do
    # Move cursor to top-left and print the current frame
    printf "$f"
    sleep "$delay"
    clear
  done
done


