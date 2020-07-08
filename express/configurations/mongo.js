const monogoDbConfig = {
    USERNAME    : 'arnold',
    PASSWORD    : 'terminator1947',
    CLUSTER     : 'cluster0',
    DB          : 'skynetDb',
};

monogoDbConfig.URL = `mongodb+srv://` + 
    `${monogoDbConfig.USERNAME}:${monogoDbConfig.PASSWORD}@` + 
    `${monogoDbConfig.CLUSTER}.qfxxx.mongodb.net/` + 
    `${monogoDbConfig.DB}?retryWrites=true&w=majority`;


module.exports = monogoDbConfig;