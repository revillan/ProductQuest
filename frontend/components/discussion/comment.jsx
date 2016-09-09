import React from 'react';
import {Link, withRouter} from 'react-router';

class Comment extends React.Component {

  render() {
    let comment = this.props.comment;
    let author = (comment.author.title === null || comment.author.title === "") ? comment.author.username :
     comment.author.username.concat(" - ", comment.author.title);

    return (
      <div>
      <div className="comment">
        <Link to={`/users/${comment.author.id}`}>
          <img className="thumb-pic" src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/g_face,c_thumb,w_50,h_50/${comment.author.image_url}.jpg`}/>
          <div className="author-line group">{author}</div>
        </Link>
        <br/>
        </div>
      <div className="actual-comment">
        <div className="space">  </div>
        <main className="comment-text">{comment.body}</main>
      </div>
      </div>
    );
  }
}

export default withRouter(Comment);
