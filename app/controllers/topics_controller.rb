class TopicsController <ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic_choice = Topic.find(params[:id])
    @topics = Topic.all
    @topic = @topics.where(title: @topic_choice.title)
    @videos = Video.all
    @video_array = []
      @topic.each do |t|
        @videos.each do |v|
          if v.video_id == t.sub_topic
            @video_array << v
          end
        end
      end
  end

end
