class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        format.html { redirect_to root_path, notice: 'Thank you for your message. We will contact you soon!' }
      else
        flash.now[:notice] = 'Could not send the message'
      end
    end
  end
end
