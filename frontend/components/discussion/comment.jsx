import React from 'react';
import {Link, withRouter, Router, hashHistory} from 'react-router';

class Comment extends React.Component {
  constructor (props) {
    super(props);
    this.state = {comment: this.props.comment};

  }


  handleClick(e) {
    e.preventDefault();
    this.props.closeModal();
    let url = `/users/${this.state.comment.author.id}`;
    this.props.router.replace(url);
    this.props.requestProfile(this.state.comment.author.id);
    this.props.requestProducts({ userId: this.props.location.hash.slice(8,10).replace('?','') });
  }

  render() {
    let comment = this.state.comment;
    let author = (comment.author.title === null ||
       comment.author.title === "") ? comment.author.username :
     comment.author.username.concat(" - ", comment.author.title);

    return (
      <div>
      <div className="comment">
        <Link to={`/users/${comment.author.id}`} onClick={this.handleClick.bind(this)} >
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
