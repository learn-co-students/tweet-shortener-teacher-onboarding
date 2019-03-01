def dictionary
{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter tweet
  words = tweet.split(" ")
  words.map {|word|
    dictionary.include?(word.downcase) ? dictionary[word.downcase] : word
  }.join(" ")
end

def bulk_tweet_shortener tweets
  tweets.each {|tweet|
    puts word_substituter tweet
  }
end

def selective_tweet_shortener tweet
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator tweet
  shortened_tweet = tweet.length > 140 ? word_substituter(tweet) : tweet
  shortened_tweet.length > 140 ? "#{shortened_tweet[0..136]}..." : shortened_tweet
end
