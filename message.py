import requests, json, sys

message = f'Løsningsforslag for uge {sys.argv[1]} er nu uploadet til Github'
url = f'https://github.com/diplomit-dtu/20312SolutionsPublic/tree/master/{sys.argv[2]}/src'
image = 'https://cdn.afterdawn.fi/v3/news/original/github-logo.png'
data = {
        'content': message,
        'embeds': [{
            'title':f'Løsninger for uge {sys.argv[1]}',
            'url':url,
            'thumbnail': {'url':image},
            },]
        }

bot = 'https://discordapp.com/api/webhooks/753903273135702076/oNEA2gXau420biQWTSWG_k0waAZ4XjWQhR6dLAKLgKI03yl3jSI0th9YvIXyY9fctiuK'

r = requests.post(bot,json=data)
print('Sender besked til Discord:', r)
print(r.text)
