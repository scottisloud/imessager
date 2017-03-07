send.imessage <- function(recipient, message) {
###############################
##############
### SEND IMESSAGE
### This function accepts strings for 
  # recipient (phone number or email) and 
  # the desired message. It then sends an 
  # iMessage to the recipent containing the message string.
  # Both arguments must be strings
#############
###############################

#opens Messages.app without bringing application window to foreground
openApp <- "open /Applications/Messages.app -g"
#Sends text message to recipient containing message by issuign an applescript command to the shell
sendText <- paste("osascript -e \'tell application \"Messages\" to send \"", message, "\" to buddy \"", recipient, "\" of (1st service whose service type = iMessage)\'", sep="")
system(openApp)
system(sendText)
}
