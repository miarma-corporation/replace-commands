# Replace Commands

### Example kubectl

Before replace:

```
kubectl get pods
kubectl cluster-info
```

Install replace, you cant edit demo-kubectl-miarmaco.bash to customize and add new replace commands in replace_miarmaco.bash:
```
curl https://raw.githubusercontent.com/miarma-corporation/replace-commands/master/demo-kubectl-miarmaco.bash > $HOME/demo-kubectl-miarmaco.bash
curl https://raw.githubusercontent.com/miarma-corporation/replace-commands/master/replace_miarmaco.bash > $HOME/replace_miarmaco.bash
echo "
source $HOME/replace_miarmaco.bash
" >> $HOME/.bash_profile
```

After replace in Christmas mode:

```
kubectl get presents
kubectl santa-claus-info
```