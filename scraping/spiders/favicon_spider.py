import scrapy

OUTPUT_DIR = 'icons'

HTTPS = 0

class FaviconSpider(scrapy.Spider):
    name = 'favicon'

    def start_requests(self):
        with open('urls.txt') as urls:
            last_basename = None
            for url in urls:
                url = url.strip()
                basename = url.split('.')[0]
                if basename == last_basename:
                    continue
                last_basename = basename
                req = scrapy.Request('http{}://www.'.format('s' if HTTPS else '') + url + '/favicon.ico', callback=self.parse)
                req.meta['url'] = url
                yield req

    def parse(self, response):
        name = response.request.meta['url']
        if response.status != 200:
            return
        with open(OUTPUT_DIR + '/' + name + '.favicon.ico', 'wb') as f:
            f.write(response.body)
