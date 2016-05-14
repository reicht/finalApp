var Panel = ReactBootstrap.Panel;

var OrgBar = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    site_url: React.PropTypes.string,
    description: React.PropTypes.string,
    id: React.PropTypes.number
  },

  render: function() {
    return (
      <a href={'/organizations/' + this.props.id}>
        <Panel className="see-through-panel">
          <div className="row">
            <div className="col-xs=8  col-md-8 col-lg-8">
              <h1 className="in-line">{this.props.name}</h1> <h3 className="in-line">{this.props.site_url}</h3>
              <p> {this.props.description} </p>
            </div>
          </div>
        </Panel>
      </a>
    );
  }
});
