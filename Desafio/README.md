# Exercicio Terraform

Utilize o código da demo Count e faça as seguintes mudanças:

1. Adicione estado remoto no S3
2. Mude os arquivos para que os arquivos virem um módulo que recebe a quantidade de nós no load balancer
3. Monte o arquivo que chama o módulo recem criado.
4. Os nomes das maquinas devem ser de acordo com o ambiente do workspace. Ex: nginx-workspace-002
5. Crie um ambiente de prod e um deve
6. Faça um zip dos arquivos desse exercicio e submeta no portal da fiap.


#### Ajuda
[How to create modules]([https://link](https://blog.gruntwork.io/how-to-create-reusable-infrastructure-with-terraform-modules-25526d65f73d))
[Modules Composition]([https://link](https://www.terraform.io/docs/modules/composition.html))
[Creating Modules](https://www.terraform.io/docs/modules/index.html)
[AWS datasources](https://www.terraform.io/docs/providers/aws/d/instances.html)