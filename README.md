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
  To run the project execute:
  <pre>
    <code>middleman</code>
  </pre>
  <p>
    Open your browser and execute: http://localhost:4567/templates/home.html<br>
    <b>Obs: your e-mails templates is located in templates folder.</b>
  </p>
</p>
<p>
  To build the e-mails execute:
  <pre>
    <code>middleman build</code>
  </pre>
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
<p>
  <h2>Variables:</h2>
  <p>
    By default some variables was defined, we are using the Maps to use with mixins that generate helper classes:
  </p>
  <pre>
    <code>
$spaces: ( 5, 10, 20, 30, 40, 60 );

$colors: (
  'black'      : #333333,
  'red'        : #ff4026,
  'white'      : #ffffff,
  'gray'       : #888888,
  'gray-strong': #444444,
  'gray-medium': #ebebeb,
  'gray-light' : #f2f2f2
);

$font-size: (
  '12':(
    'font-size': 12,
    'line-height': 16
  ),
  '14':(
    'font-size': 14,
    'line-height': 18
  ),
  '16':(
    'font-size': 16,
    'line-height': 20
  ),
  '20':(
    'font-size': 20,
    'line-height': 24
  ),
  '28':(
    'font-size': 28,
    'line-height': 32
  )
);
    </code>
  </pre>
</p>
<p>
  <h2>Mixins:</h2>
  <p>
    By default some mixins was defined to help generate helper classes:
  </p>
  <pre>
    <code>
@mixin generate-spaces-classes {
  @each $space-value in $spaces {
    .p-all-#{$space-value} { padding: #{$space-value}px; }
    .pt-#{$space-value} { padding-top: #{$space-value}px; }
    .pb-#{$space-value} { padding-bottom: #{$space-value}px; }
    .pl-#{$space-value} { padding-left: #{$space-value}px; }
    .pr-#{$space-value} { padding-right: #{$space-value}px; }
  }
}

@mixin generate-colors-classes {
  @each $color-name, $color-value in $colors {

    .ct-#{$color-name} {
      color: #{$color-value};
    }

    .bg-#{$color-name} {
      background: #{$color-value};
    }

  }
}

@mixin generate-fs-classes {
  @each $fs-item, $fs-value in $font-size {

    .fs-#{$fs-item} {
      font-size: #{map-get($fs-value, 'font-size')}px;
      line-height: #{map-get($fs-value, 'line-height')}px;
    }

  }
}
    </code>
  </pre>
</p>