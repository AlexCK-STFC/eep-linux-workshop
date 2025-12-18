
#!/usr/bin/env bash
# Christmassy terminal animation for EEP Linux Workshop
# Requires a UTF-8 capable terminal for the overline characters (‾).

set -u -o pipefail

# Hide cursor and ensure it gets restored on exit
printf '\e[?25l'  # hide cursor
trap 'printf "\e[?25h\e[0m\n"; tput cnorm 2>/dev/null || true; clear' EXIT

clear

# --- FRAMES ---
read -r -d '' frame1 <<'EOF'
nice job!
  *
  /\
  ()
-(  )-
 /‾‾\     🏀
 ‾||‾ ■
 ‾ ‾
EOF

read -r -d '' frame2 <<'EOF'
nice job
   * 
  /\
  ()
\(  )\    🏀
 /‾‾\
 ‾|\‾ ■
  ‾ ‾
EOF

read -r -d '' frame3 <<'EOF'
nice job!
  *
  /\
  ()
-(  )-
 /‾‾\     🏀
 ‾||‾ ■   
  ‾ ‾
EOF

read -r -d '' frame4 <<'EOF'
nice job!  
   *
  /\   
  ()   
/(  )/     
 /‾‾\ 
 ‾/|‾ ■   🏀
 ‾ ‾
EOF

frames=("$frame1" "$frame2" "$frame3" "$frame4")

# Animation settings
delay="${1:-0.20}"   # seconds between frames

# Keep the cursor hidden using tput if available
tput civis 2>/dev/null || true

# Infinite loop over the frames, so they gotta escape with ctrl + c
while true; do
  for f in "${frames[@]}"; do
    printf "$f"
    sleep "$delay"
    clear
  done
done


