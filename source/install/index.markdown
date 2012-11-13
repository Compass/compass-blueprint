---
layout: page
title: "Install"
date: 2012-11-01 21:58
comments: false
sharing: false
footer: false
sidebar: false
---

## Installing Ruby

Compass-blueprint runs on any computer that has [ruby](http://www.ruby-lang.org/en/downloads/) <span class="amp">&amp;</span> [compass installed](http://compass-style.org/install/).

For more advanced users you may want to install [rvm](http://rvm.beginrescueend.com/rvm/install/).

## Installing Compass-blueprint

Compass-blueprint is a Compass extension that runs on the command line. On any system with ruby and Compass installed, open your terminal and type:

1. `gem update --system`
2. `gem install compass-blueprint`
3. `compass create <myproject> --using blueprint`

<p class="note">Note: Values indicated by &lt;&gt; are placeholders. Change them to suit your needs.</p>

This will install Compass and Sass too. If you want to verify that compass is installed:

``` bash
compass version
```

---

## Manual Setup

When starting a project from scratch:

``` bash
compass create /path/to/project --using blueprint
```

When installing into an existing project:

``` bash
cd /path/to/project
compass install blueprint
```

To read more about using the Blueprint framework with Compass, [see the docs](/reference/)

---

## Rails Setup

``` bash
compass init rails /path/to/myrailsproject --using blueprint
```

## Next Steps

* [Get Help](/help/)