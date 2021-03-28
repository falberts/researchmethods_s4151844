#!/bin/bash

function tweetszml {
    for month in 09 10 11
        do echo $month 2016:
        echo -e "\ntotal:"
        zless /net/corpora/twitter2/Tweets/2016/$month/*.out.gz | \
        /net/corpora/twitter2/tools/tweet2tab -i text | \
        wc -l
        echo -e "\ntweets regarding ZML:"
        zless /net/corpora/twitter2/Tweets/2016/$month/*.out.gz | \
        /net/corpora/twitter2/tools/tweet2tab -i words | \
        egrep -i -w '@arjenlubach|lubach|#lubach|#zml|zml|#zondagmetlubach|@zondagmetlubach' | \
        wc -l
        echo -e '\n'
    done
    for month in 09 10 11
        do echo $month 2017:
        echo -e "\ntotal:"
        zless /net/corpora/twitter2/Tweets/2017/$month/*.out.gz | \
        /net/corpora/twitter2/tools/tweet2tab -i text | \
        wc -l
        echo -e "\ntweets regarding ZML:"
        zless /net/corpora/twitter2/Tweets/2017/$month/*.out.gz | \
        /net/corpora/twitter2/tools/tweet2tab -i words | \
        egrep -i -w '@arjenlubach|lubach|#lubach|#zml|zml|#zondagmetlubach|@zondagmetlubach' | \
        wc -l
        echo -e '\n'
    done
}

tweetszml > tweetszml_1617.txt
