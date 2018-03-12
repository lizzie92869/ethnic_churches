class EthnicChurchesController < ApplicationController
  def index
    @ethnic_churches = EthnicChurch.all
    @languages = Language.list
  end

  def show
    @ethnic_church = EthnicChurch.find(params[:id])
  end

  def new
    @ethnic_church = EthnicChurch.new
  end

  def create
    p params
    ec_params = params[:ethnic_church]
    lang = params[:language]
    country = params[:country]
    religious_background = params[:religious_background]
    address = params[:address]
  end
  
  # <ActionController::Parameters {"utf8"=>"✓", "ethnic_church"=>{"name"=>"Coptic Church of Footown", "phone"=>"1234567890", "website"=>"https://example.com/", "pastors_name"=>"John Doe", "email"=>"foo@example.com"}, "language"=>{"name"=>"Arabic"}, "country"=>{"name"=>"Egypt"}, "religious_background"=>{"persuasion"=>"Coptic"}, "address"=>{"street"=>"1234 Foostreet", "city"=>"Footown", "zip"=>"99999"}, "note"=>{"content"=>"This is a note."}, "commit"=>"Create", "controller"=>"ethnic_churches", "action"=>"create"} permitted: false>
end
