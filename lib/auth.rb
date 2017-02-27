class Auth
  ALGORITHM = 'HS256'

  def self.encrypt(hash)
    JWT.encode(hash, secret_key, ALGORITHM)
  end

  def self.decode(payload)
    JWT.decode(payload, secret_key, true, { algorithm: ALGORITHM }).first
  end

  def secret_key
    "3640651400b28442c9cbdc90aae19d55c4caecca9205e3bbeeba5d0943855438996787e98f8b3efadba2ecfcd4adab197cbf2f6b08acb3147a864b4f5f46685b"
  end
end
