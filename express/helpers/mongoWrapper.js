const MongoClient = require('mongodb').MongoClient
const _keys = require('../configurations/mongo');
var moment = require('moment-timezone');

class MongoAPI extends MongoClient {

    /**
    * Kind of contructor function that estalishes the connection with Mongo Database
    * and stores it in to the @property {client} this.client for future calls
    * 
    */
    async establishConnection() {
        try {
            this.client = await MongoClient.connect(_keys.URL, { useNewUrlParser: true, useUnifiedTopology: true });
            if (!this.client) { throw new Error("Error connecting to Database"); }
            else { 
                console.log('Connection Succesful') 
            }
        } catch (e) { console.log(e); }

    }
    
    /**
    * A simple function to check whether the conenction is already established or not
    * 
    * @returns {true|false}
    */
    isConnected() {
        if (this.client) { return true; }
        else { return false; }
    }

    /**
    * Wrapper function to the Mongo Find
    * 
    * @param {string} collection 
    * @param {Object|null} filter 
    * @returns {Object|null}
    */
    async search(collection, filter = null, sortParams = null) {
        if (!this.isConnected()) { await this.establishConnection(); }

        try {
            const dbCollection = this.client.db(_keys.DB).collection(collection);
            let foundItem = '';
            if(!sortParams) foundItem = await dbCollection.find(filter).toArray();
            else    foundItem = await dbCollection.find(filter).sort(sortParams).toArray();
            
            return foundItem;
        }
        catch (error) {
            console.log(`Search Query Unsuccessful \n ${error}`);
            return null;
        }
        // finally { this.client.close() }
    }

    /**
    * Wrapper function to the Monogo update, to update records in the database
    * 
    * @param {string} collection 
    * @param {Object} filter 
    * @param {Object} updateParams 
    * @param {Object} options 
    */
   async update(collection, filter, updateParams, options) {
    if (!this.isConnected()) { await this.establishConnection(); }

    try {
        const dbCollection = this.client.db(_keys.DB).collection(collection);
        const x = await dbCollection.updateOne(filter, updateParams, options);
    } catch (error) {
        console.log('DB Update Unsuccessfull');
        console.log(error);
    } finally {
        // this.client.close();
    }

}

    
   
}

module.exports = MongoAPI;


