#!/usr/bin/env bash
# File: makefile

README.md:
	touch README.md
	echo "# Such a good guessing game" > README.md
	echo "## Data and time 'make' was run:" >> README.md
	date >> README.md
	echo "## Lines of the guessinggame.sh code:" >> README.md
	cat guessinggame.sh | wc -l >> README.md


