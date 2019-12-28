#!/bin/bash
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

# set -x
set -euo pipefail

WRAP_ONE="$(dirname "$0")/../cmd/wrap_one/wrap_one"

find . -name '*.go' -exec "$WRAP_ONE" {} \;

#======================================================================================================#
