#
# Cookbook Name:: apache2
# Recipe:: vhosts
#
# Copyright 2012, Adam Brett. All Rights Reserved.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe "apache2"

web_app "phpmyadmin" do
  server_name "phpmyadmin.dev.com"
  server_aliases ["phpmyadmin.local"]
  allow_override "all"
  docroot "/opt/phpmyadmin"
end

web_app "dev" do
  server_name "www.dev.com"
  server_aliases ["dev.com"]
  allow_override "all"
  docroot "/var/www/dev"
end

