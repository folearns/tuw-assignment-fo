readme.md: guessinggame.sh
	echo "# Submission of \'guessinggame\'" > readme.md
	echo "## For partial fulfillment of the requirements of the Coursera course \"The Unix Workbench\"" >> readme.md
	echo "### by  Francesco Onorati" >> readme.md
	echo "Date of **make** run: " >> readme.md
	date '+%Y-%m-%d %H:%M:%S' >> readme.md
	echo "\\" >> readme.md
	echo "Number of lines in \'guessinggame\': " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
