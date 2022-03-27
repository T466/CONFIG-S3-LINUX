# CONFIG-S3-LINUX
CONFIG-S3-LINUX  configura o bucket S3 em um sistema Linux

# step 1
Execute o comando abaixo de forma que possa inserir o ID da chave de acesso : a chave de acesso secreta

echo ID-chave-de-acesso:Chave-acesso-secreta > /root/.passwd-s3fs

# step 2
Copie o arquivo Config-S3-Linux.sh em /root, conceda a permissão 755 e execute /root/Config-S3-Linux.sh;

# step 3
Ao final do script siga as instruções configurando o nome do bucket e o local onde ele será montado.
