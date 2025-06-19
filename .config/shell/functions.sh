grim() {
    local filename="Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"
    command grim ~/Pictures/"$filename" && \
    dbus-send --session --dest=org.freedesktop.Notifications --type=method_call \
    /org/freedesktop/Notifications org.freedesktop.Notifications.Notify \
    uint32:0 string:"grim" string:"Screenshot saved." string:"$filename" \
    array:string:'' dict:string:string:''
}
