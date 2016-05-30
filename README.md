<h1>Responsive Emails</h1>
<p>
  A middleman project with some functions for help on development of responsive emails.
</p>
<p>
  Stack:
  <ul>
    <li>Ruby</li>
    <li>Middleman</li>
    <li>Sass</li>
  </ul>
</p>
<p>
  <h2>Setup:</h2>
  <pre><code>gem install middleman</code></pre>
  <p>
    After:
  </p>
  <pre><code>bundle install</code></pre>
</p>
<p>
  <h2>Helper Classes:</h2>
  <p>
    By default some classes was be defined, see the _utilities.scss
  </p>
  <pre>
    <code>
.no-bold {
  font-weight: normal;
}

.t-bold {
  font-weight: bold;
}

.block-element {
  display: block;
}

.inline-block-element {
  display: inline-block !important;
}

.w-full {
  width: 100%;
}

.w-default {
  width: auto;
  max-width: none;
}

.button {
  td {
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 30px;
    padding-right: 30px;
    font-size: 14px;

    a {
      text-transform: uppercase;
    }
  }
}

.t-underline {
  text-decoration: underline;
}

.t-uppercase {
  text-transform: uppercase;
}

.t-center {
  text-align: center;
}

.t-link {
  text-decoration: underline;
}

.bb {
  border-bottom: 1px solid map-get($colors, 'gray-medium');
}

.sections-title {
  border-bottom: 1px solid black;
}
    </code>
  </pre>
</p>