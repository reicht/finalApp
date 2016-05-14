var Carousel = ReactBootstrap.Carousel;
var Grid = ReactBootstrap.Grid;
var Row = ReactBootstrap.Row;
var Image = ReactBootstrap.Image;
var Col = ReactBootstrap.Col;

var DogPicsSlides = React.createClass({
  propTypes: {
    pics: React.PropTypes.array,
    id: React.PropTypes.number
  },

  render: function() {
    return (
      <Grid>
        <Row>
        {this.props.pics.map(function(result, index) {
          return (
            <Col xs={6} md={4} key={index}>
              <Image src={result} key={index+.1} thumbnail />
            </Col>
          )
        })}
        </Row>
      </Grid>
    );
  }
});
