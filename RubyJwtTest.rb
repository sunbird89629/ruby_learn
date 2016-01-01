require 'jwt'

exp = Time.new.to_i

exp_payload = {:data => 'data', :exp => exp}


hmac_secret = 'my$ecretK3y'

token = JWT.encode exp_payload, hmac_secret, 'HS256'

begin
  decoded_token = JWT.decode token, hmac_secret, true, {:algorithm => 'HS256'}
rescue JWT::ExpiredSignature
  puts 'something is error'
end