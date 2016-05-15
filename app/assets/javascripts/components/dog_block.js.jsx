var Button = ReactBootstrap.Button;
var Panel = ReactBootstrap.Panel;
var Image = ReactBootstrap.Image;
var Col = ReactBootstrap.Col;
var Row = ReactBootstrap.Row;

var DogBlock = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    age: React.PropTypes.string,
    sex: React.PropTypes.string,
    pic_url: React.PropTypes.string,
    org_name: React.PropTypes.string,
    id: React.PropTypes.number
  },

  render() {

    var divImage = {
    backgroundImage : "url(" + this.props.pic_url + ")"
    };

    return (
      <div className="col-s-4 col-md-4 col-lg-4 dog-block" style={divImage}>
        <a href={"/dogs/" + this.props.id}>
          <div className="dog-block-spacer">
          </div>
          <div className="dog-block-filter">
            <p>{this.props.name}</p>
            <p>{this.props.age} | {this.props.sex}</p>
          </div>
        </a>
      </div>
    );
  }
});
