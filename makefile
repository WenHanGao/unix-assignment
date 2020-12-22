all: README.md

README.md:
	touch README.md
	echo '##Title: Peer-graded Assignment' >> README.md
	echo 1\. make was run on $$(date) >> README.md
	echo 2\. guessinggame.sh contains $$(cat guessinggame.sh | wc -l) lines >> README.md
clean:
	rm README.md
