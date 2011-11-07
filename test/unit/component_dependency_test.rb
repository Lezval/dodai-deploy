#
# Copyright 2011 National Institute of Informatics.
#
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.
require 'test_helper'

class ComponentDependencyTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  # called before every single test
  def setup
    @cd = ComponentDependency.new(:operation => 'install', :software => Software.find_by_name("nova"))
  end

  # called after every single test
  def teardown
    @cd = nil
  end

  test "should not save ComponentDependency without operation" do
    @cd.operation = nil
    assert !@cd.save
  end

  test "should not save ComponentDependency without software" do
    @cd.software = nil
    assert !@cd.save
  end

  test "should be success saved ComponentDependency" do
    assert @cd.save
  end

end
