
import { NavLink } from "./NavLink";
import { NavMenu, NavMenuProps } from "./NavMenu";
import React from "react";


const MenuAppBar = ({ logout }) => (
  <Root>
    <AppBar position="static">
      <Toolbar>
        <Title>cali</Title>
        <NavLink to="/event/types">Event Types</NavLink>
        <NavLink to="/dashboard">DashBoard</NavLink>
        <NavMenu logout={logout} />
      </Toolbar>
    </AppBar>
  </Root>
);

