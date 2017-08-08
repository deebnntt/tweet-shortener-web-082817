# Write your code here.
def dictionary

  dictionary = {
    "hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "for" => '4',
    "four" => '4',
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)

long_tweet = tweet.split()
short_tweet = []

  long_tweet.each do |word|
    short_tweet << (dictionary[word.downcase] ? dictionary[word.downcase] : word)

  end
    short_tweet.join(' ')
end


def bulk_tweet_shortener(tweets)

  tweets.each do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"

  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length >= 140
    "#{tweet[0..136]}..."
  else
    tweet
  end
end
