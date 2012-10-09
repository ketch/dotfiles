set filec
set completion-ignore-case on

export VISUAL="mvim -f"

alias ls="ls -G"

export PETSC_DIR=/Users/ketch/builds/petsc-3.1-p8
export PETSC_ARCH=petclaw64

export PATH=$PETSC_DIR/$PETSC_ARCH/bin:$PATH:/usr/local/sbin:/usr/local/share/python:/usr/local/Cellar/ruby/1.9.3-p194/bin::~/python/nbconvert

export SOFT=/Users/ketch/Research/Software

#For old Clawpack:
export CLAW=/Users/ketch/clawpack/clawpack-4.6.1
#####################################################################

export RIEMANN=/Users/ketch/clawpack/riemann
export PYCLAW=/Users/ketch/clawpack/pyclaw
export VISCLAW=/Users/ketch/clawpack/visclaw
export CLAWUTIL=/Users/ketch/clawpack/clawutil
export PYTHONPATH=$SOFT

alias workstation="ssh ketch@10.68.170.4"
alias numerics="ssh l-ketchedi@10.254.8.113"
alias laptop="ssh ketch@10.253.17.255"
alias amath="ssh -D 9999 ssh.amath.washington.edu"
alias homebase="ssh ketchedi@sshgv.kaust.edu.sa"

alias coverpy=" nosetests --with-coverage --cover-package=pyclaw --cover-html"
alias coverpet="nosetests --with-coverage --cover-package=petclaw --cover-html"

alias pyserver="python -m SimpleHTTPServer"
export FC=gfortran

export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH

export WORKON_HOME=~/virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
source /usr/local/share/python/virtualenvwrapper.sh

peanoclaw_prep() {
    export PEANOCLAW_PYTHONHOME=/usr/local/Cellar/python/2.7.3/Frameworks/Python.framework/Versions/Current
    export PEANOCLAW_SRC=/Users/ketch/Downloads/peanoclaw/src
}

alias matlab="/Applications/MATLAB_R2012a.app/bin/matlab -nodesktop -nosplash"
