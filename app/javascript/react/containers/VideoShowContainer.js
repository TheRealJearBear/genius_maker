import React, { Component } from 'react';
import VideoComponent from '../components/VideoComponent'


class VideoShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      videos: [],
    }
  }

  componentDidMount() {
    fetch(`/api/v1/videos.json`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({
        videos: body
      });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    let videos = this.state.videos.map(video => {
      return(
        <VideoComponent
          key={video.id}
          youtube_id={video.youtube_id}
          title={video.title}
          description={video.description}
          lesson_slug={video.lesson_slug}
        />
      )
    })

    return(
      <div className="row">
        <div className="small-8 small-centered columns">
          <h3 id="review-title">Videos:</h3>
          {videos}
        </div>
      </div>
    )
  }
}




export default VideoShowContainer;
