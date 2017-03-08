#' Send iMessages from R
#' 
#' A short and simple function you can use to send 'iMessages' from R running 'macOS' 10.8.x or later. You must have 'Messages.app' configured for the user account you are running 'R' on.
#' @param recipient Recipient phone number or email registered with 'iMessage'? STRING
#' @param message What message would you like to send? STRING
#' @keywords notification
#' @export
#' @examples
#' send.imessage("5551234567","Hello World!")

send.imessage <- function(recipient, message) {
#opens Messages.app without bringing application window to foreground
openApp <- "open /Applications/Messages.app -g"

#Sends text message to recipient containing message by issuing an applescript command to the shell
sendText <- paste("osascript -e \'tell application \"Messages\" to send \"", message, "\" to buddy \"", recipient, "\" of (1st service whose service type = iMessage)\'", sep="")
system(openApp)
system(sendText)
}
