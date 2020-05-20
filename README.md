# [Fstrk.io](https://fstrk.io) Widget Tester

Simple tester for Fstrk.io widget.

## How to run?

Clone or Download this repository to your PC/Mac:

```bash
git clone https://github.com/fstrk-io/fstrk-widget-tester.git
```

Go to the folder:

```bash
cd fstrk-widget-tester
```

Rename `.env.example` to `.env` and set your settings:

```ini
# Tester settings

# Port for dev server http://0.0.0.0:<PORT>
FSTRK_DEV_SERVER_PORT=9000

# Get widget UUID from here:
# https://dashboard.fstrk.io/bots/update/config/widget/
FSTRK_WIDGET_UUID=00000000-0000-0000-0000-000000000000

# User settings

# ID
FSTRK_USER_ID=123456

# Nickname
FSTRK_USER_NICKNAME=fstrk_bot

# First & Last names
FSTRK_USER_FIRST_NAME=Bot
FSTRK_USER_LAST_NAME=Fstrk

# Role
FSTRK_USER_ROLE=Operator
```

> Hint: if you want to test a clear user, just change `FSTRK_USER_ID` variable.

And finally, run command:

```bash
make
```
