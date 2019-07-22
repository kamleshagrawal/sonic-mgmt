#
# Cookbook Name:: sonic
# File:: attributes/default.rb
#
# Copyright 2019, Broadcom
#
# All rights reserved - Do Not Redistribute
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

default[:sonic][:providers][:vlan] = "sonic_vlan"
default[:sonic][:providers][:interface] = "sonic_interface"
default[:sonic][:providers][:lag] = "sonic_lag"
default[:sonic][:providers][:fdb] = "sonic_fdb"
