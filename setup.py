import os

import setuptools

script_folder = os.path.dirname(os.path.realpath(__file__))
os.chdir(script_folder)

with open("requirements.txt") as requirements_file:
    requirements = [
        line.strip()
        for line in requirements_file
        if line.strip() and not line.startswith("#")
    ]

setuptools.setup(
    name="navsim",
    version="2.0.0",
    python_requires=">=3.9",
    packages=setuptools.find_packages(script_folder),
    package_dir={"": "."},
    install_requires=requirements,
)
