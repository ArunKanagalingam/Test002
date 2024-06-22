TO="nethajinirmal@gmail.com"
SUBJECT="Test Email"
BODY="This is a test email sent from a shell script on Ubuntu using msmtp."

echo -e "Subject: $SUBJECT\n\n$BODY" | msmtp --debug --from=default -t $TO
