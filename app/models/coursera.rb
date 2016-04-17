#!/usr/bin/env ruby
class Coursera
  include HTTParty
  base_uri("https://api.coursera.org/api/catalog.v1/courses")
  default_params( fields: "smallIcon,shortDescription", q: "search")
  ## Example resulting URL:
  # api.coursera.org/api/catalog.v1/courses?fields=smallicon,shortDecription&q=search&query=ruby
  format( :json)

  def self.for(term)
    # puts(self.inspect)
    ## Remember: the 'self' here makes this a CLASS method
    # return get("", query: { query: term})["elements"]
    response = get("", query: { query: term})["elements"]
    puts response.class, response.length
    return response
    # First 'query' is argument to HTTPary & get, the latter 'query' is the URL parameter.
    ## Note that including HTTParty and declaring class attributes base-uri, default-params,
    #  and format allows HTTParty to inject these values into our get() request automatically.
  end
end
