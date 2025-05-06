import importlib.util

def test_dag_loads():
    dag_path = "dags/dummy_dag.py"
    spec = importlib.util.spec_from_file_location("test_dag", dag_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    assert hasattr(module, "dag")
