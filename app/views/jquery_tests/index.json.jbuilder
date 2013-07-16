json.array!(@jquery_tests) do |jquery_test|
  json.extract! jquery_test, 
  json.url jquery_test_url(jquery_test, format: :json)
end
