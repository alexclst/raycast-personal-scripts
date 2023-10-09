#!/usr/bin/env php

# @raycast.schemaVersion 1
# @raycast.title Unserialize
# @raycast.packageName Personal Scripts
# @raycast.mode pipe
# @raycast.inputType text
# @raycast.icon 🔨

<?php

// unserialize input
print_r(unserialize(trim(fgets(STDIN))));