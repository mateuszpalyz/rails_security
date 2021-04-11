# frozen_string_literal: true

class PagesController < ApplicationController
  protect_from_forgery except: :destroy_csrf_off

  def root
  end

  def csrf
    @some_record = SomeRecord.new
    @some_records = SomeRecord.all
  end

  def csrf_send_mail
    PagesMailer.csrf_mail.deliver_later

    redirect_back(fallback_location: root_path)
  end

  def destroy_csrf_off
    destroy
  end

  def destroy_csrf_on
    destroy
  end

  private

  def destroy
    @some_record = SomeRecord.find(params[:id])
    @some_record.destroy

    redirect_to csrf_path
  end
end
