chrome Cookbook
===============
Installs Google Chrome via Chocolatey packages.

Requirements
------------
Runs on windows. Only tested on win 7 so far.

#### packages
- `chocolatey` - chrome needs chocolatey to install packages.

Attributes
----------
````
default['chrome']['package_version'] = :latest
default['chrome']['arch'] = :x64
````

Usage
-----
Just include `chrome` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chrome]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ivan Li
