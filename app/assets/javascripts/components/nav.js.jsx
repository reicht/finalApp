var Navbar = ReactBootstrap.Navbar;
var NavItem = ReactBootstrap.NavItem;
var Nav = ReactBootstrap.Nav;
var NavDropdown = ReactBootstrap.NavDropdown;
var MenuItem = ReactBootstrap.MenuItem;

var Nav_bar = React.createClass({

  render: function () {
    return (
      <Navbar inverse className="nav-custom">
        <Navbar.Header>
          <Navbar.Brand>
            <a href="/">Doogle</a>
          </Navbar.Brand>
          <Navbar.Toggle />
        </Navbar.Header>
        <Navbar.Collapse>
          <Nav>
            <NavItem eventKey={1} href="/organizations">Dogs</NavItem>
            <NavItem eventKey={2} href="/breeds">Breeds</NavItem>
            <NavDropdown eventKey={3} title="Groups" id="basic-nav-dropdown">
              <MenuItem eventKey={3.1} href="/groups/1">Herding</MenuItem>
              <MenuItem eventKey={3.2} href="/groups/2">Hound</MenuItem>
              <MenuItem eventKey={3.3} href="/groups/3">Non Sporting</MenuItem>
              <MenuItem eventKey={3.4} href="/groups/4">Sporting</MenuItem>
              <MenuItem eventKey={3.5} href="/groups/5">Terrier</MenuItem>
              <MenuItem eventKey={3.6} href="/groups/6">Toy</MenuItem>
              <MenuItem eventKey={3.7} href="/groups/7">Working</MenuItem>
            </NavDropdown>
          </Nav>
            <Nav pullRight>
              <NavItem eventKey={1} href="#">Purpose</NavItem>
              <NavItem eventKey={2} href="#">Contact</NavItem>
            </Nav>
        </Navbar.Collapse>
      </Navbar>
      )}
});

// <a className="btn btn-custom">click</a>
// <Button bsStyle="" className="btn-custom">click</Button>
