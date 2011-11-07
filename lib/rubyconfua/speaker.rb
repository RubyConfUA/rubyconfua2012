require 'uri'

class RubyConfUA::Speaker
  def initialize(name, &block)
    @speaker_details = { name: name }
    @talk_details    = {}
    self.instance_eval(&block)
  end

  attr_reader :speaker_details, :talk_details

  def bio(text)
    @speaker_details[:bio] = text
  end

  def github(handle)
    if handle.match(/github\.com/)
      uri = URI.parse(handle)
      handle = uri.path.gsub('/', '')
    end
    @speaker_details[:github] = handle
  end

  def twitter(handle)
    if handle.match(/twitter\.com/)
      uri = URI.parse(handle)
      handle = handle.fragment ? uri.fragment.split('/').last : uri.path.gsub('/')
    end
    @speaker_details[:twitter] = handle
  end

  def site(url)
    unless url.match(URI::regexp)
      try_protocol = "http://#{url}"
      url = try_protocol.match(URI::regexp) ? try_protocol : nil
    end
    @speaker_details[:site] = url if url
  end

  def talk(title)
    @talk_details[:title] = title
  end

  def description(text)
    @talk_details[:descr] = text || ''
  end

  def lang(lng)
    return unless %w(en ru ruby).include?(lng.to_s)
    @talk_details[:lang] = lng
  end

  def awesomeness
    900 # TODO
  end
end