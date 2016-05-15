var Button = ReactBootstrap.Button;
var Panel = ReactBootstrap.Panel;
var Image = ReactBootstrap.Image;
var Col = ReactBootstrap.Col;

var DogPanel = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    age: React.PropTypes.string,
    breeds: React.PropTypes.array,
    sex: React.PropTypes.string,
    org_name: React.PropTypes.string,
    pic_url: React.PropTypes.string,
    organization_id: React.PropTypes.number,
    id: React.PropTypes.number


  },


  render() {
    return (
      <div>
        <Panel className="see-through-panel">
          <div className="row">
            <div classNam ="Col md={3}">
              <Image src={this.props.pic_url}/>
            </div>
            <div className="Col md={7}">
              <h2>{this.props.name}</h2>
              <p>{this.props.age}    |    {this.props.sex}</p>
              <p>
              </p>
            </div>
            <div className="Col md={2}">
              <a href = {'/organizations/' + this.props.organization_id + '/dogs/' + this.props.id}>
                <div className='btn btn-primary pull-right'>Visit my Page</div>
              </a>
            </div>
          </div>
        </Panel>
      </div>
    );
  }
});
