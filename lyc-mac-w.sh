#!/bin/bash
        
wget -O cmd-only.cpp https://git.io/lyc-cmd.cpp

clang++ cmd-only.cpp -o lyc -std=c++17

sudo cp lyc /Applications/lyc
export PATH=$PATH:/Applications
rm lyc
rm cmd-only.cpp

lyc -v
