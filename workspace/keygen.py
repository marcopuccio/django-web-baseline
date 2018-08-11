#!/usr/bin/env python
from __future__ import unicode_literals

import string
import random


AVAILABLE_CHARS = [
    string.ascii_letters,
    string.digits,
]
ALLOWED_CHARS = ''.join(AVAILABLE_CHARS)


def secret_key_generator(size=32, chars=ALLOWED_CHARS):
    """
    Generate a new Django SECREY KEY.
    """
    return ''.join(random.SystemRandom().choice(chars) for c in range(size))


print secret_key_generator()
