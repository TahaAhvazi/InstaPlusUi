'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "manifest.json": "7f2dc422326c1881cc049adf03aa1e0d",
"assets/assets/images/myprofile.png": "f5fb36e087493b9ea7ed6c99dcf0d365",
"assets/assets/images/unselectedprofile.png": "45d9b605e917d4ba7d6e79a5fb000461",
"assets/assets/images/plane.png": "d9782a0e1f283565727361c9590f1eec",
"assets/assets/images/instagramicon.png": "4382d16b4d12bc1a1da0928d0ce3ac10",
"assets/assets/images/addstory.png": "5703b0ead390388ff4af322e66e2db46",
"assets/assets/images/girlprofile.png": "32442c41980566a203396eddfb8b3739",
"assets/assets/images/storybackgroundtwo.png": "7580bb3ce086bcfcf1b4942881bdf88c",
"assets/assets/images/qrcode.png": "d10b10fe627df1b83f6659bdabac10cd",
"assets/assets/images/saveicon.png": "10ce6e4dca468faaa278e107386a44d2",
"assets/assets/images/selectedsearchicon.png": "d365e2b1270f1853ed920d5e3c177010",
"assets/assets/images/igtv.png": "e5674c9e4e62c077cb7f9ebf9005f6d6",
"assets/assets/images/fast.png": "d3d5c1fe656cdb4293c830f6fa169727",
"assets/assets/images/backgroundstoryone.png": "abc2e43d694fdd4751b4aa557eacbfa3",
"assets/assets/images/selectedhomeicon.png": "87f0f021cd46509e66e99d8c68da6abc",
"assets/assets/images/covid.png": "285ebf817fa4234078634d058e2e955e",
"assets/assets/images/shop.png": "db7a121fb2c28ffd2d99f5017b0a0507",
"assets/assets/images/unselectedhomeicon.png": "aed6176bf952f085945d0f0c71f0a6f7",
"assets/assets/images/profile.png": "dc1861b7d19bb17e58eb8b6d3ebb5453",
"assets/assets/images/Instagramlogo.png": "bd0868df7d1ac27aadc0df4a26663054",
"assets/assets/images/selectedprofile.png": "f40a97c9642b33a5d138d4f5d0d4f63d",
"assets/assets/images/boyprofile.png": "dcf3b19b41d7ba3bd3744adc27534a54",
"assets/assets/images/chat.png": "c889f63be5245da684b790a2c113b543",
"assets/assets/images/shareicon.png": "1f8d10d503c37796455425d4af4b09f7",
"assets/assets/images/unselectedsearchicon.png": "db02bf953ed942b312af43dbf428ef84",
"assets/assets/images/add.png": "7e019de386df18a190b4c7a829bc1987",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/NOTICES": "74a5bed8b0d964bf30fe1606ecdcdefe",
"assets/AssetManifest.json": "46a6ba096f1bc4584fb55e219e9e591a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"version.json": "95fbfc7541202ec2ba475fbb88a9a2a3",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"index.html": "7bab1e59d755677d7433f961454f4b7d",
"/": "7bab1e59d755677d7433f961454f4b7d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "78772ce65ff91d545cd1b8ea1720e54e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
