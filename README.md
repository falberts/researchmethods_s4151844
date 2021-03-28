How to use:
=====================

To retrieve the results, copy the tweets_ratings.sh file into a personal directory on karora.
To make sure it will run, run the following command:

$ chmod a+x tweets_ratings.sh

To run the script, you can use either of the following commands:

$ ./tweets_ratings.sh
$ nohup ./tweets_ratings.sh

The second command writes the output of the terminal to an extra file called nohup.out, 
which ensures that the command will keep running after the terminal is closed.
This may be useful because the script has to go over a large dataset so it may take some time, 
and may otherwise stop running if the terminal is accidentally closed or if the user loses connection.

The dataset used is the following:

/net/corpora/twitter2/Tweets/ (on karora)

This script only needs the data from september to november (so directories 09, 10 and 11) of 2016 and 2017.

The results are stored in the following file:

tweetszml_1617.txt

For each month, the month and year are displayed. After this, the total number of tweets and the number of tweets containing
the following terms:

@arjenlubach
lubach
#lubach
#zml
zml
#zondagmetlubach
@zondagmetlubach
