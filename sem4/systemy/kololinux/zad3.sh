#!/bin/bash

ps > procesy.log
./zad3.awk procesy.log
rm procesy.log
