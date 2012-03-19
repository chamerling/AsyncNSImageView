---
layout: layout
title: "AsyncNSIMageView"
---

<a href="http://twitter.com/share" class="twitter-share-button" data-count="none" data-via="chamerling">Tweet this</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>

# What?
AsyncNSImageView is a fork of the famous [EGOImageLoading](https://github.com/enormego/EGOImageLoading). While EGOImageLoading allows to load UIImage (iOS) in the background, AsyncNSImageView targets OS X and UIImage loading in the background.

# Usage
Using it is as easy as using NSTableView delegates, extending NSTableCellView and and set the image URL you want to display...

<script src="https://gist.github.com/2116507.js?file=AsyncNSImageViewAppDelegate.m"></script>

For more details, check the source at [https://github.com/chamerling/AsyncNSImageView](https://github.com/chamerling/AsyncNSImageView). The project contains a sample with all required stuff inside.
