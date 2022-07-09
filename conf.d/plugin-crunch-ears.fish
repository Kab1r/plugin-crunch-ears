#!/usr/bin/env fish

bind "(" __crunch_ears_psub

if test "$fish_key_bindings" = 'fish_vi_key_bindings'
    bind --mode insert "(" __crunch_ears_psub
end

function _plugin-crunch-ears_uninstall --on-event plugin-crunch-ears_uninstall
    bind --erase all "("
    functions --erase _plugin-crunch-ears_uninstall
end
