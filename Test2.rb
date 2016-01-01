class Monk
  def zen=(magic)
    @zen = magic
  end
end


before_filter :chekc_logged_id, :only => [:edit, :update]

old = Monk.new

Monk.class_eval("def initialize; @zen = 42; end")
Monk.class_eval("def zen; @zen; end")

less_old = Monk.new


private
def check_logged_id
  authenticate_or_request_with_http_basic("Ads") do |username, password|
    username=="admin" && password == "t4k3th3r3dpi11"
  end
end



rails generate scaffold client_workout client_name:string trainer:string
duration_mins:integer date_of_workout:date paid_amount:decimal


def update
  @ad=Ad.find(params[:ad])
end


puts "from the old instance: #{old.zen}"
puts "from the new instance: #{less_old.zen}"

old.zen = 43
puts "from the old instance, with @zen set: #{old.zen}"