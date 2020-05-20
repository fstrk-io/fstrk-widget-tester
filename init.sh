#!/bin/bash

# Read .env file and grab all environment variables
set -o allexport
source ./.env
set +o allexport

# Create index.html with all environment variables
sudo cat >index.html <<EOL
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Fstrk.io widget test</title>
    </head>
    <body>
        <script src="https://ftlp.pw/widget/$FSTRK_WIDGET_TOKEN.js"></script>
        <script>
            ChatWidget({
                user: {
                    username: "$FSTRK_USER_NICK_NAME",
                    id: "$FSTRK_USER_ID",
                    firstName: "$FSTRK_USER_FIRST_NAME",
                    lastName: "$FSTRK_USER_LAST_NAME",
                    role: "$FSTRK_USER_ROLE",
                }
            });
        </script>
    </body>
</html>
EOL

# Download favicon.ico via curl
curl https://dashboard.fstrk.io/static/favicon.ico > favicon.ico

# Run dev server at http://0.0.0.0:9000
# When Ctrl/Cmd+C is pressed, than remove index.html && favicon.ico
python3 -m http.server $FSTRK_SERVER_PORT && rm -rf index.html favicon.ico