---
layout: page
title: "Interaction"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_interaction.scss">View Source</a>

Some classes that are used in common website interactions.

This file can be imported using: `@import "blueprint/interaction"`

## Compass Imports

1. [Colors](http://compass-style.org/reference/blueprint/colors/)

---

## Mixins

<a href="#mixin-blueprint-interaction-source" rel="view source">view source</a>
<span id="mixin-blueprint-interaction"></span>
### [blueprint-interaction](#mixin-blueprint-interaction)
```scss
@mixin blueprint-interaction {
  .feedback {
    @include feedback-base; }
  .error {
    @include error(feedback); }
  .alert {
    @extend .error; }
  .notice {
    @include notice(feedback); }
  .success {
    @include success(feedback); }
  .info {
    @include info(feedback); }
  .hide {
    display: none; }
  .highlight {
    @include highlight; }
  .added {
    @include added; }
  .removed {
    @include removed; } }
```

---

<a href="#mixin-feedback-base-source" rel="view source">view source</a>
<span id="mixin-feedback-base"></span>
### [feedback-base](#mixin-feedback-base)
```scss
@mixin feedback-base {
  padding: 0.8em;
  margin-bottom: 1em;
  border: 2px solid $feedback-border-color; }
```

---

<a href="#mixin-error-source" rel="view source">view source</a>
<span id="mixin-error"></span>
### [error](#mixin-error)($feedback-base-class)
```scss
@mixin error($feedback-base-class: false) {
  @if $feedback-base-class {
    @extend .#{$feedback-base-class}; }
  @else {
    @include feedback-base; }
  background: $error-bg-color;
  color: $error-color;
  border-color: $error-border-color;
  a {
    color: $error-color; } }
```

---

<a href="#mixin-notice-source" rel="view source">view source</a>
<span id="mixin-notice"></span>
### [notice](#mixin-notice)($feedback-base-class)
```scss
@mixin notice($feedback-base-class: false) {
  @if $feedback-base-class {
    @extend .#{$feedback-base-class}; }
  @else {
    @include feedback-base; }
  background: $notice-bg-color;
  color: $notice-color;
  border-color: $notice-border-color;
  a {
    color: $notice-color; } }
```

---

<a href="#mixin-success-source" rel="view source">view source</a>
<span id="mixin-success"></span>
### [success](#mixin-success)($feedback-base-class)
```scss
@mixin success($feedback-base-class: false) {
  @if $feedback-base-class {
    @extend .#{$feedback-base-class}; }
  @else {
    @include feedback-base; }
  background: $success-bg-color;
  color: $success-color;
  border-color: $success-border-color;
  a {
    color: $success-color; } }
```

---

<a href="#mixin-info-source" rel="view source">view source</a>
<span id="mixin-info"></span>
### [info](#mixin-info)($feedback-base-class)
```scss
@mixin info($feedback-base-class: false) {
  @if $feedback-base-class {
    @extend .#{$feedback-base-class}; }
  @else {
    @include feedback-base; }
  background: $info-bg-color;
  color: $info-color;
  border-color: $info-border-color;
  a {
    color: $info-color; } }
```

---

<a href="#mixin-highlight-source" rel="view source">view source</a>
<span id="mixin-highlight"></span>
### [highlight](#mixin-highlight)
```scss
@mixin highlight {
  background: $highlight-color; }
```

---

<a href="#mixin-added-source" rel="view source">view source</a>
<span id="mixin-added"></span>
### [added](#mixin-added)
```scss
@mixin added {
  background: $added-bg-color;
  color: $added-color; }
```

---

<a href="#mixin-removed-source" rel="view source">view source</a>
<span id="mixin-removed"></span>
### [removed](#mixin-removed)
```scss
@mixin removed {
  background: $removed-bg-color;
  color: $removed-color; }
```
