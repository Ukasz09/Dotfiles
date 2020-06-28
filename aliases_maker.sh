#!/bin/bash
HOME=$(eval echo ~${SUDO_USER})
cp "./aliases/.bash_aliases" "${HOME}"