function superuser --description 'Prepend the superuser utility to the current command'
    set --local util sudo
    if command -v doas >/dev/null
        set util doas
    end

    if not string match -q "$util *" (commandline)
        commandline -t "$util "(commandline)
        commandline -C (math (string length "$util ") + (commandline -C))
    end
end
