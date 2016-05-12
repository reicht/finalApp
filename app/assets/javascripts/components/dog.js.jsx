var Cheese = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    id: React.PropTypes.number
  },

  render: function() {
    return (
      <div className = "row">
        <a href = {'/cheeses/' + this.props.id}>
        <div className='btn btn-info'>Cheese: {this.props.name}</div>
        </a>
        <div className='btn btn-primary pull-right' onClick={this.handleSubmit}>Love Dis Cheeze</div>
      </div>
    );
  }
});
