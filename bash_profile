# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

export EC2_HOME=$HOME/.ec2
export PATH=$PATH:$EC2_HOME/bin:$HOME/wheeeeeee/hadoop-0.20.2+320/src/contrib/cloud/src/py
export EC2_PRIVATE_KEY=pk-DECQNS327PHA27MNDZ37NZTC34S3D6XE.pem
export EC2_CERT=cert-DECQNS327PHA27MNDZ37NZTC34S3D6XE.pem
export JAVA_HOME=/usr/java/latest


function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
function git-track {
  CURRENT_BRANCH=$(parse_git_branch)
  git-config branch.$CURRENT_BRANCH.remote $1
  git-config branch.$CURRENT_BRANCH.merge refs/heads/$CURRENT_BRANCH
}
function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
