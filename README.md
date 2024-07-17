# cqupt-mirrors-howto

https://help.mirrors.cqupt.edu.cn

## How to use override function

There are inevitable reason to motify upstream(mirrorz) code, so a easy script `override.sh` is developed.

The `override.sh` script use `override` dir as root path and calculate a relative path, then perform an action to path `mirrorz-help/relative_path` file.

What action performed depends on the file's suffix under `override` dir. There are 2 suffixes supported now

1. `.patch` indicate this is a standard `patch` file (you can get this use cmd like `diff`)， so the action is `patch` this `.patch` file to dst.
2. `.all` indicate you wanna totally replace, so the action is `mv` this `.all` file to dst.

> e.g. 
>
>An override file: `override/src/routers.json.patch`, then this command will be applied.
>```sh
>patch override/src/routers.json.patch mirrorz-help/src/routers.json 
>```

## Acknowledgments

- [mirrorz-help](https://github.com/mirrorz-org/mirrorz-help)
- [xtom.help](https://github.com/xtomcom/xtom.help)
