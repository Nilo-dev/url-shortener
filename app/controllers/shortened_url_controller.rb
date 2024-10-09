# frozen_string_literal: true

class ShortenedUrlController < ApplicationController
  def shortened
    shortened_url = shortened_url_service.get_shortened_url(short_url: params[:short_url])
    redirect_to shortened_url, allow_other_host: true
  end

  def shortened_url_service
    @shortened_url_service ||= ShortenedUrlService.new
  end
end
