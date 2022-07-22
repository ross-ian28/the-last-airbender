class SearchController < ApplicationController
   def index
     nation = params[:nation]
     nation["_"] = "+"

     @characters = AvatarFacade.affiliated_memebers(nation)
   end
end
