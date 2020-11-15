json.array! @palmies do |palmy|
  json.extract! palmy, :description, :author
end
