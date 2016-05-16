var Button = ReactBootstrap.Button;
var Panel = ReactBootstrap.Panel;
var Image = ReactBootstrap.Image;

var DogPanel = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    age: React.PropTypes.string,
    breeds: React.PropTypes.array,
    sex: React.PropTypes.string,
    org_name: React.PropTypes.string,
    prof_url: React.PropTypes.string,
    organization_id: React.PropTypes.number,
    id: React.PropTypes.number
  },


  render() {
    return (
      <a href={'/dogs/' + this.props.id}>
        <Panel className="see-through-panel">
          <div className="row">
            <div className ="col-s-4 col-md-4 col-lg-4">
              <Image src={this.props.prof_url} className="pup-profile" responsive rounded/>
            </div>
            <div className="col-s-8 col-md-8 col-lg-8">
              <p className="pull-right">{this.props.org_name}</p>
              <h2>{this.props.name}</h2>
              <h4>{this.props.age}    |    {this.props.sex}</h4>
            </div>
          </div>
        </Panel>
      </a>
    );
  }
});
