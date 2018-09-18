project_id = "feelingz-216720"
image_path = "./image_test.jpg"

require "google/cloud/vision"

vision = Google::Cloud::Vision.new project: project_id
image  = vision.image image_path

image.faces.each do |face|
  puts "Joy:      #{face.likelihood.joy?}"
  puts "Anger:    #{face.likelihood.anger?}"
  puts "Sorrow:   #{face.likelihood.sorrow?}"
  puts "Surprise: #{face.likelihood.surprise?}"
end
