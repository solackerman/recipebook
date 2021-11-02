import React, { Component, Fragment } from "react";
import { Route, Switch } from "react-router-dom";
import GroceryItems from './GroceryItems/GroceryItems'
import GroceryItem from './GroceryItem/GroceryItem'
import Recipes from './Recipes/Recipes'
import Recipe from './Recipe/Recipe'

const App = () => {
  return (
    <Switch>
      <Route exact path="/" component={GroceryItems} />
      <Route exact path="/grocery_items" component={GroceryItems} />
      <Route exact path="/grocery_items/:id" component={GroceryItem} />
      <Route exact path="/recipes" component={Recipes} />
      <Route exact path="/recipes/:id" component={Recipe} />
    </Switch>
  );
};

export default App;
