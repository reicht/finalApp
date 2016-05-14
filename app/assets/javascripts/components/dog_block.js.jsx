var Button = ReactBootstrap.Button;
var Panel = ReactBootstrap.Panel;
var Image = ReactBootstrap.Image;
var Col = ReactBootstrap.Col;
var Row = ReactBootstrap.Row;

var DogPanel = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    age: React.PropTypes.string,
    sex: React.PropTypes.string,
    pic_url: React.PropTypes.string,
    organization_id: React.PropTypes.number,
    id: React.PropTypes.number
  },


  render() {
    return (
      <div>
        <Image src={this.props.pic_url} >
          <div className="Row">
            <div classNam ="Col md={3}">
            </div>
            <div className="Col md={7}">
              <h2>{this.props.name}</h2>
              <p>{this.props.age}    |    {this.props.sex}</p>
              <p>
              </p>
            </div>
            <div className="Col md={2}">
              <a href = {'/organizations/' + this.props.org_name + '/dogs/' + this.props.id}>
                <div className='btn btn-primary pull-right'>Visit my Page</div>
              </a>
            </div>
          </div>
        </Image>
      </div>
    );
  }
});
