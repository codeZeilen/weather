require 'sinatra/base'

module Sinatra 
  module StandardAPI
    
  Rabl.register!
  
  def self.included(base)
    base.extend ClassMethods
  end

  def multiple_models_get(model_class, template)
    protected!

    @collection = params[:ids].split(",").collect do |id|
      return 404 if !model_class.exists?(id.strip)
      model_class.find(id.strip).to_json
    end

    render :rabl, template, :format => "json"
  end

  def single_model_get(model_class, template)
    protected!

    return 404 if !model_class.exists?(params[:id])

    @instance = model_class.find(params[:id])
    render :rabl, template, :format => "json"
  end

  module ClassMethods
    def standard_api(model_class, name, template)
      get "/#{name}/:id" do
        single_model_get(model_class, template)
      end

      get "/#{name}s/:ids" do
        multiple_models_get(model_class, (template.to_s + "_collection").to_sym)
      end
    end
  end

  end

  helpers StandardAPI
end
