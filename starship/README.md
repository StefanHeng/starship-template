# starship-template

<img
  src="https://github.com/StefanHeng/starship-template/blob/master/starship/assets/demo%2C%2003.29.22.png"
  style="zoom:50%;" />



My configuration for starship shell prompt


## Disable `conda`'s prompt modifier

From starship configuration, this may be helpful:

> The conda module shows the current Conda (opens new window) environment, if `$CONDA_DEFAULT_ENV` is set.

**TIP**

This does not suppress conda's own prompt modifier, you may want to run `conda config --set changeps1 False`.

