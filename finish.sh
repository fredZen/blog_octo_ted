#!/bin/bash
tr -d  '\n' < out/inlined.html | sed -e 's/class="[^"]*" //g; s/\([^;]\): /\1:/g; s/;"/"/g; s/[>] +[<]/></g; s/span[>][<]br[>][<]span/span> <span/g' > out/stripped.html
