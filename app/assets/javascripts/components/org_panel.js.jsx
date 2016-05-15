var Panel = ReactBootstrap.Panel;
var Button = ReactBootstrap.Button;

var OrgPanel = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    email: React.PropTypes.string,
    address: React.PropTypes.string,
    city: React.PropTypes.string,
    state: React.PropTypes.string,
    zip: React.PropTypes.string,
    dog_count: React.PropTypes.number,
    id: React.PropTypes.number
  },

  handleSubmit: function () {
      $.ajax({
        method: "POST",
        url: '/watches',
        data: {
          watch: {
            organization_id: this.props.id
          }
        }
      });
  },

  render: function() {
    return (
      <Panel className="see-through-panel">
        <div className="row">
          <a href={'/organizations/' + this.props.id}>
            <div className="col-s-9 col-md-9 col-lg-9">
              <h1 className="in-line">{this.props.name}</h1> <h3 className="in-line">{this.props.email}</h3>
              <p> Currently has {this.props.dog_count} dogs listed.                         {this.props.address} </p>
              <p> {this.props.city}, {this.props.state}, {this.props.zip} </p>
            </div>
          </a>
            <div className="col-s-3 col-md-3 col-lg-3">
              <div className="col-s-4 col-md-4 col-lg-4">
              </div>
              <div className="col-s-4 col-md-4 col-lg-4">
                <div className="heart-spacer">
                </div>
                <Button onClick={this.handleSubmit}><Glyphicon glyph="heart" /></Button>
              </div>
              <div className="col-s-4 col-md-4 col-lg-4">
              </div>
            </div>
        </div>
      </Panel>
    );
  }
});
