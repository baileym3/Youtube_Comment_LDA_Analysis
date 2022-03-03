# Youtube_Comment_Scraping

This project scrapes Youtube comments about COVID-19 misinformation and provides analysis via topic modelling. It accomplishes this by

* Using the Google YoutubeAPI to access and gather Youtube comments through R
* Gathering all comments from a select series of Youtube videos into a single .csv file
* Transforming and cleaning the data to be usable in a bag-of-words model
* Using Latent Dirichlet Allocation (LDA) to provide a topic model
* Generating a report and visualization in JupyterNotebook primarily using the pyLDAvis package in Python

This code was part of a larger project analyzing COVID-19 misinformation in different social media platforms and news articles. 
