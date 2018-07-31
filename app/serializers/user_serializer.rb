class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :last_login
end
