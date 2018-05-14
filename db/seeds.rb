# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faraday'
# require 'faraday_middleware'
#
# conn = Faraday.new(:url => 'http://www.khanacademy.org') do |faraday|
#   faraday.request  :url_encoded             # form-encode POST params
#   faraday.response :logger                  # log requests to STDOUT
#   faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
#   faraday.headers['Content-Type'] = 'application/json'
#   faraday.response :json, :content_type => /\bjson$/
# end
#
# resp = conn.get "/api/v1/topic/cc-third-grade-math"
#
# child_topics = resp.body["children"]
# #array of all subordinate topic slugs based on response
# topic_slugs = child_topics.map do |topic|
#   topic["id"]
# end
#
# meta_tags = child_topics.map do |topic|
#     {
#       "lesson_id": topic["id"],
#       "title": topic["title"],
#       "description": topic["description"]
#     }
# end
#
# lower_level_topics = []
# lesson_connections =[]
# topic_slugs.each do |slug|
#   resp = conn.get "/api/v1/topic/#{slug}"
#   lower_level_topics += resp.body["children"].map do |topic|
#       topic["id"]
#   end
#   connection = resp.body["children"].map do |topic|
#       {
#         "topic_id": topic["id"],
#         "topic_slug": slug
#       }
#   end
#   lesson_connections += connection
# end
# final_lesson_pack = []
# meta_tags.each do |tag|
#   lesson_pack = lesson_connections.map do |lesson|
#     if lesson[:topic_slug] == tag[:lesson_id]
#       final_lesson_pack << {
#         "lesson_id": tag[:lesson_id],
#         "title": tag[:title],
#         "description": tag[:description],
#         "topic_id": lesson[:topic_id]
#       }
#     end
#   end
# end
#
#
# lowest_level_videos = []
# lower_level_topics.each do |slug|
#   resp = conn.get "/api/v1/topic/#{slug}/videos"
#   video_data = resp.body.map do |video|
#     {
#       "youtube_id": video["youtube_id"],
#       "title": video["title"],
#       "description": video["description"],
#       "lesson_slug": slug
#     }
#   end
#   lowest_level_videos += video_data
# end
#
# final_lesson_pack.each do |lesson|
#   Topic.find_or_create_by!({title: lesson[:title], description: lesson[:description], meta_topic: lesson[:lesson_id], sub_topic: lesson[:topic_id]})
# end
#
# lowest_level_videos.each do |video|
#   Video.find_or_create_by!({ youtube_id: video[:youtube_id], title: video[:title], description: video[:description], video_id: video[:lesson_slug] })
# end
#
#
# conn = Faraday.new(:url => 'https://api.nasa.gov') do |faraday|
#   faraday.request  :url_encoded             # form-encode POST params
#   faraday.response :logger                  # log requests to STDOUT
#   faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
#   faraday.headers['Content-Type'] = 'application/json'
#   faraday.response :json, :content_type => /\bjson$/
# end
# resp = conn.get "/planetary/apod?api_key=#{ENV["NASA_KEY_TOKEN"]}"
#
#
# nasa_data = {
#     "copyright": resp.body["copyright"],
#     "date": resp.body["date"],
#     "explanation": resp.body["explanation"],
#     "title": resp.body["title"],
#     "url": resp.body["url"]
# }
#
#
# Nasa.find_or_create_by!({ copyright: nasa_data[:copyright], date: nasa_data[:date], explanation: nasa_data[:explanation], title: nasa_data[:title], url: nasa_data[:url] })

User.create!({ first_name: "Erin", last_name: "McDonald", email: "erin2@gmail.com", admin: "true", password: "123456" })
