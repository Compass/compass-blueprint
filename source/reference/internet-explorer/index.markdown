---
layout: page
title: "IE Compatibility"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_ie.scss">View Source</a>

This module should be imported into a stylesheet that will only be served to legacy versions of Internet Explorer. If you've used the blueprint project generator, this will be done for you. In a standard blueprint project you'll need the following:

``` sass
@import blueprint/ie
+blueprint-ie
Or if you prefer to use blueprint on only some pages you can nest these styles. E.g.
```

``` sass
@import blueprint/ie
body.blueprint
  +blueprint-ie(true)
```
The stylesheet should then be linked like so:

``` html
<!--[if lt IE 8]><link rel="stylesheet" href="/stylesheets/ie.css"
   type="text/css" media="screen, projection"><![endif]-->
```
This file can be imported using: `@import "blueprint/ie"`

---

## Mixins

<a href="#mixin-blueprint-ie-source" rel="view source">view source</a>
<span id="mixin-blueprint-ie"></span>
### [blueprint-ie](#mixin-blueprint-ie)
```scss
@mixin blueprint-ie($nested: false) {
  @if $nested {
    @include blueprint-ie-body;
    @include blueprint-ie-defaults; }
  @else {
    body {
      @include blueprint-ie-body; }
    @include blueprint-ie-defaults; } }
```

## Usage Examples

As a top-level mixin, apply to any page that includes the stylesheet:

``` sass
+blueprint-ie
```

Scoped by a presentational class:

``` sass
body.blueprint
 +blueprint-ie(true)
```

Scoped by semantic selectors:

``` sass
body#page-1, body#page-2, body.a-special-page-type
  +blueprint-ie(true)
```

**Deprecated:** You can pass the body selector as the first argument when used as a top-level mixin

``` sass
+blueprint-ie("body#page-1, body#page-2, body.a-special-page-type")
```

---

<a href="#mixin-blueprint-ie-body-source" rel="view source">view source</a>
<span id="mixin-blueprint-ie-body"></span>
### [blueprint-ie-body](#mixin-blueprint-ie-body)
```scss
@mixin blueprint-ie-body {
  text-align: center;
  @include blueprint-ie-hacks; }
```

---

<a href="#mixin-blueprint-ie-hacks-source" rel="view source">view source</a>
<span id="mixin-blueprint-ie-hacks"></span>
### [blueprint-ie-hacks](#mixin-blueprint-ie-hacks)
```scss
@mixin blueprint-ie-hacks {
  * html & {
    legend {
      margin: 0px -8px 16px 0;
      padding: 0; } }
  html > & {
    p code {
      *white-space: normal; } } }
```

---

<a href="#mixin-blueprint-inline-form-ie-source" rel="view source">view source</a>
<span id="mixin-blueprint-inline-form-ie"></span>
### [blueprint-inline-form-ie](#mixin-blueprint-inline-form-ie)
```scss
@mixin blueprint-inline-form-ie {
  div, p {
    vertical-align: middle; }
  input {
    &.checkbox, &.radio, &.button, button {
      margin: 0.5em 0; } } }
```

Fixes for Blueprint "inline" forms in IE

---

<a href="#mixin-blueprint-ie-defaults-source" rel="view source">view source</a>
<span id="mixin-blueprint-ie-defaults"></span>
### [blueprint-ie-defaults](#mixin-blueprint-ie-defaults)
```scss
@mixin blueprint-ie-defaults {
  .container {
    text-align: left; }
  sup {
    vertical-align: text-top; }
  sub {
    vertical-align: text-bottom; }
  hr {
    margin: -8px auto 11px; }
  img {
    -ms-interpolation-mode: bicubic; }
  fieldset {
    padding-top: 0; }
  legend {
    margin-top: -0.2em;
    margin-bottom: 1em;
    margin-left: -0.5em; }
  fieldset, #IE8#HACK {
    padding-top: 1.4em; }
  legend, #IE8#HACK {
    margin-top: 0;
    margin-bottom: 0; }
  textarea {
    overflow: auto; }
  label {
    position: relative;
    top: -0.25em; }
  input {
    &.text {
      margin: 0.5em 0;
      background-color: white;
      border: 1px solid #bbbbbb;
      &:focus {
        border: 1px solid #666666; } }
    &.title {
      margin: 0.5em 0;
      background-color: white;
      border: 1px solid #bbbbbb;
      &:focus {
        border: 1px solid #666666; } }
    &.checkbox {
      position: relative;
      top: 0.25em; }
    &.radio {
      position: relative;
      top: 0.25em; }
    &.button {
      position: relative;
      top: 0.25em; } }
  textarea {
    margin: 0.5em 0; }
  select {
    margin: 0.5em 0; }
  button {
    position: relative;
    top: 0.25em; } }
```
