#!/usr/bin/env ruby
class Coursera
  include HTTParty
  base_uri "https://api.coursera.org/api/catalog.v1/courses"
  default_params fields: "smallIcon,shortDescription", q: "search"
  format :json

  def self.for(term)
    ## Remember: the 'self' here makes this a CLASS method
    return get("", query: { query: term})["elements"]
    # First 'query' is argument to HTTPary & get, the latter 'query' is the URL parameter.
    ## Note that including HTTParty and declaring class attributes base-uri, default-params,
    #  and format allows HTTParty to inject these values into our get() request automatically.
  end
end
