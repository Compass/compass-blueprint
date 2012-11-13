---
layout: page
title: "Print"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_print.scss">View Source</a>

The print stylesheet does sensible things for the printed page.

It's important to note that the grid layout is not applied to the printed page.

You probably want to set non-content sections like headers, footers, asides, and navs to `display: none;` in your printed page.

See the [compass print utilities](http://compass-style.org/reference/compass/utilities/print/) for related functionality.

This file can be imported using: `@import "blueprint/print"`

---

## Compass Imports

1. [Float](http://compass-style.org/reference/compass/utilities/general/float/) – Mixins for cross-browser floats.
2. [Typography](http://compass-style.org/reference/blueprint/typography/)

---

## Mixins

<a href="#mixin-blueprint-print-source" rel="view source">view source</a>
<span id="mixin-blueprint-print"></span>
### [blueprint-print](#mixin-blueprint-print)($nested)
```scss
@mixin blueprint-print($nested: false) {
  @if $nested {
    @include blueprint-print-body;
    @include blueprint-print-defaults; }
  @else {
    body {
      @include blueprint-print-body; }
    @include blueprint-print-defaults; } }
```

Usage examples: As a top-level mixin, apply to any page that includes the stylesheet:

``` sass
+blueprint-print
```

Scoped by a presentational class:

``` sass
body.blueprint
 +blueprint-print(true)
```

Scoped by semantic selectors:

``` sass
body#page-1, body#page-2, body.a-special-page-type
  +blueprint-print(true)
```

---

<a href="#mixin-blueprint-show-link-urls-source" rel="view source">view source</a>
<span id="mixin-blueprint-show-link-urls"></span>
### [blueprint-show-link-urls](#mixin-blueprint-show-link-urls)
```scss
@mixin blueprint-show-link-urls {
  &:after {
    content: " (" attr(href) ")";
    font-size: 90%; } }
```

This style is in blueprint, but it can be annoying and it doesn't work in all browsers. Feel free to mix it into anchors where you want it.

---

<a href="#mixin-blueprint-print-body-source" rel="view source">view source</a>
<span id="mixin-blueprint-print-body"></span>
### [blueprint-print-body](#mixin-blueprint-print-body)
```scss
@mixin blueprint-print-body {
  line-height: 1.5;
  font-family: $blueprint-font-family;
  color: black;
  background: none;
  font-size: 10pt; }
```

---

<a href="#mixin-blueprint-print-defaults-source" rel="view source">view source</a>
<span id="mixin-blueprint-print-defaults"></span>
### [blueprint-print-defaults](#mixin-blueprint-print-defaults)
```scss
@mixin blueprint-print-defaults {
  .container {
    background: none; }
  hr {
    background: #cccccc;
    color: #cccccc;
    width: 100%;
    height: 2px;
    margin: 2em 0;
    padding: 0;
    border: none;
    &.space {
      background: white;
      color: white; } }
  h1, h2, h3, h4, h5, h6 {
    font-family: $blueprint-font-family; }
  code {
    font: {
      size: 0.9em;
      family: $blueprint-fixed-font-family; }; }
  a {
    img {
      border: none; }
    &:link,
    &:visited {
      background: transparent;
      font-weight: 700;
      text-decoration: underline; } }
  p img.top {
    margin-top: 0; }
  blockquote {
    margin: 1.5em;
    padding: 1em;
    font-style: italic;
    font-size: 0.9em; }
  .small {
    font-size: 0.9em; }
  .large {
    font-size: 1.1em; }
  .quiet {
    color: #999999; }
  .hide {
    display: none; } }
```
