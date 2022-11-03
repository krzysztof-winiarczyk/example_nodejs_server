# Example node.js server
## Tworzenie obrazu dockerowego
Wszystkie komendy należy wykonać w terminalu WSL po kolei

1) W katalogu `/mnt/c/Users/_nazwa_uzytkownika_windows_` :

- skopiować klucze do katalogu domowego użytkownika linux:
```  
cp ./.ssh/id_ed25519 ~/.ssh/id_ed25519
```
```
cp ./.ssh/id_ed25519.pub ~/.ssh/id_ed25519.pub
```
- zmienić uprawnienia do pliku zawierającego klucz prywatny
```
chmod 600 ~/.ssh/id_ed25519
```
- uruchomić agenta ssh (ssh-agent)
```
eval $(ssh-agent)
```
- dodać klucz prywatny do agetna
```
ssh-add ~/.ssh/id_ed25519 
```
2) W katalogu zawierającym plik Dockerfile
- zbudować obraz przy użyciu pliku Dockerfile
```
DOCKER_BUILDKIT=1 docker build --ssh default -t appfromgit.v1 -f Dockerfile .
```

