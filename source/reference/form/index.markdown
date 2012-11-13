---
layout: page
title: "Form"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_form.scss">View Source</a>

Basic form styles.

This file can be imported using: `@import "blueprint/form"`

## Compass Imports

1. [Colors](http://compass-style.org/reference/blueprint/colors/)

## Mixins

<a href="#mixin-blueprint-inline-form-source" rel="view source">view source</a>
<span id="mixin-blueprint-inline-form"></span>
### [blueprint-inline-form](#mixin-blueprint-inline-form)
``` scss
@mixin blueprint-inline-form {
  line-height: 3;
  p {
    margin-bottom: 0; } }
```

Mixin for producing Blueprint "inline" forms. Should be used with the **blueprint-form** mixin.

---

<a href="#mixin-blueprint-form-source" rel="view source">view source</a>
<span id="mixin-blueprint-form"></span>
### [blueprint-form](#mixin-blueprint-form)
``` scss
@mixin blueprint-form {
  @include blueprint-form-layout;
  @include blueprint-form-borders;
  @include blueprint-form-sizes; }
```

---

<a href="#mixin-blueprint-form-layout-source" rel="view source">view source</a>
<span id="mixin-blueprint-form-layout"></span>
### [blueprint-form-layout](#mixin-blueprint-form-layout)
``` scss
@mixin blueprint-form-layout {
  label {
    font-weight: bold; }
  fieldset {
    padding: 1.4em;
    margin: 0 0 1.5em 0; }
  legend {
    font-weight: bold;
    font-size: 1.2em; }
  input {
    &.text,
    &.title,
    &[type=email],
    &[type=text],
    &[type=password] {
      margin: 0.5em 0;
      background-color: white;
      padding: 5px; }
    &.title {
      font-size: 1.5em; } }
  textarea {
    margin: 0.5em 0;
    padding: 5px; }
  select {
    margin: 0.5em 0; } }
```

---

<a href="#mixin-blueprint-form-sizes-source" rel="view source">view source</a>
<span id="mixin-blueprint-form-sizes"></span>
### [blueprint-form-sizes](#mixin-blueprint-form-sizes)($input-width, $textarea-width, $textarea-height)
``` scss
@mixin blueprint-form-sizes($input-width: 300px, $textarea-width: 390px, $textarea-height: 250px) {
  input {
    &.text,
    &.title,
    &[type=email],
    &[type=text],
    &[type=password] {
      width: $input-width; } }
  textarea {
    width: $textarea-width;
    height: $textarea-height; } }
```

---

<a href="#mixin-blueprint-form-borders-source" rel="view source">view source</a>
<span id="mixin-blueprint-form-borders"></span>
### [blueprint-form-borders](#mixin-blueprint-form-borders)($unfocused-border-color, $focus-border-color, $fieldset-border-color)
``` scss
@mixin blueprint-form-borders($unfocused-border-color: #bbbbbb, $focus-border-color: #666666, $fieldset-border-color: #cccccc) {
  fieldset {
    border: 1px solid $fieldset-border-color; }
  input.text, input.title, input[type=email], input[type=text], input[type=password],
  textarea {
    background-color: #fff;
    border: 1px solid $unfocused-border-color;
    &:focus {
      border-color: $focus-border-color; } }
  select {
    background-color: #fff;
    border-width: 1px;
    border-style: solid; } }
```
