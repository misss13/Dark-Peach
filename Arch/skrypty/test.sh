#!/bin/bash

secret-tool lookup keepass Hasła.kdbx | keepassxc -platform xcb --pw-stdin /home/balalaika/Sync/Hasła.kdbx
