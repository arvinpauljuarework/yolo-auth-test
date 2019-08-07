# yolo-auth-test
 
 Screenshots from POSTMAN:
 https://github.com/arvinpauljuarework/yolo-auth-test/tree/master/postman-screenshots
 
 Sample ENV File:
 https://github.com/arvinpauljuarework/yolo-auth-test/blob/master/.env.dev
 
 Dump File:
 https://github.com/arvinpauljuarework/yolo-auth-test/blob/master/yolo_auth.sql
 -- you can create your own schema, just make sure that you update the .env file and you generate the client keys using this command: php artisan passport:install
 
 Existing Endpoints:
 1. /api/login -> Parameters: email, password
 2. /api/register -> Parameters: name, email, password
 3. /api/users -> Parameter: Bearer {{access_token}} -- you can get the access token once you logged in.
