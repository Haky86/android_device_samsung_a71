/*
** Copyright 2023, The LineageOS Project
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
**
**     http://www.apache.org/licenses/LICENSE-2.0
**
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
*/

#include <utils/Log.h>

#include "hint-data.h"

int hint_compare(struct hint_data* first_hint, struct hint_data* other_hint) {
    if (first_hint == other_hint) {
        return 0;
    } else if ((first_hint && other_hint) && (first_hint->hint_id == other_hint->hint_id)) {
        return 0;
    } else {
        return 1;
    }
}

void hint_dump(struct hint_data* hint) {
    ALOGV("hint_id: %lu", hint->hint_id);
}
