from setuptools import setup, find_packages

setup(
    name='apiverve_sentimentanalysis',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Sentiment Analysis is a simple tool for analyzing the sentiment of a text. It returns the sentiment score and the sentiment label.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://sentimentanalysis.apiverve.com?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
