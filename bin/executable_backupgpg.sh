#!/usr/bin/env bash

gpg --export --export-options backup --output public.gpg
gpg --export-secret-keys --export-options backup --output private.gpg
gpg --export-ownertrust > trust.gpg
