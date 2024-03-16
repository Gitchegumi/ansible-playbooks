from azureml.core import Workspace
from azureml.core.compute import ComputeTarget, ComputeInstance
from azureml.core.compute_target import ComputeTargetException

ws = Workspace.from_config()  # this loads the workspace configuration from aml_config/config.json

# Choose a name for your compute instance
compute_name = "ci-name"

# Verify that the compute instance does not exist already
try:
    compute_target = ComputeTarget(workspace=ws, name=compute_name)
    print('Found existing compute target.')
except ComputeTargetException:
    print('Creating a new compute target...')
    compute_config = ComputeInstance.provisioning_configuration(
        vm_size='STANDARD_D3_V2',
        ssh_public_access=False,
        # vnet_resourcegroup_name='<my-resource-group>',
        # vnet_name='<my-vnet-name>',
        # subnet_name='<my-subnet-name>',
    )
    compute_target = ComputeTarget.create(ws, compute_name, compute_config)
    compute_target.wait_for_completion(show_output=True, min_node_count=None, timeout_in_minutes=20)

print("Azure Machine Learning Compute instance created")