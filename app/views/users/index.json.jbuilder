json.array! @users do |user|
  json.id user.id
  json.name user.name
  json.group user.group
end