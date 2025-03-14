class MessagesController < ApplicationController
  def index
    @messages = Message.all # Ambil semua pesan dari database
    @message = Message.new # Buat objek pesan baru untuk form
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path # Redirect ke halaman utama setelah pesan dikirim
    else
      render :index # Tampilkan halaman index jika gagal menyimpan
    end
  end

  private

  def message_params
    params.require(:message).permit(:body) # Hanya izinkan parameter `body`
  end
end
