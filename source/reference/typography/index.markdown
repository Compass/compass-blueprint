---
layout: page
title: "Typography"
date: 2012-11-01 22:01
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/reset/_typography.scss">View Source</a>

A base typography for your website that follows a typographic rhythm.

This file can be imported using: `@import "blueprint/typography"`

---

## Compass Imports

1. [Colors](http://compass-style.org/reference/blueprint/colors/)
2. [Link Colors](http://compass-style.org/reference/compass/typography/links/link_colors/) – Easy assignment of colors to link states.
3. [Float](http://compass-style.org/reference/compass/utilities/general/float/) – Mixins for cross-browser floats.

---

## Configurable Variables <a class="lsf-icon" title="help" href="/help/tutorials/configurable-variables/"></a>

<span id="cont-blueprint-font-family"></span>
[$blueprint-font-family](#cont-blueprint-font-family) `"Helvetica Neue", Arial, Helvetica, sans-serif`

<span id="cont-blueprint-fixed-font-family"></span>
[$blueprint-fixed-font-family](#cont-blueprint-fixed-font-family) `"andale mono", "lucida console", monospace`

<span id="cont-blueprint-font-size"></span>
[$blueprint-font-size](#cont-blueprint-font-size) `12px`

---

## Mixins

<a href="#mixin-blueprint-typography-source" rel="view source">view source</a>
<span id="mixin-blueprint-typography"></span>
### [blueprint-typography](#mixin-blueprint-typography)($nested)
```scss
@mixin blueprint-typography($nested: false) {
  @if $nested {
    @include blueprint-typography-body;
    @include blueprint-typography-defaults; }
  @else {
    body {
      @include blueprint-typography-body; }
    @include blueprint-typography-defaults; } }
```

Usage examples: As a top-level mixin, apply to any page that includes the stylesheet:

``` sass
+blueprint-typography
```

Scoped by a presentational class:

```sass
body.blueprint
 +blueprint-typography(true)
```

Scoped by semantic selectors:

```sass
body#page-1, body#page-2, body.a-special-page-type
  +blueprint-typography(true)
```

---

<a href="#mixin-normal-text-source" rel="view source">view source</a>
<span id="mixin-normal-text"></span>
### [normal-text](#mixin-normal-text)
```scss
@mixin normal-text {
  font-family: $blueprint-font-family;
  color: $font-color; }
```

---

<a href="#mixin-fixed-width-text-source" rel="view source">view source</a>
<span id="mixin-fixed-width-text"></span>
### [fixed-width-text](#mixin-fixed-width-text)
```scss
@mixin fixed-width-text {
  font: 1em $blueprint-fixed-font-family;
  line-height: 1.5; }
```

---

<a href="#mixin-header-text-source" rel="view source">view source</a>
<span id="mixin-header-text"></span>
### [header-text](#mixin-header-text)
```scss
@mixin header-text {
  font-weight: normal;
  color: $header-color; }
```

---

<a href="#mixin-quiet-source" rel="view source">view source</a>
<span id="mixin-quiet"></span>
### [quiet](#mixin-quiet)
```scss
@mixin quiet {
  color: $quiet-color; }
```

---

<a href="#mixin-loud-source" rel="view source">view source</a>
<span id="mixin-loud"></span>
### [loud](#mixin-loud)
```scss
@mixin loud {
  color: $loud-color; }
```

---

<a href="#mixin-blueprint-typography-body-source" rel="view source">view source</a>
<span id="mixin-blueprint-typography-body"></span>
### [blueprint-typography-body](#mixin-blueprint-typography-body)($font-size)
```scss
@mixin blueprint-typography-body($font-size: $blueprint-font-size) {
  line-height: 1.5;
  @include normal-text;
  font-size: 100% * $font-size / 16px; }
```

---

<a href="#mixin-blueprint-typography-defaults-source" rel="view source">view source</a>
<span id="mixin-blueprint-typography-defaults"></span>
### [blueprint-typography-defaults](#mixin-blueprint-typography-defaults)
```scss
@mixin blueprint-typography-defaults {
  #{headers(all)} {
    @include header-text;
    img {
      margin: 0; } }
  h1 {
    font-size: 3em;
    line-height: 1;
    margin-bottom: 0.50em; }
  h2 {
    font-size: 2em;
    margin-bottom: 0.75em; }
  h3 {
    font-size: 1.5em;
    line-height: 1;
    margin-bottom: 1.00em; }
  h4 {
    font-size: 1.2em;
    line-height: 1.25;
    margin-bottom: 1.25em; }
  h5 {
    font-size: 1em;
    font-weight: bold;
    margin-bottom: 1.50em; }
  h6 {
    font-size: 1em;
    font-weight: bold; }
  p {
    margin: 0 0 1.5em;
    .left {
      @include float-left;
      margin: 1.5em 1.5em 1.5em 0;
      padding: 0; }
    .right {
      @include float-right;
      margin: 1.5em 0 1.5em 1.5em;
      padding: 0; } }
  a {
    text-decoration: underline;
    @include link-colors($link-color, $link-hover-color, $link-active-color, $link-visited-color, $link-focus-color); }
  blockquote {
    margin: 1.5em;
    color: $alt-text-color;
    font-style: italic; }
  strong, dfn {
    font-weight: bold; }
  em, dfn {
    font-style: italic; }
  sup, sub {
    line-height: 0; }
  abbr, acronym {
    border-bottom: 1px dotted #666666; }
  address {
    margin: 0 0 1.5em;
    font-style: italic; }
  del {
    color: $alt-text-color; }
  pre {
    margin: 1.5em 0;
    white-space: pre; }
  pre, code, tt {
    @include fixed-width-text; }
  li ul, li ol {
    margin: 0; }
  ul, ol {
    margin: 0 1.5em 1.5em 0;
    padding-left: 1.5em; }
  ul {
    list-style-type: disc; }
  ol {
    list-style-type: decimal; }
  dl {
    margin: 0 0 1.5em 0;
    dt {
      font-weight: bold; } }
  dd {
    margin-left: 1.5em; }
  table {
    margin-bottom: 1.4em;
    width: 100%; }
  th {
    font-weight: bold; }
  thead th {
    background: $blueprint-table-header-color; }
  th, td, caption {
    padding: 4px 10px 4px 5px; }
  table.striped tr:nth-child(even) td,
  table tr.even td {
    background: $blueprint-table-stripe-color; }
  tfoot {
    font-style: italic; }
  caption {
    background: $blueprint-background-color; }
  .quiet {
    @include quiet; }
  .loud {
    @include loud; } }
```
