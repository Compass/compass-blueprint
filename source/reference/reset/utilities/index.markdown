---
layout: page
title: "Reset Utilities"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/reset/_utilities.scss">View Source</a>

Utility mixins for applying a reset and base styling.

This file can be imported using: `@import "blueprint/reset/utilities"`

---

## Mixins

<a href="#mixin-blueprint-global-reset-source" rel="view source">view source</a>
<span id="mixin-blueprint-global-reset"></span>
### [blueprint-global-reset](#mixin-blueprint-global-reset)
```scss
@mixin blueprint-global-reset {
  html {
    @include blueprint-reset-box-model; }
  body {
    @extend .bp-reset-element; }
  @include blueprint-nested-reset; }
```

Global reset rules. For more specific resets, use the reset mixins provided below

---

<a href="#mixin-blueprint-nested-reset-source" rel="view source">view source</a>
<span id="mixin-blueprint-nested-reset"></span>
### [blueprint-nested-reset](#mixin-blueprint-nested-reset)
```scss
@mixin blueprint-nested-reset {
  .bp-reset-element,
  div, span, object, iframe, p,
  pre, a, abbr, acronym, address,
  code, del, dfn, em, img,
  dl, dt, dd, ol, ul, li, fieldset,
  form, label, legend,
  caption, tbody, tfoot, thead, tr {
    @include blueprint-basic-reset; }
  #{headers(all)} {
    @include blueprint-basic-reset(bp-reset-element); }
  #{elements-of-type(html5-block)} {
    @include blueprint-reset-html5-element(bp-reset-element); }
  blockquote, q {
    @include blueprint-reset-quotation(bp-reset-element); }
  th, td, caption {
    @include blueprint-reset-table-cell(bp-reset-element); }
  table {
    @include blueprint-reset-table(bp-reset-element); }
  a img {
    border: none; } }
```

Reset all elements within some selector scope.To reset the selector itself, mixin the appropriate reset mixin for that element type as well. This could be useful if you want to style a part of your page in a dramatically different way.

---

<a href="#mixin-blueprint-reset-html5-element-source" rel="view source">view source</a>
<span id="mixin-blueprint-reset-html5-element"></span>
### [blueprint-reset-html5-element](#mixin-blueprint-reset-html5-element)($reset-base-class)
```scss
@mixin blueprint-reset-html5-element($reset-base-class: false) {
  @if $reset-base-class {
    @extend .#{$reset-base-class}; }
  @else {
    @include blueprint-reset; }
  display: block; }
```

---

<a href="#mixin-blueprint-reset-box-model-source" rel="view source">view source</a>
<span id="mixin-blueprint-reset-box-model"></span>
### [blueprint-reset-box-model](#mixin-blueprint-reset-box-model)
```scss
@mixin blueprint-reset-box-model {
  margin: 0;
  padding: 0;
  border: 0; }
```

---

<a href="#mixin-blueprint-reset-source" rel="view source">view source</a>
<span id="mixin-blueprint-reset"></span>
###   [blueprint-reset](#mixin-blueprint-reset)
```scss
@mixin blueprint-reset {
  @warn "The blueprint-reset mixin is deprecated. Please use blueprint-basic-reset instead.";
  @include blueprint-basic-reset; }
```

---

<a href="#mixin-blueprint-basic-reset-source" rel="view source">view source</a>
<span id="mixin-blueprint-basic-reset"></span>
### [blueprint-basic-reset](#mixin-blueprint-basic-reset)($reset-base-class)
```scss
@mixin blueprint-basic-reset($reset-base-class: false) {
  @if $reset-base-class {
    @extend .#{$reset-base-class}; }
  @else {
    @include blueprint-reset-box-model;
    @include blueprint-reset-typography; } }
```

---

<a href="#mixin-blueprint-reset-typography-source" rel="view source">view source</a>
<span id="mixin-blueprint-reset-typography"></span>
### [blueprint-reset-typography](#mixin-blueprint-reset-typography)
```scss
@mixin blueprint-reset-typography {
  font: {
    weight: inherit;
    style: inherit;
    size: 100%;
    family: inherit; };
  vertical-align: baseline; }
```

---

<a href="#mixin-blueprint-reset-quotation-source" rel="view source">view source</a>
<span id="mixin-blueprint-reset-quotation"></span>
### [blueprint-reset-quotation](#mixin-blueprint-reset-quotation)($reset-base-class)
```scss
@mixin blueprint-reset-quotation($reset-base-class: false) {
  @if $reset-base-class {
    @extend .#{$reset-base-class}; }
  @else {
    @include blueprint-reset; }
  quotes: "" "";
  &:before,
  &:after {
    content: ""; } }
```

---

<a href="#mixin-blueprint-reset-table-cell-source" rel="view source">view source</a>
<span id="mixin-blueprint-reset-table-cell"></span>
### [blueprint-reset-table-cell](#mixin-blueprint-reset-table-cell)($reset-base-class)
```scss
@mixin blueprint-reset-table-cell($reset-base-class: false) {
  @if $reset-base-class {
    @extend .#{$reset-base-class}; }
  @else {
    @include blueprint-reset; }
  float: none !important;
  text-align: left;
  font-weight: normal;
  vertical-align: middle; }
```

---

<a href="#mixin-blueprint-reset-table-source" rel="view source">view source</a>
<span id="mixin-blueprint-reset-table"></span>
### [blueprint-reset-table](#mixin-blueprint-reset-table)($reset-base-class)
```scss
@mixin blueprint-reset-table($reset-base-class: false) {
  @if $reset-base-class {
    @extend .#{$reset-base-class}; }
  @else {
    @include blueprint-reset; }
  border-collapse: separate;
  border-spacing: 0;
  vertical-align: middle; }
```