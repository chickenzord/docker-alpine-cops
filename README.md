# COPS on Docker

Docker image for [COPS (Calibre OPDS server)](https://github.com/seblucas/cops) based on Alpine Linux

## Sample command

```
docker run --rm --name cops \
  -p 9000:9000
  -v $HOME/books:/books
  -e COPS_TITLE=Books
  chickenzord/cops
```

## Exposed ports

The PHP web server is listening on `9000`, feel free to map it as you wish.

## Volumes

- `/www`: Where COPS code located
- `/books`: Mount your Calibre library here

## Configurable environment variables

- `COPS_TITLE`: Override COPS webpage title (default: Cops)

## Credits

COPS by Sébastien Lucas (https://github.com/seblucas/cops)
