import os
import errno


def get_project_root():
    return os.path.dirname(os.path.abspath(__file__))


def create_path(path):
    try:
        os.makedirs(path)
    except OSError as e:
        if e.errno != errno.EEXIST:
            raise
