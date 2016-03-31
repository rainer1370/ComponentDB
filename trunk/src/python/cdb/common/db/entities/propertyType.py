#!/usr/bin/env python

from cdb.common.db.entities.cdbDbEntity import CdbDbEntity
from cdb.common.objects import propertyType

class PropertyType(CdbDbEntity):

    mappedColumnDict = {
        'property_type_category_id' : 'propertyTypeCategoryId',
        'property_type_handler_id' : 'propertyTypeHandlerId',
        'default_value' : 'defaultValue',
        'default_units' : 'defaultUnits',
    }
    cdbObjectClass = propertyType.PropertyType

    def __init__(self, **kwargs):
        CdbDbEntity.__init__(self, **kwargs)


