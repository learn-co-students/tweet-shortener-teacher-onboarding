require 'pry'
def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  words = tweet.split(" ")
  shortened_tweet = []
  words.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    shortened_tweet << word
  end
  return shortened_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    return shortened_tweet[0..136] + "..."
  else
    return shortened_tweet
  end
end
