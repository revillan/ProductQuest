import React from 'react';
import { Link, withRouter } from 'react-router';

class AddProductForm extends React.Component {

  constructor() {
    super();
    this.state = {
      name: "",
      description: "",
      product_url: "",
      image_url: "vcbkjwsgq5xztftzqbrz"
    };
  }

  update(field){
    return e => { this.setState({[field]: e.currentTarget.value }); };
  }

  handleSubmit(e){
    e.preventDefault();
    const products = this.state;
    this.props.createProduct({ products });

    if (this.state.name !== "" && this.state.description !== "" &&
        this.state.product_url !== "") {
          this.props.closeModal();
          if (this.props.location.hash.slice(0,7) === "#/users") {
            this.props.location.replace("/");
          } else {
            this.props.requestSearch({query: "e"});
            this.props.requestSearch({query: null});
          }

        }

  }

  upload(e) {
    e.preventDefault();
    let that = this;
    cloudinary.openUploadWidget( {cloud_name: "dbyy6mrbe",
    upload_preset: "bq0m1hib",
    stylesheet: "#cloudinary-overlay { background-color: rgba(255,255,255,0.75);} .widget .header { border-color: #C6340E} .widget .header .sources .source.active {    background-color: #C6340E; } .widget .button { background: #C6340E; border-radius: 3px;} .widget .button:hover, .widget .upload_button_holder:hover .button { background-color: #C6340E; color: #C6340E; background: #fff; border-radius: 3px; } .widget .panel.local .drag_area .drag_content .label {color: #C6340E;} .widget .panel.local .upload_button_holder {border: 1px solid black;} .widget .panel.local .drag_area {background-color: #eee; border: 2px dashed #5e5e5e;} .widget .header .close, .widget .panel.local .drag_area .drag_content .or { color: #5e5e5e;} .widget {border: 1px solid #5e5e5e; box-shadow: none; border-radius: 2px; width: 50%;} div#cloudinary-widget {width: 50%;}"
    },
      function(error, results) {
        if (!error) {
          that.setState({ image_url: results[0].public_id });
        }
    });
  }

  renderErrors(){
    return(
      <ul className="error-list">
        {this.props.errors.map( (error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    let image;
    if (this.state.image_url !== "vcbkjwsgq5xztftzqbrz") {
      image = <img src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/w_100,h_100/${this.state.image_url} alt="thumbnail-preview"`}></img>;
    } else {
      image = {};
    }
    return (
      <div>
        <form className="form" onSubmit={this.handleSubmit}>
          { this.renderErrors() }
          <h4 className="name-description less-space">Submit a new product</h4>
          <div className="form-itself">
            <div className="form-block form-block-left">
              <label className="form-label">Name: <input type="text" className="prod-input add-line" onChange={this.update("name")}/></label>
              <label className="form-label">Description: <input type="text" className="prod-input add-line" onChange={this.update("description")} /></label>
              <label className="form-label">Product URL: <input type="text" className="prod-input add-line" onChange={this.update("product_url")} /></label>
            </div>
            <div className="form-block">
              <div className="thumb"> <label className="thumb-preview">Preview:</label> <img src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/w_100,h_100/${this.state.image_url}`}></img></div>
              <label className="form-label"> <button className="form-label upload-image" onClick={this.upload.bind(this)}>Upload Image</button> </label>
            </div>
          </div>
          <input type="button" className="form-itself btn" value="Submit" onClick={this.handleSubmit.bind(this)}  />
        </form>
      </div>
    );
  }
}

export default AddProductForm;
