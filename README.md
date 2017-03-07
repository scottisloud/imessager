# iMessageR

iMessageR is a short and simple function you can use to send iMessages from R running macOS 10.8.x or later. You must have iMessages configured for the user account you are running R on.

## Requirements

* Requires that R is running on a Mac running macOS 10.8.x or newer.
* Requires that the computer user account is configured to send iMessages
* Requires an active internet connection

## Use Cases
The primary use case is if a user would like a text alert upon the completion of a lengthy script, such as a script that runs a statistical analysis that takes a long time to complete.

Most likely you will be configuring this function to send a message to your own phone number or email, rather than a third-party.

## Arguments
The function accepts two arguments:
```
recipient: string
message: string
```
Where recipient is a phone number (10 digits in North America) or an email address of an iMessage user. Even if passing a phone number, this must be passed as a string, e.g.

```
"5551234567"
```

Message is a string of any length that will comprise the body of the message sent to the recipient.

## Installation and Use
To use this function:

1. Download the imessager.R file (or clone this repo)
2. move the R file to the working directory of your choice for your R files
3. use:
```
source("~\working directory")
```
in the R script you'd like to use the function.  
4. Call the function with:
```
send.imessage(recipient: string, message: string)
```

## Example
```
send.imessage("5551234567", "Hello World!")
```
sends "Hello World!" to an iMessage user with the phone number 5551234567
