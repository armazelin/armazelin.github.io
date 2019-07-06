# Makefile -- Github Pages easy push + testing
# Usage: 
# "make push" to push commit
# "make test" to test website using lighthouse and open results in browser
branch = "master"
site = "https://armazelin.github.io/"
reason = "Unknown reason."

help :
	@ echo "Github Pages pusher, quickly slapped together by ARMazelin. No copyrights or warranties whatsoever."
	@ echo "Usage: \nmake push reason='something' to push changes.\n'make test' to test website lighthouse score"

push :
	git add --all
	git commit -m "$reason"
	git push -u origin "$branch"

test :
	lighthouse "$site" --view
