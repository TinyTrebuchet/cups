---
title: Common UNIX Printing System 1.1.22rc1
layout: post
permalink: /blog/:year-:month-:day-:title.html
---

<P>The first release candidate for version 1.1.22 of the Common
- Now sanitize the device URI that is reported in the
- Fixed some memory and file descriptor leaks in the job
- Deleting a printer could cause a crash with browsing
- Browsing would turn off if the scheduler got an EAGAIN
- The mime.types file didn't recognize PostScript as a