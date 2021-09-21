---
title: "Giving Back to Rails with rails-hidden_autocomplete"
---
In the course of developing [PodQueue](https://podqueue.fm), we stumbled across [a longstanding bug in Firefox](https://bugzilla.mozilla.org/show_bug.cgi?id=520561) that will populate hidden form inputs with random values if they don't have the attribute `autocomplete="off"`.

Since PodQueue is built on [Rails](http://rubyonrails.org/), and Rails uses hidden form inputs extensively for things like CSRF protection, we wound up needing to modify Rails methods that emit hidden form inputs to add this attribute, so that Firefox users wouldn't see unexpected behavior.

To give back to the Rails community, we've now packaged this into a standalone Ruby gem that any Rails 6.1 application can easily use: [`rails-hidden_autocomplete`](https://github.com/podqueue/rails-hidden_autocomplete)

When installed in a Rails app, this gem modifies all the built-in locations that Rails emits a hidden form input to add the necessary `autocomplete="off"` attribute, preventing Firefox from accidentally overwriting the hidden input values.
