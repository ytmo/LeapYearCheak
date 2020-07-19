/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install wget
        
wget -O cmd-only.cpp https://git.io/lyc-cmd.cpp

clang++ cmd-only.cpp -o lyc

sudo cp lyc /usr/bin/lyc
rm lyc
rm cmd-only.cpp

lyc -v
