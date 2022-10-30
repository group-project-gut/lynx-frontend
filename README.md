# lynx-frontend

- [lynx-frontend](#lynx-frontend)
  - [Architecture](#architecture)
  - [Development](#development)
      - [version 0.1:](#version-01)

## Architecture
Created using Godot Engine 3.5.1.
There's textEdit with custom highlighting and colors borrowed from excellent dracula theme.
Manager reacts to button click, sends http request, and sends commands to player object.

## Development

#### version 0.1:

- [X] Add code input
- [X] Add possibility to run code, by sending request to lynx-runner
- [X] Execution of instructions recieved from backend: MOVE LEFT, MOVE RIGHT, MOVE UP, MOVE DOWN
- [X] Agent is drawn and moving according to instructions
