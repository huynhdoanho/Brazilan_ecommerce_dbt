from dagster_dbt import load_assets_from_dbt_project, DbtCliClientResource
from dagster import Definitions, file_relative_path

DBT_PROJECT_PATH = file_relative_path(__file__, "../brazillian_ecom")
DBT_PROFILES = file_relative_path(__file__, "../brazillian_ecom")

dbt_assets = load_assets_from_dbt_project(
    profiles_dir=DBT_PROFILES,
    project_dir=DBT_PROJECT_PATH,
    key_prefix=["ecommerce"]
)

resources = {
    "dbt": DbtCliClientResource(
        profiles_dir=DBT_PROFILES,
        project_dir=DBT_PROJECT_PATH
    )
}

defs = Definitions(assets=dbt_assets, resources=resources)
