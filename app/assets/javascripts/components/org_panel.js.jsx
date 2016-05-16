var Panel = ReactBootstrap.Panel;
var Button = ReactBootstrap.Button;
var Badge = ReactBootstrap.Badge;

var OrgPanel = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    email: React.PropTypes.string,
    address: React.PropTypes.string,
    city: React.PropTypes.string,
    state: React.PropTypes.string,
    zip: React.PropTypes.string,
    dog_count: React.PropTypes.number,
    watched: React.PropTypes.array,
    id: React.PropTypes.number
  },

  handleSubmit: function () {
      $.ajax({
        method: "POST",
        url: '/watches',
        success: function(response) {
          window.location.reload();
        },
        data: {
          watch: {
            organization_id: this.props.id
          }
        }
      });
  },

  handleDelete: function () {
      $.ajax({
        method: "DELETE",
        url: '/watches',
        success: function(response) {
          window.location.reload();
        },
        data: {
          watch: {
            organization_id: this.props.id
          }
        }
      });
  },

  render: function() {

    var buttonChoice;
    if (this.props.watched.includes(this.props.id)) {
      buttonChoice = <Button onClick={this.handleDelete} className="border-button"><Glyphicon className="pink" glyph="heart" /></Button>;
    } else {
      buttonChoice = <Button onClick={this.handleSubmit} className="border-button"><Glyphicon glyph="heart-empty" /></Button>;
    }
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
          </a>
            <div className="col-s-3 col-md-3 col-lg-3">
              <a href={'/organizations/' + this.props.id}>
                <div className="col-s-4 col-md-4 col-lg-4 heart-bar">
                </div>
              </a>
                <div className="col-s-4 col-md-4 col-lg-4">
                  <a href={'/organizations/' + this.props.id}>
                  <div className="heart-spacer">
                  </div>
                  </a>
                  {buttonChoice}
                  <a href={'/organizations/' + this.props.id}>
                  <div className="heart-spacer">
                  </div>
                  </a>
                </div>
                <a href={'/organizations/' + this.props.id}>
                <div className="col-s-4 col-md-4 col-lg-4 heart-bar">
                </div>
                </a>
            </div>
        </div>
      </Panel>
    );
  }
});
