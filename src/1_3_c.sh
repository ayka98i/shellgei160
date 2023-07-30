#!/bin/bash

echo 中村 山田 田代 上田 | grep -o "[^ ]田"
echo 中村 山田 田代 上田 | sed "s/[^ ][^ 田]//g"
