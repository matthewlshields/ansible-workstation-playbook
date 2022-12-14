# shellcheck shell=bash

export EMPIRIAL_COG=""
function _update_ps1() {
    PS1="\\n$("$GOPATH"/bin/powerline-go -shell bash -theme ~/.config/powerline-go/personal-theme.json -shell-var EMPIRIAL_COG -error $? -cwd-mode plain -modules shell-var,cwd,kube,gitlite,newline,time)"

    # Uncomment the following line to automatically clear errors after showing
    # them once. This not only clears the error for powerline-go, but also for
    # everything else you run in that shell. Don't enable this if you're not
    # sure this is what you want.

    #set "?"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi