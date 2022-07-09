#!/usr/bin/env fish

function __crunch_ears_psub
    switch (commandline -c | tail -c 2)
        case "<"
            commandline -r (commandline -c | sed 's/.$//')\(
            commandline -a " | psub)"
            commandline -f repaint
        case "*"
            commandline -i "("
    end
end
