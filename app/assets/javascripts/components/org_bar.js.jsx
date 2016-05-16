var Panel = ReactBootstrap.Panel;
var Badge = ReactBootstrap.Badge;

var OrgBar = React.createClass({
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
            <h2 className="org-name">{this.props.name}</h2>
            <p> Currently has <Badge>{this.props.dog_count}</Badge> dogs listed.  </p>
            <p> {this.props.address}, {this.props.city}, {this.props.state}, {this.props.zip} </p>
            <span className="smallprint">{this.props.email}</span>
          </div>
            <div className="col-s-3 col-md-3 col-lg-3">
              <div className="col-s-4 col-md-4 col-lg-4">
              </div>
              <div className="col-s-4 col-md-4 col-lg-4">
              </div>
              <div className="col-s-4 col-md-4 col-lg-4">
              </div>
            </div>
          </a>
        </div>
      </Panel>
    );
  }
});
