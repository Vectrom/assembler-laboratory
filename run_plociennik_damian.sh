#!/bin/bash

if [ $# == 0 ]
then
    echo 'Musisz podać argument wykonania programu!';
    exit 1;
fi

if [ $1 == 'clone' ]
then
    echo '----- Klonowanie repozytorium -----';
    git clone  https://github.com/Vectrom/assembler-laboratory.git;
elif [ $1 == 'run' ]
then
    echo '----- Uruchamianie środowiska -----';

    if [[ -d  'assembler-laboratory' ]]
    then
        cd 'assembler-laboratory'
    fi

    docker build -t plociennikdamian:1.0 .
    docker run -it plociennikdamian:1.0
elif [ $1 == 'clean' ]
then
    echo '----- Usuwanie repozytorium -----';

    if [[ ! -d  'assembler-laboratory' ]]
    then
        cd ..
    fi

    rm -rf 'assembler-laboratory';
else
    echo 'Nierozpoznany argument! Proszę spróbować ponownie!';
fi

exit 0;

