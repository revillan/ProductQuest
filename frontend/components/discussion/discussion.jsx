import React from 'react';
import Comment from './comment';

class Discussion extends React.Component {
  constructor(props) {
    super(props);
    this.state = {body: "", product_id: this.props.productId };
  }

  update(field){
    return e => { this.setState({[field]: e.currentTarget.value }); };
  }

  handleSubmit(e){
    e.preventDefault();
    const discussion = this.state;
    this.props.createComment({ discussion });
    document.getElementById("comment-form").value = "";
    this.setState({body: ""});
  }

  render() {
    let comments = [];

    Object.keys(this.props.comments).forEach(comment =>(
      comments.push( <div key={comment}><Comment comment={ this.props.comments[parseInt(comment)] } /></div>)
    ));

    let form;
    if (this.props.currentUser) {
      form = <form>
        <label>Comment: <textarea id="comment-form" onChange={this.update("body")}></textarea></label>
        <button  onClick={this.handleSubmit.bind(this)}>Comment</button>
      </form>;
    } else {
      form = "You must be logged in to comment";
    }

    // debugger

    return (
      <div>
        DISCUSSION
        {comments}
        {form}
      </div>
    );
  }
}

export default Discussion;
