from setuptools import setup, find_packages

setup(
    name='apiverve_sentimentanalysis',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Sentiment Analysis evaluates the emotional tone of any text string. It returns an AFINN valence score, a comparative word-normalized score, and a five-tier sentiment label from very negative to very positive.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/sentimentanalysis?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
