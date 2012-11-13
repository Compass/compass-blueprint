---
layout: page
title: "Link Icons"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
Install this plugin to get the assets and an example stylesheet:

``` bash
compass install blueprint/link_icons
```

This file can be imported using: `@import "blueprint/link-icons"`

## Mixins

<a href="#mixin-no-link-icon-source" rel="view source">view source</a>
<span id="mixin-no-link-icon"></span>
### [no-link-icon](#mixin-no-link-icon)
```scss
@mixin no-link-icon {
  background: transparent none !important;
  padding: 0 !important;
  margin: 0 !important; }
```

---

<a href="#mixin-link-icon-base-source" rel="view source">view source</a>
<span id="mixin-link-icon-base"></span>
### [link-icon-base](#mixin-link-icon-base)
```scss
@mixin link-icon-base {
  padding: 2px 22px 2px 0;
  margin: -2px 0;
  background-repeat: no-repeat;
  background-position: right center; }
```

---

<a href="#mixin-link-icon-source" rel="view source">view source</a>
<span id="mixin-link-icon"></span>
### [link-icon](#mixin-link-icon)($name, $include-base)
```scss
@mixin link-icon($name, $include-base: true) {
  @if $include-base {
    @include link-icon-base; }
  background-image: image-url("link_icons/#{$name}"); }
```

---

<a href="#mixin-link-icons-source" rel="view source">view source</a>
<span id="mixin-link-icons"></span>
### [link-icons](#mixin-link-icons)
```scss
@mixin link-icons {
  a[href^="http:"],
  a[href^="mailto:"],
  a[href^="http:"]:visited,
  a[href$=".pdf"],
  a[href$=".doc"],
  a[href$=".xls"],
  a[href$=".rss"],
  a[href$=".rdf"],
  a[href^="aim:"] {
    @include link-icon-base; }
  a[href^="http:"] {
    @include link-icon("external.png", false); }
  a[href^="mailto:"] {
    @include link-icon("email.png", false); }
  a[href^="http:"]:visited {
    @include link-icon("visited.png", false); }
  a[href$=".pdf"] {
    @include link-icon("pdf.png", false); }
  a[href$=".doc"] {
    @include link-icon("doc.png", false); }
  a[href$=".xls"] {
    @include link-icon("xls.png", false); }
  a[href$=".rss"],
  a[href$=".rdf"] {
    @include link-icon("feed.png", false); }
  a[href^="aim:"] {
    @include link-icon("im.png", false); } }
```