class ContactPhonesController < ApplicationController
  before_action :set_contact_phone, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @contact_phones = ContactPhone.all
    respond_with(@contact_phones)
  end

  def show
    respond_with(@contact_phone)
  end

  def new
    @contact_phone = ContactPhone.new
    respond_with(@contact_phone)
  end

  def edit
  end

  def create
    @contact_phone = ContactPhone.new(contact_phone_params)
    @contact_phone.save
    respond_with(@contact_phone)
  end

  def update
    @contact_phone.update(contact_phone_params)
    respond_with(@contact_phone)
  end

  def destroy
    @contact_phone.destroy
    respond_with(@contact_phone)
  end

  private
    def set_contact_phone
      @contact_phone = ContactPhone.find(params[:id])
    end

    def contact_phone_params
      params.require(:contact_phone).permit(:contact_id, :number_id, :active)
    end
end
