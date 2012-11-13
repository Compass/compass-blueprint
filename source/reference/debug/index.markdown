---
layout: page
title: "Debug"
date: 2012-11-01 21:59
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_debug.scss">View Source</a>

Styles for debugging your grid alignments

This file can be imported using: `@import "blueprint/debug"`

## Compass Imports

1. [Grid Background](http://compass-style.org/reference/compass/layout/grid_background/)
2. [Grid](http://compass-style.org/reference/blueprint/grid/)
3. [Typography](http://compass-style.org/reference/blueprint/typography/)

## Mixins

<a href="#mixin-showgrid-source" rel="view source">view source</a>
<span id="mixin-showgrid"></span>
### [showgrid](#mixin-showgrid)($image)
``` scss
@mixin showgrid($image: false) {
  @if $image {
    background: image-url($image); }
  @else {
    @include grid-background($total: $blueprint-grid-columns, $column: $blueprint-grid-width, $gutter: $blueprint-grid-margin, $baseline: $blueprint-font-size * 1.5); } }
```

Shows a background that can be used to check grid alignment. By default this is a pure css version that only works in browsers that support gradients and multiple backgrounds, but you can pass an image url if you prefer.

<a href="#mixin-blueprint-debug-source" rel="view source">view source</a>
<span id="mixin-blueprint-debug"></span>
### [blueprint-debug](#mixin-blueprint-debug)($grid-image)
``` scss
@mixin blueprint-debug($grid-image: false) {
  // Use this class on any column or container to see the grid.
  // TODO: prefix this with the project path.
  .showgrid {
    @include showgrid($grid-image); } }
```