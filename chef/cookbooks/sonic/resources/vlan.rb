#
# Cookbook Name:: sonic
# File:: resources/vlan.rb
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
actions :create, :delete, :add_participation, :del_participation
default_action :create

attribute :name,               :kind_of => String, :name_attribute => true
attribute :vlan_id,            :kind_of => Integer, :required => true, :regex => /^([1-9]|[1-9][0-9]{1,2}|[1-3][0-9]{3}|40[0-8][0-9]|409[0-4])$/
attribute :participation_list, :kind_of => Array
attribute :tagging_mode,       :kind_of => String, :equal_to => ['tagged', 'untagged'], :default => 'tagged'

attr_accessor :exists

