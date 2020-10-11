#!/usr/bin/env python

import os
import re
import glob

# output file name
initfile = 'init.vim'

# ignore paths with thies words
ignore = [
    # ignore URLs with thies TLD
    '.com',
    '.net',
    '.org',
    # ignore autoload directories
    'autoload',
]

# keep thies lines
keep = [
    'call plug#begin("~/.vim/plugged")',
    'call plug#end()',
]

# vim files paths regex
regex = re.compile(r"(\/.*?(?:[\w:]|[*])\.vim)")

def clone(path=None, raw=None):

    # clone form file
    if path:
        with open(path, 'r') as code:
            with open(initfile, 'a') as init:
                init.write(code.read())

    # clone raw code
    if raw:
        with open(initfile, 'a') as init:
            init.write('\n{0}\n'.format(raw))

def paths(subpaths):
    if not any(i for i in ignore if i in subpaths):
        return glob.glob(os.path.realpath('.') + subpaths.replace('.config', 'dotconfig'))
    return list()

def source(vimfile):
    with open(vimfile, 'r') as vf:

        code = vf.readlines()

        if re.findall(r"(\bPlug '.*')", ''.join(code)):
            clone(path=vimfile)
        elif len(regex.findall(''.join(code))) > 0:
            for line in code:
                command = line.strip()
                for subpaths in regex.findall(line):
                    for path in paths(subpaths):
                        source(path)
                if command in keep:
                    keep.remove(command)
                    clone(raw=command)
        else:
            clone(path=vimfile)
    return True

if __name__ == '__main__':

    # create and clean initfile file
    with open(initfile, 'w') as init:
        init.write('')

    # start build from .vimrc file
    if source('.vimrc'):
        print('VIMRC build done.')

