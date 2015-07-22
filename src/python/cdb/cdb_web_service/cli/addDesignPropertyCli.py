#!/usr/bin/env python

from cdbWebServiceCli import CdbWebServiceCli
from cdb.cdb_web_service.api.designRestApi import DesignRestApi
from cdb.common.exceptions.invalidRequest import InvalidRequest

class AddDesignPropertyCli(CdbWebServiceCli):
    def __init__(self):
        CdbWebServiceCli.__init__(self)
        self.addOption('', '--design-id', dest='designId', help='Design id (required).')
        self.addOption('', '--property-type-id', dest='propertyTypeId', help='Property type id (required).')
        self.addOption('', '--tag', dest='tag', help='Property value tag.')
        self.addOption('', '--value', dest='value', help='Property value.')
        self.addOption('', '--units', dest='units', help='Property value units.')
        self.addOption('', '--description', dest='description', help='Property value description.')
        self.addOption('', '--is-dynamic', dest='isDynamic', default=False, help='Dynamic flag (default: False).')
        self.addOption('', '--is-user-writeable', dest='isUserWriteable', default=False, help='User writeable flag (default: False).')

    def checkArgs(self):
        if self.options.designId is None:
            raise InvalidRequest('Design id must be provided.')
        if self.options.propertyTypeId is None:
            raise InvalidRequest('Property type id must be provided.')

    def getDesignId(self):
        return self.options.designId

    def getPropertyTypeId(self):
        return self.options.propertyTypeId

    def getDescription(self):
        return self.options.description

    def getTag(self):
        return self.options.tag

    def getValue(self):
        return self.options.value

    def getUnits(self):
        return self.options.units

    def getIsDynamic(self):
        return self.options.isDynamic

    def getIsUserWriteable(self):
        return self.options.isUserWriteable

    def runCommand(self):
        self.parseArgs(usage="""
    cdb-add-design-property --design-id=COMPONENTID 
        --property-type-id=PROPERTYTYPEID
        [--tag=TAG]
        [--value=VALUE]
        [--units=UNITS]
        [--description=DESCRIPTION]
        [--is-dynamic=ISDYNAMIC]
        [--is-user-writeable=ISUSERWRITEABLE]

Description:
    Add design property.
        """)
        self.checkArgs()
        api = DesignRestApi(self.getUsername(), self.getPassword(), self.getServiceHost(), self.getServicePort(), self.getServiceProtocol())
        designProperty = api.addDesignProperty(designId=self.getDesignId(), propertyTypeId=self.getPropertyTypeId(), tag=self.getTag(), value=self.getValue(), units=self.getUnits(), description=self.getDescription(), isDynamic=self.getIsDynamic(), isUserWriteable=self.getIsUserWriteable())
        print designProperty.getDisplayString(self.getDisplayKeys(), self.getDisplayFormat())

#######################################################################
# Run command.
if __name__ == '__main__':
    cli = AddDesignPropertyCli()
    cli.run()

