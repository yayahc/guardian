A telegram [bot](https://core.telegram.org/bots/api) to ban user and remove messages
test: join test-group then try to send 'crypto' or 'sex' in the chat (see [demo](./demo/demo.mov))

feat:
- receive upddate form telegram webhook for all messgae sned in the chat then delete inapropriate messages

setup:
- add shield bot to your groupe 
- give admin permission
- set whebhook that will receive updates ([your server link basicaly](/docs/webhook.md))
- on .env add required envs (see [env](./docs/env))
- start shield

todo:
currently basic poc feel free to [pr](https://github.com/yayahc/shield/pulls)
- [ ] code refactoring
- [ ] better docs
- [ ] add ban user feat
- [ ] deploy