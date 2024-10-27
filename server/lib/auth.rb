require "jwt"

class Auth
  ALGORITHM = Settings.ALGORITHM

  def self.issue payload
    JWT.encode(
      payload,
      auth_secret,
      ALGORITHM
    )
  end

  def self.decode token
    JWT.decode(
      token,
      auth_secret,
      true,
      algorithm: ALGORITHM
    ).first
  end

  def self.auth_secret
    ENV["SECRET_KEY_BASE"]
  end
end
