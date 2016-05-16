var Image = ReactBootstrap.Image;

var DogPicsSlides = React.createClass({
  propTypes: {
    pics: React.PropTypes.array,
    id: React.PropTypes.number
  },

  render: function() {
    return (
      <div className="row">
      {this.props.pics.map(function(result, index) {
        return (
          <div className="col-s-4 col-md-4 col-lg-4 pup-pic  img-responsive" key={index}>
            <Image src={result} key={index+.1} thumbnail />
          </div>
        )
      })}
      </div>
    );
  }
});

<div className="row">
{this.props.pics.map(function(result, index) {
  return (
    <div className="col-s-4 col-md-4 col-lg-4 pup-pic  img-responsive" key={index}>
      <Image src={result} key={index+.1} thumbnail />
    </div>
  )
})}
</div>
