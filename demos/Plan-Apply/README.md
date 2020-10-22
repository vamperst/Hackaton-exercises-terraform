1. Execute o comando para criar a chave ssh que será utilizada em todos os exercicios e já coloca-la no lugar correto.
   ```
    aws --region us-east-1 ec2 \
    create-key-pair \
    --key-name "fiap-lab" \
    | \
    jq -r ".KeyMaterial" > ~/.ssh/fiap-lab.pem   
   ```
2. Execute o comando `chmod 400 ~/.ssh/fiap-lab.pem` para que a chave tenha a permissão correta.
3. Execute o comando `cd ~/environment/Hackaton-exercises-terraform/demos/Plan-Apply` para entrar na pasta do exercício.
4. Entre na pasta EC2 `cd EC2`
5. Execute o comando `terraform init`
   ![init](images/terraforminit.png)
6. Agora execute um `terraform plan` para ver o que será executado.
   ![plan](images/plan.png)
7. Agora execute um `terraform apply -auto-approve` para que sejam criados os recursos na AWS.
    ![apply](images/apply.png)
8. Vá até o painel da AWS para ver o recurso criados
    ![awspainelec2](images/painelec21.png)
9. Execute o comando `terraform destroy -auto-approve` para destruir os recursos criados.
   ![destroy](images/Destroy.png)
10. Se for ao painel verá que o recurso realmente não esta mais lá
   ![ec22](images/painelec22.png)
11. Agora saia dessa pasta com o comando `cd ..`
12. Entre na pasta EC2-ssh com o comando `cd EC2-ssh`
13. Nesse exemplo voce utilizará a chave fiap-lab que criou. Para iniciar o processo execute o comando `terraform init`.
14. Este exemplo irá criar maquinas ec2 e acessar as mesmas para instalar Nginx. Para planejar execute o comando `terraform plan`
15. Antes de executar o apply, abra uma aba no seu navegador e vá para o painel do EC2 na AWS. Basta Clicar em serviços e digitar EC2.
16. No menu lateral esquerdo, clique em 'Security Groups' 
    ![](images/painelec2.png)
17. Selecione o Security Group que tem 'default' na coluna Group Name. Vá a aba inbound e clique em 'Edit'
    ![](images/sgpainel.png)
18. Altere o dropbox de Source para Anywhere como na imagem abaixo, e clique em save.
    ![](images/anywhere.png)
19. Se tudo estiver certo execute o comando `terraform apply -auto-approve` no terminal do Cloud9 que estava antes.
20. Qunado o trabalho for concluido com sucesso, você pode pegar o dns da maquina criada que esta no final outputs do terraform e colocar no navegar que irá ser exibida uma pagina inicial do Nginx.
    ![nginx](images/nginxworks.png)
21. Por fim execute `terraform destroy -auto-approve`
22. Se certifique que o destroy funcionou



