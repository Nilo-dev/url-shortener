# frozen_string_literal: true

class ShortenedUrlService
  def get_shortened_url(short_url:)
    url = shortened_url_repository.get_url(short_url: short_url)
    shortened_url = url.first.original_url
    increase_counter(url)
    shortened_url
  end

  def increase_counter(url)
    counter = url.first.counter
    shortened_url_repository.update_counter(url, counter.nil? ? 1 : counter + 1)
  end

  def shortened_url_repository
    @shortened_url_repository ||= ShortenedUrlRepository.new
  end
end
