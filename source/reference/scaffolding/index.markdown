---
layout: page
title: "Scaffolding"
date: 2012-11-01 22:01
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/reset/_scaffolding.scss">View Source</a>

Training wheels... So that your site doesn't look too bad when you're starting out.

This file can be imported using: `@import "blueprint/scaffolding"`

---

## Compass Imports

1. [Form](http://compass-style.org/reference/blueprint/form/)
2. [Grid](http://compass-style.org/reference/blueprint/grid/)

---

## Mixins

<a href="#mixin-blueprint-scaffolding-source" rel="view source">view source</a>
<span id="mixin-blueprint-scaffolding"></span>
### [blueprint-scaffolding](#mixin-blueprint-scaffolding)($nested)
```scss
@mixin blueprint-scaffolding($nested: deprecated) {
  @if $nested != deprecated {
    @warn "It is no longer necessary to pass any argument to the blueprint-scaffolding mixin."; }
  @include blueprint-scaffolding-defaults; }
```

The styles contained here are meant to provide for an attractive experience out of the box and are expected to be removed once custom visual design begins. The +blueprint-scaffolding mixin must be mixed into the top level of your stylesheet. However, you can customize the body selector if you wish to control the scope of this mixin. 

**Examples:** 

Apply to any page including the stylesheet: `+blueprint-scaffolding`

Scoped by a single presentational body class: 
``` sass
+blueprint-scaffolding("body.blueprint")`
```

Semantically: 
``` sass
+blueprint-scaffolding("body#page-1, body#page-2, body.a-special-page-type")
```

Alternatively, you can use the `+blueprint-scaffolding-body` and `+blueprint-scaffolding-defaults` mixins to construct your own semantic style rules. 

**@deprecated** It is no longer necessary to pass any argument.

---

<a href="#mixin-blueprint-scaffolding-body-source" rel="view source">view source</a>
<span id="mixin-blueprint-scaffolding-body"></span>
### [blueprint-scaffolding-body](#mixin-blueprint-scaffolding-body)
```scss
@mixin blueprint-scaffolding-body {
  margin: 1.5em 0; }
```

The styles this mixin provides were deprecated in Blueprint 0.9 and is no longer part of the main scaffolding, but the mixin is still available if you want to use it.

---

<a href="#mixin-box-source" rel="view source">view source</a>
<span id="mixin-box"></span>
### [box](#mixin-box)
```scss
@mixin box {
  padding: 1.5em;
  margin-bottom: 1.5em;
  background: #e5ecf9; }
```

Mixin +box to create a padded box inside a column.

---

<a href="#mixin-blueprint-scaffolding-defaults-source" rel="view source">view source</a>
<span id="mixin-blueprint-scaffolding-defaults"></span>
### [blueprint-scaffolding-defaults](#mixin-blueprint-scaffolding-defaults)
```scss
@mixin blueprint-scaffolding-defaults {
  .box {
    @include box; }
  // Border on right hand side of a column. You can comment this out if you don't plan to use it.
  .border {
    @include border; }
  // Border with more whitespace, spans one column.
  .colborder {
    @include colborder; }
  hr {
    @include colruler; }
  hr.space {
    @include colspacer; }
  form.inline {
    @include blueprint-inline-form; } }
```