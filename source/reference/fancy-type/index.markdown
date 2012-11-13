---
layout: page
title: "Fancy Type"
date: 2012-11-01 22:00
comments: false
sharing: false
footer: false
---
<a class="lsf-icon" title="github" href="https://github.com/Compass/compass-blueprint/blob/master/framework/blueprint/stylesheets/blueprint/_fancy-type.scss">View Source</a>

Fancy Typography for your website.

This file can be imported using: `@import "blueprint/fancy-type"`

## Compass Imports

1. [Typography](http://compass-style.org/reference/blueprint/typography/)

## Configurable Variables <a class="lsf-icon" title="help" href="/help/tutorials/configurable-variables/"></a>

<span id="const-alternate-text-font"></span>
[$alternate-text-font](#const-alternate-text-font) `"Warnock Pro", "Goudy Old Style", "Palatino", "Book Antiqua", Georgia, serif`

## Mixins

<a href="#mixin-fancy-type-source" rel="view source">view source</a>
<span id="mixin-fancy-type"></span>
### [fancy-type](#mixin-fancy-type)
``` scss
@mixin fancy-type {
  @include fancy-paragraphs;
  .caps {
    @include caps; }
  .dquo {
    @include dquo; }
  .alt {
    @include alt; } }
```

To install the fancy type plugin:

1. Import the fancy-type module: `@import "blueprint/fancy-type"`
2. Mix in `fancy-type` to your project's body or at the top level of your stylesheet:
`body { @include fancy-type; }`

---

<a href="#mixin-alt-source" rel="view source">view source</a>
<span id="mixin-alt"></span>
### [alt](#mixin-alt)
``` scss
@mixin alt {
  color: $alt-text-color;
  font-family: $alternate-text-font;
  font-style: italic;
  font-weight: normal; }
```

For great looking type, use this code instead of asdf: `<span class="alt">asdf</span>` Best used on prepositions and ampersands.

---

<a href="#mixin-dquo-source" rel="view source">view source</a>
<span id="mixin-dquo"></span>
### [dquo](#mixin-dquo)($offset)
``` scss
@mixin dquo($offset: 0.5em) {
  margin-left: -$offset; }
```
For great looking quote marks in titles, replace "asdf" with: `<span class="dquo">&#8220;</span>asdf&#8221;` (That is, when the title starts with a quote mark). *Note: you may have to change this value depending on your font size.*

---

<a href="#mixin-incr-source" rel="view source">view source</a>
<span id="mixin-incr"></span>
### [incr](#mixin-incr)($font-size, $base-font-size, $old-line-height)
```scss
@mixin incr($font-size: 10px, $base-font-size: $blueprint-font-size, $old-line-height: $base-font-size * 1.5) {
  font-size: 1em * $font-size / $base-font-size;
  line-height: 1em * $old-line-height / $font-size * 4 / 5;
  margin-bottom: 1.5em; }
```

Reduced size type with [incremental leading](http://www.markboulton.co.uk/journal/incremental-leading)

This could be used for side notes. For smaller type, you don't necessarily want to follow the 1.5x vertical rhythm -- the line-height is too much.

Using this mixin, reduces your font size and line-height so that for every four lines of normal sized type, there is five lines of the sidenote. eg:

Arguments: * `$font-size` - The desired font size in pixels. This will be converted to ems for you. Defaults to 10px. * `$base-font-size` - The base font size in pixels. Defaults to 12px * `$old-line-height` - The old line height. Defaults to 1.5 times the base-font-size

---

<a href="#mixin-caps-source" rel="view source">view source</a>
<span id="mixin-caps"></span>
### [caps](#mixin-caps)
``` scss
@mixin caps {
  font-variant: small-caps;
  letter-spacing: 1px;
  text-transform: lowercase;
  font-size: 1.2em;
  line-height: 1%;
  font-weight: bold;
  padding: 0 2px; }
```

Surround uppercase words and abbreviations with this class. Based on work by [Jørgen Arnor Gårdsø Lom](http://twistedintellect.com/)

---

<a href="#mixin-fancy-paragraphs-source" rel="view source">view source</a>
<span id="mixin-fancy-paragraphs"></span>
### [fancy-paragraphs](#mixin-fancy-paragraphs)
``` scss
@mixin fancy-paragraphs {
  p + p {
    @include sibling-indentation; }
  p.incr,
  .incr p {
    @include incr; } }
```

This mixin is automatically included when you include `fancy-type`

---

<a href="#mixin-sibling-indentation-source" rel="view source">view source</a>
<span id="mixin-sibling-indentation"></span>
### [sibling-indentation](#mixin-sibling-indentation)
``` scss
@mixin sibling-indentation {
  text-indent: 2em;
  margin-top: -1.5em;
  /* Don't want this in forms. */
  form & {
    text-indent: 0; } }
```

Indentation instead of line shifts for sibling paragraphs. Mixin to a selector like `p + p`