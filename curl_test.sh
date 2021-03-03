curl -X POST http://0.0.0.0:8091/encode \
  -H 'content-type: application/json' \
  -d '{"id": 111,"texts": ["总的来说，这款手机性价比是特别高的。","槽糕的售后服务！！！店大欺客"], "is_tokenized": false}'
