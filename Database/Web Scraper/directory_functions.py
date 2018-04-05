import os
import errno


def get_project_root():
    return os.path.dirname(os.path.abspath(__file__))


def get_intel_root():
    return os.path.join(get_project_root(), 'CPU_Intel\\')


def get_amd_root():
    return os.path.join(get_project_root(), 'CPU_AMD\\')


def create_path(path):
    try:
        os.makedirs(path)
    except OSError as e:
        if e.errno != errno.EEXIST:
            raise


def create_cpu_root():
    create_path(get_intel_root())
    create_path(get_amd_root())


def create_cpu_path(path, brand):
    if brand.lower() == 'amd':
        create_path(os.path.join(get_amd_root(), path))
    elif brand.brand.lower() == 'intel':
        create_path(os.path.join(get_intel_root(), path))