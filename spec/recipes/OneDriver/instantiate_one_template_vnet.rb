# Copyright 2016, BlackBerry Limited
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

machine 'OpenNebula-test-vm-vnet' do
  machine_options MACHINE_OPTIONS.merge(
    :bootstrap_options => {
      :template_name => 'OpenNebula-test-tpl-mix',
      :template_options => {
        'NIC' => {
          'NETWORK' => 'OpenNebula-test-vnet',
          'NETWORK_UNAME' => username
        }
      },
      :mode => '666'
    }
  )
end
