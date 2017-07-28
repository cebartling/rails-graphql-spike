// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom';
import GraphiQL from 'graphiql';
import fetch from 'isomorphic-fetch';

const graphQLFetcher = (graphQLParams) => {
  return fetch(`${window.location.origin}/graphql`, {
    method: 'post',
    headers: {'Content-Type': 'application/json'},
    body: JSON.stringify(graphQLParams),
  }).then(response => {
    return response.json();
  });
};

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<GraphiQL fetcher={graphQLFetcher} editorTheme={"solarized"}/>, document.body);
});
