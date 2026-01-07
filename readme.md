A telegram [bot](https://core.telegram.org/bots/api) to ban user and remove messages  
test: join [test-group](https://t.me/test_shield) then try to send 'crypto' or 'sex' in the chat (see [demo](./demo/demo.md))

feat:
- receive upddate form telegram webhook for all messgae sned in the chat then delete inapropriate messages

setup:
- add guardian bot to your groupe 
- give admin permission
- set whebhook that will receive updates ([your server link basicaly](/docs/webhook.md))
- on .env add required envs (see [env](./docs/env))
- start guardian

todo:
currently basic poc feel free to [pr](https://github.com/yayahc/guardian/pulls)
- [ ] code refactoring
- [ ] better docs
- [ ] inappropriate messgae detection
- [ ] add more actions
- [ ] add ban user feat
- [ ] deploy
