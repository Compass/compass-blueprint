---
layout: page
title: "Rtl"
date: 2012-11-01 22:01
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/reset/_rtl.scss">View Source</a>

For grids with use in right-to-left languages.

This file can be imported using: `@import "blueprint/rtl"`

---

## Compass Imports

1. [Float](http://compass-style.org/reference/compass/utilities/general/float/) – Mixins for cross-browser floats.
2. [Grid](http://compass-style.org/reference/blueprint/grid/)

---

## Configurable Variables <a class="lsf-icon" title="help" href="/help/tutorials/configurable-variables/"></a>

<span id="cont-blueprint-grid-columns"></span>
[$blueprint-grid-columns](#cont-blueprint-grid-columns) `24`

Main layout grid, override these constants to build your grid and container sizes.

<span id="cont-blueprint-grid-width"></span>
[$blueprint-grid-width](#cont-blueprint-grid-width) `30px`

<span id="cont-blueprint-grid-margin"></span>
[$blueprint-grid-margin](#cont-blueprint-grid-margin) `10px`

---

## Constants

<span id="cont-blueprint-grid-outer-width"></span>
[$blueprint-grid-outer-width](#cont-blueprint-grid-outer-width) `$blueprint-grid-width + $blueprint-grid-margin`

<span id="cont-blueprint-container-size"></span>
[$blueprint-container-size](#cont-blueprint-container-size) `$blueprint-grid-outer-width * $blueprint-grid-columns - $blueprint-grid-margin`

---

## Mixins

<a href="#mixin-container-source" rel="view source">view source</a>
<span id="mixin-container"></span>
### [container](#mixin-container)
```scss
@mixin container {
  width: $blueprint-container-size;
  margin: 0 auto;
  direction: rtl;
  @include clearfix; }
```

Columns Note: If you use this mixin without the class and want to support ie6 you must set text-align left on your container element in an IE stylesheet.

---

<a href="#mixin-last-source" rel="view source">view source</a>
<span id="mixin-last"></span>
### [last](#mixin-last)
```scss
@mixin last {
  margin-left: 0; }
```
The last column in a row needs this mixin or it will end up on the next row. TODO add this to span mixin when we have optional arguments

---

<a href="#mixin-column-base-source" rel="view source">view source</a>
<span id="mixin-column-base"></span>
### [column-base](#mixin-column-base)($last)
```scss
@mixin column-base($last: false) {
  @include float-right;
  @if $last {
    @include last; }
  @else {
    margin-left: $blueprint-grid-margin; }
  text-align: right;
  * html & {
    overflow-x: hidden; } }
```

---

<a href="#mixin-append-source" rel="view source">view source</a>
<span id="mixin-append"></span>
### [append](#mixin-append)($n)
```scss
@mixin append($n) {
  padding-left: $blueprint-grid-outer-width * $n; }
```

Mixin to a column to append `n` empty cols.

---

<a href="#mixin-prepend-source" rel="view source">view source</a>
<span id="mixin-prepend"></span>
### [prepend](#mixin-prepend)($n)
```scss
@mixin prepend($n) {
  padding-right: $blueprint-grid-outer-width * $n; }
```

Mixin to a column to prepend `n` empty cols.

---

<a href="#mixin-pull-source" rel="view source">view source</a>
<span id="mixin-pull"></span>
### [pull](#mixin-pull)($n, $last)
```scss
@mixin pull($n, $last: false) {
  position: relative;
  @if $last {
    margin-right: -$blueprint-grid-outer-width * $n + $blueprint-grid-margin; }
  @else {
    margin-right: -$blueprint-grid-outer-width * $n; } }
```

Mixin to a column to move it `n` columns to the left

---

<a href="#mixin-push-source" rel="view source">view source</a>
<span id="mixin-push"></span>
### [push](#mixin-push)($n)
```scss
@mixin push($n) {
  @include float-right;
  position: relative;
  margin: {
    top: 0;
    left: -$blueprint-grid-outer-width * $n;
    bottom: 1.5em;
    right: $blueprint-grid-outer-width * $n; }; }
```

Mixin to a column to push it `n` columns to the right

---

<a href="#mixin-border-source" rel="view source">view source</a>
<span id="mixin-border"></span>
### [border](#mixin-border)
```scss
@mixin border {
  padding-left: $blueprint-grid-margin / 2 - 1;
  margin-left: $blueprint-grid-margin / 2;
  border-left: 1px solid #eeeeee; }
```

Border on left hand side of a column.

---

<a href="#mixin-colborder-source" rel="view source">view source</a>
<span id="mixin-colborder"></span>
### [colborder](#mixin-colborder)
```scss
@mixin colborder {
  padding-left: ($blueprint-grid-width - 2 * $blueprint-grid-margin - 1) / 2;
  margin-left: ($blueprint-grid-width - 2 * $blueprint-grid-margin) / 2;
  border-left: 1px solid #eeeeee; }
```

Border with more whitespace, spans one column.

---

<a href="#mixin-rtl-typography-source" rel="view source">view source</a>
<span id="mixin-rtl-typography"></span>
### [rtl-typography](#mixin-rtl-typography)($nested)
```scss
@mixin rtl-typography($nested: false) {
  @if $nested {
    html & {
      font-family: Arial, sans-serif; }
    @include rtl-typography-defaults; }
  @else {
    html body {
      font-family: Arial, sans-serif; }
    body {
      @include rtl-typography-defaults; } } }
```

Usage examples: As a top-level mixin, apply to any page that includes the stylesheet:

``` sass
+rtl-typography
```

Scoped by a presentational class:

``` sass
body.blueprint
 +rtl-typography(true)
```

Scoped by semantic selectors:

``` sass
body#page-1, body#page-2, body.a-special-page-type
  +rtl-typography(true)
```

---

<a href="#mixin-rtl-typography-defaults-source" rel="view source">view source</a>
<span id="mixin-rtl-typography-defaults"></span>
### [rtl-typography-defaults](#mixin-rtl-typography-defaults)
```scss
@mixin rtl-typography-defaults {
  h1, h2, h3, h4, h5, h6 {
    font-family: Arial, sans-serif; }
  pre, code, tt {
    font-family: monospace; }
  .right {
    @include float-left;
    margin: 1.5em 1.5em 1.5em 0;
    padding: 0; }
  .left {
    @include float-right;
    margin: 1.5em 0 1.5em 1.5em;
    padding: 0; }
  dd, ul, ol {
    margin-left: 0;
    margin-right: 1.5em; }
  td, th {
    text-align: right; } }
```
