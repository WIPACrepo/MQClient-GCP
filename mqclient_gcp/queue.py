"""Queue class encapsulating a pub-sub messaging system with GCP."""


from typing import Any

import mqclient

from . import gcp


class Queue(mqclient.Queue):
    __doc__ = mqclient.Queue.__doc__

    def __init__(self, *args: Any, **kargs: Any) -> None:
        super().__init__(gcp.Backend, *args, **kargs)
