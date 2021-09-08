---
title: How We Deliver Blazing Fast RSS Feeds
---

Here at [PodQueue](https://podqueue.fm), we know there's nothing more frustrating than *knowing* a podcast feed has a new episode and waiting for it to show up in your podcast client. So we wanted the dynamic RSS feeds we generate for each PodQueue playlist to be fast *and* always up-to-date. We accomplished that in a few different ways, and we're proud of the results!

The primary way that we can deliver the absolute fastest RSS feed possible is not by generating it when a client requests it, but by instead generating a static file which we can then distribute via [CDN (Content Delivery Network)](https://en.wikipedia.org/wiki/Content_delivery_network). So, every time a PodQueue playlist is updated (e.g. you add a link to a podcast episode or other audio on the web you want to listen to later), we regenerate the podcast RSS feed, and if the feed has changed we upload it to our CDN with the appropriate headers.

If you're a software programmer, you may notice that there would be potential here to serve an outdated playlist - if a client requests an RSS feed from the CDN *while* the new static file is being generated, it could get an outdated version. That's why we only use the CDN via a redirect from our main feed URL. The endpoint at the main feed URL *checks* to see if the static version is outdated when a client requests the feed; if it's up-to-date it redirects to the CDN, if it's outdated it generates and serves the RSS feed on-the-fly.

And we really mean on-the-fly: we use Rails' `ActionController::Streaming` to return a streaming HTTP response that clients can parse for new episodes as the data streams in, meaning less time waiting for new episodes to show up. We also take advantage of Rails' [Russian Doll Caching](https://guides.rubyonrails.org/caching_with_rails.html#russian-doll-caching) to ensure that playlist RSS feeds render as fast as possible. We've even [added an integration](https://podqueue.fm/pages/help/overcast_integration) for the popular [Overcast podcast player](https://overcast.fm/) to keep your feeds as fresh as possible if you use Overcast!

All of this combines to give PodQueue users a seamless and frustration-free experience when they want to listen to their PodQueue podcast feeds, wherever they listen to podcasts.
