#!/usr/bin/env python

#
# CDB Service
#

####################################################################

from cdb.common.service.cdbRestWebServiceBase import CdbRestWebServiceBase
from cdb.common.utility.cdbModuleManager import CdbModuleManager
from cdb.common.utility.configurationManager import ConfigurationManager
from cdb.common.impl.authorizationManager import AuthorizationManager
from cdbWebServiceRouteMapper import CdbWebServiceRouteMapper

####################################################################

class CdbWebService(CdbRestWebServiceBase):
 
    def __init__(self):
        CdbRestWebServiceBase.__init__(self, CdbWebServiceRouteMapper)

    def initCdbModules(self):
        self.logger.debug('Initializing cdb modules')

        # For testing purposes only, use NoOp authorization principal retriever
        self.logger.debug('Using NoOp Authorization Principal Retriever')
        from cdb.common.impl.noOpAuthorizationPrincipalRetriever import NoOpAuthorizationPrincipalRetriever
        principalRetriever = NoOpAuthorizationPrincipalRetriever()
        AuthorizationManager.getInstance().addAuthorizationPrincipalRetriever(principalRetriever)

        # Add modules that will be started.
        moduleManager = CdbModuleManager.getInstance()
        self.logger.debug('Initialized cdb modules')

    def getDefaultServerHost(self):
        return ConfigurationManager.getInstance().getServiceHost()

    def getDefaultServerPort(self):
        return ConfigurationManager.getInstance().getServicePort()

####################################################################
# Run service

if __name__ == '__main__':
    service = CdbWebService();
    service.run()
