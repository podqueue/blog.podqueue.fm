---
title: "No, You Don't Need a Cookie Popup on Your Site"
---

---

**TL;DR:** No, you don't need a cookie popup on your site. Yes, you do need to comply with the GDPR and the ePrivacy Directive.

---

A frequent question for people starting a website these days is: "[Don't I need a cookie popup?](https://www.indiehackers.com/post/do-you-use-a-cookie-popup-on-your-website-9357919268)"

With cookie consent notifications seemingly everywhere, it's a reasonable question. But just because other websites use cookie popups, doesn't mean yours has to.

When I was building [PodQueue](https://podqueue.fm), I wanted to be extremely sensitive to user privacy. [I even wrote up a post about how to use Rails without setting session cookies](https://blog.podqueue.fm/2021/08/29/going_cookie-free_with_rails/). As it turns out though, **as long as you're willing to exclusively use certain kinds of first-party cookies**, you do not need a cookie popup.

Don't just take my word for it, though. Look at the regulations, the explanations, and [the ongoing enforcement of cookie consent policies](https://www.iccl.ie/news/gdpr-enforcer-rules-that-iab-europes-consent-popups-are-unlawful/). [GDPR.eu has a very good explainer article here](https://gdpr.eu/cookies/), and the most important point for you if you want to avoid using a cookie popup is this:

> Receive users’ consent before you use any cookies **except** strictly necessary cookies.

If you're only using strictly necessary cookies, you don't need a cookie popup. So, what are "strictly necessary cookies"? 

> Strictly necessary cookies — These cookies are essential for you to browse the website and use its features, such as accessing secure areas of the site. Cookies that allow web shops to hold your items in your cart while you are shopping online are an example of strictly necessary cookies. These cookies will generally be first-party session cookies.

The linked article then goes on to contrast these with other types of cookies (preferences, statistics, and marketing), but the important takeaway is **as long as you only use first-party session cookies, you don't need a cookie popup**.

Yes, this means you need to read up on the other kinds of cookies and ensure you're not using them. Yes, this may have technical implications for how you design your website. But the payoffs&mdash;respecting your users' privacy and avoiding annoying popups&mdash;are well worth the investment.

---

*Disclaimer: I am not a lawyer, and nothing in this post should be taken as legal advice.*
