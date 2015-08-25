#!/bin/bash


source link_creator.sh ../.. full/debug/ "debug/*.rpm"
source link_creator.sh ../.. full/development/ "development/*.rpm"
source link_creator.sh .. full/ "*.rpm"
