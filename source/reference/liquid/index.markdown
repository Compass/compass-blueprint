---
layout: page
title: "Liquid"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_liquid.scss">View Source</a>

Import this to have a liquid grid.

The original liquid grid documentation is [here](http://groups.google.com/group/blueprintcss/msg/d7171a8bef20b9a2).

By default the container takes 80% of the canvas, you can override this:

``` scss
.container {
  width: 99%
}
```

This file can be imported using: `@import "blueprint/liquid"`

---

## Compass Imports

1. [Clearfix](http://compass-style.org/reference/compass/utilities/general/clearfix/) – Mixins for clearfixing.
2. [Float](http://compass-style.org/reference/compass/utilities/general/float/) – Mixins for cross-browser floats.

---

## Configurable Variables <a class="lsf-icon" title="help" href="/help/tutorials/configurable-variables/"></a>

<span id="cont-blueprint-liquid-grid-columns"></span>
[$blueprint-liquid-grid-columns](#cont-blueprint-liquid-grid-columns) `24`

Main layout grid, override these constants to build your grid and container sizes. The width shown gives the right floored percentage values.

<span id="cont-blueprint-liquid-grid-width"></span>
[$blueprint-liquid-grid-width](#cont-blueprint-liquid-grid-width) `3.167%`

<span id="cont-blueprint-liquid-grid-margin"></span>
[$blueprint-liquid-grid-margin](#cont-blueprint-liquid-grid-margin) `1.042%`

<span id="cont-blueprint-liquid-container-width"></span>
[$blueprint-liquid-container-width](#cont-blueprint-liquid-container-width) `80%`

Do not edit below this line unless you really know what you're doing.

<span id="cont-blueprint-liquid-container-min-width"></span>
[$blueprint-liquid-container-min-width](#cont-blueprint-liquid-container-min-width) `950px`

<span id="cont-blueprint-liquid-grid-push-pull"></span>
[$blueprint-liquid-grid-push-pull](#cont-blueprint-liquid-grid-push-pull) `-($blueprint-liquid-grid-margin + $blueprint-liquid-grid-width)`

---

## Functions

<a href="#function-span-fluid-source" rel="view source">view source</a>
<span id="function-span-fluid"></span>
### [span-fluid](#function-span-fluid)($n)
```scss
@function span-fluid($n) {
  @return $blueprint-liquid-grid-width * $n + $blueprint-liquid-grid-margin * ($n - 1); }
```

Return the width of `$n` columns in percents.

---

## Mixins

<a href="#mixin-blueprint-liquid-grid-source" rel="view source">view source</a>
<span id="mixin-blueprint-liquid-grid"></span>
### [blueprint-liquid-grid](#mixin-blueprint-liquid-grid)
```scss
@mixin blueprint-liquid-grid {
  // A container should group all your columns
  .container {
    @include container; }
  // Use these classes (or mixins) to set the width of a column.
  @for $n from 1 to $blueprint-liquid-grid-columns + 1 {
    .span-#{$n} {
      width: span-fluid($n); }
    div {
      &.span-#{$n} {
        @include column($n, $n == $blueprint-liquid-grid-columns); } } }
  // The last column in a row needs this class (or mixin) or it will end up on the next row.
  div.last {
    @include last; }
  // Add these to a column to append empty cols.
  @for $n from 1 to $blueprint-liquid-grid-columns {
    .append-#{$n} {
      @include append($n); } }
  // Add these to a column to prepend empty cols.
  @for $n from 1 to $blueprint-liquid-grid-columns {
    .prepend-#{$n} {
      @include prepend($n); } }
  // Use these classes on an element to push it into the
  // next column, or to pull it into the previous column.
  @for $n from 1 to $blueprint-liquid-grid-columns + 1 {
    .pull-#{$n} {
      @include pull($n); } }
  @for $n from 1 to $blueprint-liquid-grid-columns + 1 {
    .push-#{$n} {
      @include push($n); } } }
```

---

<a href="#mixin-container-source" rel="view source">view source</a>
<span id="mixin-container"></span>
### [container](#mixin-container)
```scss
@mixin container {
  min-width: $blueprint-liquid-container-min-width;
  width: $blueprint-liquid-container-width;
  margin: 0 auto;
  @include clearfix; }
```

---

<a href="#mixin-span-source" rel="view source">view source</a>
<span id="mixin-span"></span>
### [span](#mixin-span)($n, $important)
```scss
@mixin span($n, $important: false) {
  @warn "The span mixin is deprecated. Please use the span-fluid function instead. E.g. width: span-fluid(#{$n})";
  $width: span-fluid($n);
  @if $important {
    width: $width !important; }
  @else {
    width: $width; } }
```

---

<a href="#mixin-last-source" rel="view source">view source</a>
<span id="mixin-last"></span>
### [last](#mixin-last)
```scss
@mixin last {
  margin-right: 0; }
```

---

<a href="#mixin-column-source" rel="view source">view source</a>
<span id="mixin-column"></span>
### [column](#mixin-column)($n, $last)
```scss
@mixin column($n, $last: false) {
  @include float-left;
  overflow: hidden;
  width: span-fluid($n);
  @if $last {
    @include last; }
  @else {
    margin-right: $blueprint-liquid-grid-margin; } }
```

---

<a href="#mixin-append-source" rel="view source">view source</a>
<span id="mixin-append"></span>
### [append](#mixin-append)($n)
```scss
@mixin append($n) {
  padding-right: ($blueprint-liquid-grid-width + $blueprint-liquid-grid-margin) * $n; }
```

---

<a href="#mixin-prepend-source" rel="view source">view source</a>
<span id="mixin-prepend"></span>
### [prepend](#mixin-prepend)($n)
```scss
@mixin prepend($n) {
  padding-left: ($blueprint-liquid-grid-width + $blueprint-liquid-grid-margin) * $n; }
```

---

<a href="#mixin-pull-source" rel="view source">view source</a>
<span id="mixin-pull"></span>
### [pull](#mixin-pull)($n, $last)
```scss
@mixin pull($n, $last: false) {
  margin-left: $blueprint-liquid-grid-push-pull * $n; }
```

---

<a href="#mixin-push-source" rel="view source">view source</a>
<span id="mixin-push"></span>
### [push](#mixin-push)($n)
```scss
@mixin push($n) {
  @include float-right;
  margin: {
    top: 0;
    left: $blueprint-liquid-grid-margin;
    right: $blueprint-liquid-grid-push-pull * $n;
    bottom: 0; }; }
```

---

<a href="#mixin-border-source" rel="view source">view source</a>
<span id="mixin-border"></span>
### [border](#mixin-border)
```scss
@mixin border {
  border-right: 1px solid #eeeeee; }
```

---

<a href="#mixin-colborder-source" rel="view source">view source</a>
<span id="mixin-colborder"></span>
### [colborder](#mixin-colborder)
```scss
@mixin colborder {
  padding-right: $blueprint-liquid-grid-margin * 2;
  margin-right: $blueprint-liquid-grid-margin * 2;
  @include border; }
```

---

<a href="#mixin-colruler-source" rel="view source">view source</a>
<span id="mixin-colruler"></span>
### [colruler](#mixin-colruler)
```scss
@mixin colruler {
  background: #dddddd;
  color: #dddddd;
  clear: both;
  width: 100%;
  height: 0.083em;
  margin: 0;
  margin-left: $blueprint-liquid-grid-margin * 2;
  margin-right: $blueprint-liquid-grid-margin * 2;
  border: none; }
```

---

<a href="#mixin-colspacer-source" rel="view source">view source</a>
<span id="mixin-colspacer"></span>
### [colspacer](#mixin-colspacer)
```scss
@mixin colspacer {
  @include colruler;
  background: white;
  color: white; }
```
