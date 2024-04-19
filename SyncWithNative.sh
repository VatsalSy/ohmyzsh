#!/bin/zsh
rsync -av --update --exclude 'custom' --exclude '.*' ../.oh-my-zsh/* $(pwd) #--dry-run

