# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str)
  new_array = []
  string_array = str.split(" ")
  string_array.each_with_index do |word, i|
    if dictionary.include?(word.downcase)
      new_array.push(dictionary[word.downcase])
    else
      new_array.push(word)
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweets|
    puts word_substituter(tweets)
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
  subbed_tweet = word_substituter(tweet)
  return subbed_tweet[0...140]
end
