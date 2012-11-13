---
layout: page
title: "Grid"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_form.scss">View Source</a>

The blueprint grid.

This file can be imported using: `@import "blueprint/grid"`

## Examples

[Two Column Layout](/examples/blueprint/grid/two_cols/)
A semantic two-column layout

---

## Compass Imports

1. [Clearfix](http://compass-style.org/reference/compass/utilities/general/clearfix/) – Mixins for clearfixing.
2. [Float](http://compass-style.org/reference/compass/utilities/general/float/) – Mixins for cross-browser floats.

---

## Configurable Variables <a class="lsf-icon" title="help" href="/help/tutorials/configurable-variables/"></a>

<span id="cont-blueprint-grid-columns"></span>
[$blueprint-grid-columns](#cont-blueprint-grid-columns) `24`

The number of columns in the grid.

<span id="cont-blueprint-grid-width"></span>
[$blueprint-grid-width](#cont-blueprint-grid-width) `30px`

The width of a column

<span id="cont-blueprint-grid-margin"></span>
[$blueprint-grid-margin](#cont-blueprint-grid-margin) `10px`

The amount of margin between columns

---

## Constants

[$blueprint-grid-outer-width]() `$blueprint-grid-width + $blueprint-grid-margin`

The width of a column including the margin. With default settings this is `40px`.

[$blueprint-container-size]() `$blueprint-grid-outer-width * $blueprint-grid-columns - $blueprint-grid-margin`

The width of the container. With default settings this is `950px`.

---

## Functions

<a href="#function-span-source" rel="view source">view source</a>
<span id="function-span"></span>
### [span](#function-span)($n)
```scss
@function span($n) {
  @return $blueprint-grid-width * $n + $blueprint-grid-margin * ($n - 1); }
```
Return the width in pixels of `$n` columns.

---

## Mixins

<a href="#mixin-blueprint-grid-source" rel="view source">view source</a>
<span id="mixin-blueprint-grid"></span>
### [blueprint-grid](#mixin-blueprint-grid)
```scss
@mixin blueprint-grid {
  // A container should group all your columns
  .container {
    @include container; }
  .column {
    @include column-base; }
  // The last column in a row needs this class (or mixin) or it will end up on the next row.
  .last {
    @include last; }
  // Use these classes (or mixins) to set the width of a column.
  @for $n from 1 to $blueprint-grid-columns {
    .span-#{$n} {
      @extend .column;
      width: span($n); } }
  .span-#{$blueprint-grid-columns} {
    @extend .column;
    width: span($blueprint-grid-columns);
    margin: 0; }
  input, textarea, select {
    @for $n from 1 through $blueprint-grid-columns {
      &.span-#{$n} {
        width: span($n); } } }
  // Add these to a column to append empty cols.
  @for $n from 1 to $blueprint-grid-columns {
    .append-#{$n} {
      @include append($n); } }
  // Add these to a column to prepend empty cols.
  @for $n from 1 to $blueprint-grid-columns {
    .prepend-#{$n} {
      @include prepend($n); } }
  // Use these classes on an element to push it into the
  // next column, or to pull it into the previous column.
  #{enumerate(".pull", 1, $blueprint-grid-columns)} {
    @include pull-base; }
  @for $n from 1 through $blueprint-grid-columns {
    .pull-#{$n} {
      @include pull-margins($n); } }
  #{enumerate(".push", 1, $blueprint-grid-columns)} {
    @include push-base; }
  @for $n from 1 through $blueprint-grid-columns {
    .push-#{$n} {
      @include push-margins($n); } }
  .prepend-top {
    @include prepend-top; }
  .append-bottom {
    @include append-bottom; } }
```
Generates presentational class names that you can use in your html to layout your pages.

#### Note:

Best practices discourage using this mixin, but it is provided to support legacy websites and to test the sass port against blueprint's example pages.

---

<a href="#mixin-container-source" rel="view source">view source</a>
<span id="mixin-container"></span>
### [container](#mixin-container)
```scss
@mixin container {
  width: $blueprint-container-size;
  margin: 0 auto;
  @include clearfix; }
```
A container for your columns.

#### Note:

If you use this mixin without the class and want to support ie6 you must set text-align left on your container element in an IE stylesheet.

---

<a href="#mixin-last-source" rel="view source">view source</a>
<span id="mixin-last"></span>
### [last](#mixin-last)
```scss
@mixin last {
  margin-right: 0; }
```
The last column in a row needs this mixin or it will end up on the next row in some browsers.



---

<a href="#mixin-column-source" rel="view source">view source</a>
<span id="mixin-column"></span>
### [column](#mixin-column)($n, $last)

```scss
@mixin column($n, $last: false) {
  @include column-base($last);
  width: span($n); }
```
Use this mixins to set the width of n columns.

---

<a href="#mixin-span-source" rel="view source">view source</a>
<span id="mixin-span"></span>
### [span](#mixin-span)($n, $important)

```scss
@mixin span($n, $important: false) {
  @warn "The span mixin is deprecated. Please use the span function instead. E.g. width: span(#{$n})";
  @if $important {
    width: span($n) !important; }
  @else {
    width: span($n); } }
```
Set only the width of an element to align it with the grid. Most of the time you'll want to use `+column` instead.

This mixin is especially useful for aligning tables to the grid.

@deprecated Please use the span function with the width property instead.

---

<a href="#mixin-column-base-source" rel="view source">view source</a>
<span id="mixin-column-base"></span>
### [column-base](#mixin-column-base)($last)

```scss
@mixin column-base($last: false) {
  @include float-left;
  @if $last {
    @include last; }
  @else {
    margin-right: $blueprint-grid-margin; }
  * html & {
    overflow-x: hidden; } }
```
The basic set of styles needed to make an element behave like a column:

* floated to left
* gutter margin on the right (unless the last column)
* Some IE fixes

#### Note:

This mixin gets applied automatically when using `+column` so you probably don't need to use it directly unless you need to deviate from the grid or are trying to reduce the amount of generated CSS.

---

<a href="#mixin-append-source" rel="view source">view source</a>
<span id="mixin-append"></span>
### [append](#mixin-append)($n)
```scss
@mixin append($n) {
  padding-right: $blueprint-grid-outer-width * $n; }
```
Mixin to a column to append n empty columns to the right by adding right padding to the column.

---

<a href="#mixin-prepend-source" rel="view source">view source</a>
<span id="mixin-prepend"></span>
### [prepend](#mixin-prepend)($n)
```scss
@mixin prepend($n) {
  padding-left: $blueprint-grid-outer-width * $n; }
```
Mixin to a column to append n empty columns to the left by adding left padding to the column.

---

<a href="#mixin-append-bottom-source" rel="view source">view source</a>
<span id="mixin-append-bottom"></span>
### [append-bottom](#mixin-append-bottom)($ammount)
```scss
@mixin append-bottom($amount: 1.5em) {
  margin-bottom: $amount; }
```
Adds trailing margin.

---

<a href="#mixin-prepend-top-source" rel="view source">view source</a>
<span id="mixin-prepend-top"></span>
### [prepend-top](#mixin-prepend-top)($ammount)
```scss
@mixin prepend-top($amount: 1.5em) {
  margin-top: $amount; }
```
Adds leading margin.

---

<a href="#mixin-pull-base-source" rel="view source">view source</a>
<span id="mixin-pull-base"></span>
### [pull-base](#mixin-pull-base)
```scss
@mixin pull-base {
  @include float-left;
  position: relative; }
```
Base styles that make it possible to pull an element to the left.

#### Note:

This mixin gets applied automatically when using `+pull` so you probably don't need to use it directly unless you need to deviate from the grid or are trying to reduce the amount of generated CSS.

---

<a href="#mixin-pull-margins-source" rel="view source">view source</a>
<span id="mixin-pull-margins"></span>
### [pull-margins](#mixin-pull-margins)($n, $last)
```scss
@mixin pull-margins($n, $last: false) {
  @if $last {
    margin-left: -$blueprint-grid-outer-width * $n + $blueprint-grid-margin; }
  @else {
    margin-left: -$blueprint-grid-outer-width * $n; } }
```
The amount of pulling for element to the left.

#### Note:

This mixin gets applied automatically when using `+pull` so you probably don't need to use it directly unless you need to deviate from the grid or are trying to reduce the amount of generated CSS.

---

<a href="#mixin-pull-source" rel="view source">view source</a>
<span id="mixin-pull"></span>
### [pull](#mixin-pull)($n, $last)
```scss
@mixin pull($n, $last: false) {
  @include pull-base;
  @include pull-margins($n, $last); }
```
Moves a column `n` columns to the left.

This mixin can also be used to change the display order of columns.

If pulling past the last (visually) element in a row, pass `true` as the second argument so the calculations can adjust accordingly. For example:

HTML:
``` html
<div id="one">One</div>
<div id="two">Two</div>
```

Sass:
``` sass
#one
  +column(18, true)
  +prepend(6)
#two
  +column(6)
  +pull(18, true)
```

[Pull Example](http://compass-style.org/examples/blueprint/grid/pull/) – Uses pull to change the display order of columns.

---

<a href="#mixin-push-base-source" rel="view source">view source</a>
<span id="mixin-push-base"></span>
### [push-base](#mixin-push-base)
```scss
@mixin push-base {
  @include float-left;
  position: relative; }s
```

---

<a href="#mixin-push-margins-source" rel="view source">view source</a>
<span id="mixin-push-margins"></span>
### [push-margins](#mixin-push-margins)($n)
```scss
@mixin push-margins($n) {
  margin: 0 -$blueprint-grid-outer-width * $n 1.5em $blueprint-grid-outer-width * $n; }
```

---

<a href="#mixin-push-source" rel="view source">view source</a>
<span id="mixin-push"></span>
### [push](#mixin-push)($n)
```scss
@mixin push($n) {
  @include push-base;
  @include push-margins($n); }
```

Mixin to a column to push it `n` columns to the right

---

<a href="#mixin-border-source" rel="view source">view source</a>
<span id="mixin-border"></span>
### [border](#mixin-border)($border-color, $border-width)
```scss
@mixin border($border-color: $blueprint-border-color, $border-width: 1px) {
  padding-right: $blueprint-grid-margin / 2 - $border-width;
  margin-right: $blueprint-grid-margin / 2;
  border-right: #{$border-width} solid #{$border-color}; }
```

Border on right hand side of a column.

---

<a href="#mixin-colborder-source" rel="view source">view source</a>
<span id="mixin-colborder"></span>
### [colborder](#mixin-colborder)($border-color, $border-width)
```scss
@mixin colborder($border-color: $blueprint-border-color, $border-width: 1px) {
  padding-right: floor(($blueprint-grid-width + 2 * $blueprint-grid-margin - $border-width) / 2);
  margin-right: ceil(($blueprint-grid-width + 2 * $blueprint-grid-margin - $border-width) / 2);
  border-right: #{$border-width} solid #{$border-color}; }
```

Border with more whitespace, spans one column.

---

<a href="#mixin-colruler-source" rel="view source">view source</a>
<span id="mixin-colruler"></span>
### [colruler](#mixin-colruler)($border-color)
```scss
@mixin colruler($border-color: #dddddd) {
  background: $border-color;
  color: $border-color;
  clear: both;
  float: none;
  width: 100%;
  height: 0.1em;
  margin: 0 0 1.45em;
  border: none; }
```

Mixin this to an hr to make a horizontal ruler across a column.

---

<a href="#mixin-colspacer-source" rel="view source">view source</a>
<span id="mixin-colspacer"></span>
### [colspacer](#mixin-colspacer)
```scss
@mixin colspacer {
  @include colruler;
  background: white;
  color: white;
  visibility: hidden; }
```

Mixin this to an hr to make a horizontal spacer across a column.

---

