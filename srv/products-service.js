const cds = require('@sap/cds')

class ProductsService extends cds.ApplicationService {
  #log = cds.log('ProductsService')

  init() {
    this.after('READ', 'Products', req => this.#log.info('Read from Products'))
    return super.init()
  }
}

module.exports = ProductsService 