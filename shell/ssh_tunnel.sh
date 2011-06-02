#!/bin/sh

#ssh
ssh -NfR 2222:localhost:22 vanix@moon

#vnc
ssh -NfR 5900:localhost:5900 vanix@moon

#afp
ssh -NfR 5480:localhost:548 vanix@moon

#gerrit
ssh -NfR 29418:localhost:29418 vanix@moon
ssh -NfR 8080:localhost:8080 vanix@moon
