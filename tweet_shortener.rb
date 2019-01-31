require "pry"

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

def word_substituter(tweet)
  dictionary.each do |word, shorthand|
    # I know that the lab says to use an array but I wanted to practice regex.
    #
    # The \b syntax means "word boundary".  If the tweet contains "be the best",
    # we want to change it to "b the best", not "b the bst".
    #
    # The i at the end means "case insensitive". It applies to the whole regex.
    tweet.gsub!(/\b#{word}\b/i, shorthand)
  end
  return tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[137..-1] = "..."
  end

  return tweet
end
