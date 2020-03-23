// Use a cacheName for cache versioning
var cacheName = 'v1:static';

// During the installation phase, you'll usually want to cache static assets.
self.addEventListener('install', function(e) {
    // Once the service worker is installed, go ahead and fetch the resources to make this work offline.
    e.waitUntil(
        caches.open(cacheName).then(function(cache) {
            return cache.addAll([
                './a1b3c2/',
                './a1b3c2/main.html',
                './a1b3c2/main.js',
                './a1b3c2/onsenui/css/onsenui.css',
                './a1b3c2/onsenui/css/onsen-css-components.min.css',
                './a1b3c2/onsenui/js/onsenui.min.js',
                './a1b3c2/engine/engine.js',
                './a1b3c2/engine/native.js'
            ]).then(function() {
                self.skipWaiting();
            });
        })
    );
});

// when the browser fetches a URL…
self.addEventListener('fetch', function(event) {
    // … either respond with the cached object or go ahead and fetch the actual URL
    event.respondWith(
        caches.match(event.request).then(function(response) {
            if (response) {
                // retrieve from cache
                return response;
            }
            // fetch as normal
            return fetch(event.request);
        })
    );
});
