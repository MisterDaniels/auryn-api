> Feature em desenvolvimento, novos materiais estarão disponíveis em breve

## Comandos

### Iniciar aplicação em desenvolvimento
```bash
docker run --rm --name auryn-api -p 4567:4567 -v $(pwd)/source:/srv/slate/source -v $(pwd)/config.rb:/srv/slate/config.rb slatedocs/slate serve
```

### Buildar para produção
```bash
docker run --rm --name auryn-api-builder -v $(pwd)/build:/srv/slate/build -v $(pwd)/source:/srv/slate/source -v $(pwd)/config.rb:/srv/slate/config.rb slatedocs/slate build
```

[Para saber mais](https://github.com/slatedocs/slate/#readme)