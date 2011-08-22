# Ridiculous is a simple wrapper for del.icio.us API writing in Ruby.
#
# Please, send your feedback to lupeke [[ at ]] gmail.com
#
# Copyright (c) 2006 Daniel Dias All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. The name of the author may not be used to endorse or promote products
#   derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
# NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


require 'net/https'
require 'rexml/document'

include REXML

#
#The Ridiculous module 
# 
#Usage:
# 
#require "ridiculous"
#include "Ridiculous"
#
#Ridiculous::USERNAME = "YourDeliciousUsername" 
#Ridiculous::PASSWORD = "YourDeliciousPassword"
#...
#
module Ridiculous

  BASE_URI = "https://api.del.icio.us/v1/"
  VERSION  = "0.6"

  #
  # Handle HTTP requests
  #
  def request(resource)
    begin    
      url = URI.parse(BASE_URI + resource)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      http.start do |http|
      	if !url.query.nil?
      	  path = url.path + "?" + url.query
      	else
      	  path = url.path
      	end
      	req = Net::HTTP::Get.new(path)
      	req.basic_auth USERNAME, PASSWORD
      	res = http.request(req)
      	res.body
      end
    rescue Net::HTTPError
      raise "Can't connect to the server, please check the username/password.\nError: #{$!} \n"
    end
  end

  def format_args(misc)
    nil if misc.empty?
    args = []
    misc.each { |k,v| args.push("#{k}=#{v}") }
    (args * "&")
  end

  #
  # Handle Post behaivor
  #
  class Post
    def get(*args)
      nil if args.empty?
     return find("get",args.shift)
    end

    #
    #Returns an Array with user's recent posts, each post is a Hash object.
    #
    #Post.recent(:tag => 'ruby').each { |post| puts "#{post['description']}\n"}
    #...
    #
    def recent(*args)
      return (!args.empty?) ? find("recent", args.shift) : find("recent")
    end

    #
    #Returns an Array with all user's posts, each post is a Hash object
    #
    #Post.all.each { |post| puts "#{post['description']}\n"}
    #...
    #
    def all(*args)
      return (!args.empty?) ? find("recent", args.shift) : find("recent")
    end

    #    
    # Calls the delicious service and parse the returned XML into an Array of hashes
    # This method is private.
    #
    def find(method,args = nil)
      @resource = case method
                    when "get" then "posts/get?"
                    when "recent" then "posts/recent?"
                    when "all" then "posts/all?"
                  end
      @resource << format_args(args) if args != nil
      @request = request(@resource)
      
      begin
        @doc   = (Document.new @request).root
        @posts = Array.new
        if !@doc.nil?
          @doc.elements.each("//post") do |item|
            @posts.push( { "hash"        => item.attributes["hash"],
                           "href"        => item.attributes["href"], 
                           "description" => item.attributes["description"],
                           "tags"        => item.attributes["tag"],
                           "time"        => item.attributes["time"] } )
          end
        end
        @posts
#      rescue RuntimeError, NoMethodError
#        raise "\nPosts#find failed!\nError: #{$!}\n"
      rescue REXML::ParseException
        raise "\nPosts#find XML parsing failed\nError: #{$!}\n"
      end
    end   

    #
    #Add a new post
    #
    #Post.add( :url => "http://laboratorio.us/",
    #          :description => "laboratorio.us",
    #          :extended => "Great tech news...", 
    #          :tags => "ruby python software etc",
    #          :dt => "CCYY-MM-DDThh:mm:ssZ",
    #          :replace => "no" )
    #...
    #
    #:url and :description are required arguments.
    #
    def add(*args)
      nil if args.empty? || (!args[0].has_key?(:url) && !args[0].has_key?(:description))
      @resource = "post/add?" << format_args(args.shift)
      @request = request(URI.escape(@resource))
      @doc   = (Document.new @request).root
      
      if @doc.attributes["code"] == "done"
        true
      else
        nil
      end
    end  

    # Deletes a bookmark
    #
    # Post.delete(:url=>"http://mydomain.com")
    #
    # The :url parameter is required
    def delete(args={})
      nil if args[:url].nil?
      @resource = "posts/delete?" << format_args(args)
      @request = request(URI.escape(@resource))
      @doc = Document.new(@request).root
      @doc.attributes["code"] == "done"
    end

    private :find
    
  end
  
  #
  #Handle Tag behaivor
  #
  class Tag
    #
    #Returns an Array with user's tags, each tag is a Hash object
    #
    #Tag.tags.each { |tag| puts "You have #{tag['count']} posts tagged as #{tag['tag']} \n"}
    #...
    # 
    def tags
      return find
    end

    #
    #Rename an existing tag
    #
    def rename(old,new)
      nil if (old.empty? || new.empty?) 
      @resource = "tags/rename?old=#{old}&new=#{new}"
      @request  = request(URI.escape(@resource))
      @doc      = (Document.new @request).root

      true if @doc.text == "done"
    end  
   
    #
    # Calls the delicious service and parse the returned XML into an Array of hashes
    #
    def find
      @resource = "tags/get"    
      @request = request(@resource)
      
      begin
        @doc   = (Document.new @request).root
        @tags = Array.new
        
        @doc.elements.each("//tag") do |item|
          @tags.push( { "count" => item.attributes["count"],"tag" => item.attributes["tag"] } )
        end       
        @tags
        
      rescue RuntimeError, NoMethodError
        raise "\nTags#find failed!\nError: #{$!}\n"
      end
    end  
    private :find
  
  end
end
