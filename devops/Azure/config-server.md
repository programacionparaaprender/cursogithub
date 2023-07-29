
### si se usa application.yml
server: port: 8888 spring: application: name: ms cloud: config: server: git: uri: ${GIT} username: ${USERNAME} password: ${PASSWORD} default-label: main azure: keyvault: uri: ${URI} client-id: ${CLIENT_ID} client-key: ${CLIENT_KEY} tenant-id: ${tenant} profiles: active: git, keyvault