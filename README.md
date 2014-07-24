# Flipstone Playgrounds

This repository contains a number of minimal Vagrant+Docker environments for playing around with various languages.
To get started with one of the languages, just clone this repo and then:

    ./play <language>
    
A vagrant host will be spun up (using the Docker provider). Once you're done playing, it will be automatically destroyed.

## Files

Any files you put in the `sandbox` directory will be available inside the playground in `/home/vagrant/sandbox`.
Once you're in, just `cd sandbox` to get there!
