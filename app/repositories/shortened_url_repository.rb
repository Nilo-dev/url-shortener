# frozen_string_literal: true

class ShortenedUrlRepository
  def get_url(short_url:)
    Url.where(shortened_url: short_url)
  end

  def update_counter(url, counter)
    url.update(counter: counter)
  end
end
