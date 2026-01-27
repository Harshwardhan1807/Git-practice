module ValidateModule
  def valid_email?(email)
    email.include?("@") && email.include?(".")
  end

  def valid_password?(password)
    password.length >= 6
  end
end
