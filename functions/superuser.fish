function superuser --description 'Prepend the superuser utility to the current command'
    set -l util sudo
    command -v doas >/dev/null; and set util doas

    set -l buffer (commandline -b)
    if not string match -q "$util *" -- $buffer
        commandline -r "$util $buffer"
    end
end
