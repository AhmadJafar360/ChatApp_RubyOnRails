class HomeController < ApplicationController
  def index
    @message = Message.new # Inisialisasi objek baru dari model Message
    @messages = Message.all # Mengambil semua pesan dari database

  end
end