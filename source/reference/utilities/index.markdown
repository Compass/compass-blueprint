---
layout: page
title: "Utilities"
date: 2012-11-01 22:01
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_utilities.scss">View Source</a>

Some utility classes.

This file can be imported using: `@import "blueprint/utilities"`

---

## Compass Imports

1. [No Wrap](http://compass-style.org/reference/compass/typography/text/nowrap/) – Remembering whether or not there's a hyphen in white-space is too hard.
2. [Clearfix](http://compass-style.org/reference/compass/utilities/general/clearfix/) – Mixins for clearfixing.

---

## Mixins

<a href="#mixin-blueprint-utilities-source" rel="view source">view source</a>
<span id="mixin-blueprint-utilities"></span>
### [blueprint-utilities](#mixin-blueprint-utilities)
```scss
@mixin blueprint-utilities {
  // Regular clearing apply to column that should drop below previous ones.
  .clear {
    clear: both; }
  // turn off text wrapping for the element.
  .nowrap {
    @include nowrap; }
  // Apply to an element that has floated children to make the bottom
  // of the element fall _below_ the floated children.
  .clearfix {
    @include clearfix; }
  .small {
    font-size: 0.8em;
    margin-bottom: 1.875em;
    line-height: 1.875em; }
  .large {
    font-size: 1.2em;
    line-height: 2.5em;
    margin-bottom: 1.25em; }
  .first {
    margin-left: 0;
    padding-left: 0; }
  .last {
    margin-right: 0;
    padding-right: 0; }
  .top {
    margin-top: 0;
    padding-top: 0; }
  .bottom {
    margin-bottom: 0;
    padding-bottom: 0; } }
```

Most of these utility classes are not "semantic". If you use them, you are mixing your content and presentation. For shame!