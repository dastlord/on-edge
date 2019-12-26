#======================================================================================================#
# Copyright 2019 Trail of Bits
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.# Makefile for OnEdge
#======================================================================================================#

TEST_FLAGS := -test.failfast -test.v

.PHONY: test basic_test nested_test suppression_test on-edge.test vet

test: basic_test nested_test suppression_test

basic_test: on-edge.test
	./$< $(TEST_FLAGS) -test.run TestBasic

nested_test: on-edge.test
	./$< $(TEST_FLAGS) -test.run TestNested

suppression_test: on-edge.test
	./$< $(TEST_FLAGS) -test.run TestSuppression

on-edge.test:
	go test -race -c

vet:
	go vet -race -tests=false

#======================================================================================================#
