## Update Pypi package
#### Clone current version from Github
```
git clone PACKAGE-URL
```
#### Update the project locally
#### Test in development
Assuming you’re in the root of your project directory, then run:
```
pip install -e .
```
#### Create source distribution
Minimally, you should create a Source Distribution:
```
python3 setup.py sdist
```
#### Create 'wheel'
You should also create a wheel for your project. 
A wheel is a built package that can be installed without needing to go through the “build” process. 
Installing wheels is substantially faster for the end user than installing from a source distribution.
Universal Wheels are wheels that are pure Python (i.e. contain no compiled extensions) and support Python 2 and 3. 
This is a wheel that can be installed anywhere by pip.
```
python3 setup.py bdist_wheel --universal
```
Only use the `--universal` setting, if:
* Your project runs on Python 2 and 3 with no changes (i.e. it does not require `2to3`).
* Your project does not have any `C` extensions.

#### Install 'twine'
```
pip3 install twine
```
#### Upload distribution to Pypi
```
twine upload dist/*
```
You can see if your package has successfully uploaded by navigating
to the URL https://pypi.org/project/<sampleproject> where `sampleproject` is the name of your project that you uploaded. 
It may take a minute or two for your project to appear on the site.
### Reference
* [Working in “Development Mode”](https://packaging.python.org/tutorials/distributing-packages/#working-in-development-mode)
* [Uploading your Project to PyPI](https://packaging.python.org/tutorials/distributing-packages/#uploading-your-project-to-pypi)
