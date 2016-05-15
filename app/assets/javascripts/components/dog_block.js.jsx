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
    id: React.PropTypes.number
  },


  render() {
    return (
      <div>
        <Image src={this.props.pic_url}>
          <div className="Row">
            <div className="Col">
              <p>{this.props.name}</p>
              <p>{this.props.age}   |   {this.props.sex}</p>
            </div>
          </div>
        </Image>
      </div>
    );
  }
});
