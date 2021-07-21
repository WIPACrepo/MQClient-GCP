"""Run integration tests for GCP backend."""

# local imports
from mqclient.testing_frameworks import integration_tests as it
from mqclient.testing_frameworks.integration_tests.utils import (  # pytest.fixture # noqa: F401 # pylint: disable=W0611
    queue_name,
)
from mqclient_gcp.gcp import Backend


class TestGCPQueue(it.common_queue_tests.PubSubQueue):
    """Run PubSubQueue integration tests with GCP backend."""

    backend = Backend()


class TestGCPBackend(it.common_backend_interface_tests.PubSubBackendInterface):
    """Run PubSubBackendInterface integration tests with GCP backend."""

    backend = Backend()
