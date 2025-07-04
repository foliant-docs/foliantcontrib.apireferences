# 1.0.9

- New: `apiref_registry_url` option. Enables the use of a remote registry.

# 1.0.8

- New: `max_endpoint_prefix` (default: `False`) option for `find_by_anchor` and `find_by_tag_content` modes. Used to find the highest available version of the API method when API methods have different maximum versions in the documentation.

# 1.0.7

- Fix: small fix for proper work when input reference is a list item and have initial and last spaces inside

# 1.0.6

- Fix: now the preprocessor works correctly with initial and last spaces in input references like ``` ` Client-API: GET user/info ` ```

# 1.0.5

- New: `use_multiproject_mode` option (default: `True`) to use cached API registries in multiproject

# 1.0.4

-   New: `endpoint_prefix_list` option (default: `[]`) for every API class

# 1.0.3

-   New: `trim_query` option (default: True) for every API class

# 1.0.2

-   New utils module.

# 1.0.1

-   Better logging and output.
-   New: `warning_level` param.

# 1.0.0

-   Initial release.
