# zabbix-to-gotify-alert

1. Install Gotify from https://gotify.net/docs/install
2. Run Gotify on your server under 80/443 port. For test's & debug you can run on 80 port.
3. Login to Gotify.
4. Change admin password for you own.
5. WebUI: click the apps-tab in the upper right corner when logged in and add an application - it give token to us.
6. Open zabbix web panel as admin.
7. Add new mediatype: Administration - > mediatypes
8. Add new action: Configuration - > Actions
9. Add new mediatype to your zabbix profile and paste token from Gotify app to Send to field
