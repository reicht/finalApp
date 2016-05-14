var Button = ReactBootstrap.Button;
var Panel = ReactBootstrap.Panel;
var Image = ReactBootstrap.Image;

var DogPanel = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    age: React.PropTypes.number,
    breeds: React.PropTypes.array,
    gender: React.PropTypes.string,
    pic_link: React.PropTypes.string,
    org_name: React.PropTypes.string,
    id: React.PropTypes.number


  },


  render() {
    return (
      <div>
        <Panel>
          <div className = "row">
            <div className = "Col md={3}">
              <Image src={this.props.pic_link} />
            </div>
            <div className = "Col md={7}">
              <h2>{this.props.name}</h2>
              <p>{this.props.age}    |    {this.props.gender}</p>
              <p>
              {this.props.pics.map(function(result, index) {
                return (
                  <Col md={4} key={index}>
                    <Image src={result} key={index+.1} thumbnail />
                  </Col>
                )
              })}
              </p>
            </div>
            <div className = "Col md={2}">
              <a href = {'/dogs/' + this.props.id}>
                <div className='btn btn-primary pull-right'>Visit my Page</div>
              </a>
            </div>
          </div>
        </Panel>

      </div>
    );
  }
});
