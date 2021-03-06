#
# Cookbook:: golang_test
# Recipe:: default
#
# Copyright:: 2013, Alexander Rozhnov
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy
# of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.
#

include_recipe 'golang::packages'

golang_package 'github.com/go-check/check'

remote_directory '/tmp/hello_world'

golang_package 'github.com/golang/example/hello' do
  action %i(install build)
end
