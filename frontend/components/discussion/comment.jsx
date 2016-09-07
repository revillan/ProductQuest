import React from 'react';

class Comment extends React.Component {

  render() {
    let comment = this.props.comment;
    let author = comment.author;

    return (
      <div>
        <img className="thumb-pic" src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/c_thumb,w_50,h_50/${author.image_url}.jpg`}/>
        {author.username}
        {comment.body}
      </div>
    );
  }
}

export default Comment;
