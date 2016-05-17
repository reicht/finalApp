var Navbar = ReactBootstrap.Navbar;
var NavItem = ReactBootstrap.NavItem;
var Nav = ReactBootstrap.Nav;
var NavDropdown = ReactBootstrap.NavDropdown;
var MenuItem = ReactBootstrap.MenuItem;

var NavTrail = React.createClass({

  render: function () {
    return (
      <Navbar inverse className="nav-custom nav-bottom" id="footer">
        <Navbar.Header>
          <Navbar.Brand>
            <p>Doogle</p>
          </Navbar.Brand>
        </Navbar.Header>
        <Nav pullRight>
          <NavItem eventKey={1} href="/about">About</NavItem>
          <NavItem eventKey={2} href="/upcoming">Upcoming</NavItem>
          <NavItem eventKey={3} href="/contact">Contact</NavItem>
        </Nav>
      </Navbar>
      )}
});
