import React from 'react';

class Comment extends React.Component {

  render() {
    let comment = this.props.comment;
    let author = (comment.author.title === null || comment.author.title === "") ? comment.author.username :
     comment.author.username.concat(" - ", comment.author.title);

    return (
      <div className="comment">
        <img className="thumb-pic" src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/c_thumb,w_50,h_50/${comment.author.image_url}.jpg`}/>
        <div className="author-line">{author}</div>
        {comment.body}
      </div>
    );
  }
}

export default Comment;
