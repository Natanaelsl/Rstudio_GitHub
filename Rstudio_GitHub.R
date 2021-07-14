### Referências ##############################################################

## https://gist.github.com/Z3tt/3dab3535007acf108391649766409421
## https://community.rstudio.com/t/usethis-use-github-error-in-validate-gh-pat/105737
## https://beatrizmilz.github.io/RLadies-Git-RStudio-2019/#1


#### 1. Inscreva-se em GitHub.com ############################################

## Se você não tem uma conta GitHub, inscreva-se aqui:
## https://github.com/join

# ----------------------------------------------------------------------------

#### 2. Instale git ##########################################################

## Se você não tiver o git instalado, faça-o:
## Windows ->  https://git-scm.com/download/win
## Mac     ->  https://git-scm.com/download/mac
## Linux   ->  https://git-scm.com/download/linux
##             or: $ sudo dnf install git-all

# ----------------------------------------------------------------------------

### 3. Configurar git com Rstudio ############################################

## defina seu nome de usuário e e-mail:
usethis::use_git_config(user.name = "SeuNome", user.email = "seu@mail.com")

## crie um token de acesso pessoal para autenticação:
usethis::create_github_token()
## caso use esta versão <2.0.0: use este :: browse_github_token () (ou ainda melhor: atualize use este!)

## definir token de acesso pessoal:
credentials::set_github_pat("SeuPAT")

## ou armazene-o manualmente em '.Renviron':
usethis::edit_r_environ()`
## armazene seu token de acesso pessoal com: GITHUB_PAT=xxxyyyzzz
## e certifique-se de que '.Renviron' termina com uma nova linha

# ----------------------------------------------------------------------------

#### 4. Verificar configurações ##############################################

usethis::git_sitrep()

## Seu nome de usuário e e-mail devem ser indicados corretamente na saída.
## Além disso, o relatório deve conter algo como:
## 'Personal access token: '<found in env var>''

# ----------------------------------------------------------------------------

#### 5. Se o erro abaixo persistir ###########################################

#> √ Checking that current branch is default branch ('master')
#> Error in validate_gh_pat(new_gh_pat(x)) :
#>   A GitHub PAT must consist of 40 hexadecimal digits

# Tente atualizar o pacote gh. Recentemente, ele adicionou suporte para o novo
# formato de token do GitHub, que você provavelmente está utilizando. Os novos
# tokens começam com "ghp_", e gh costumava ter problemas com isso.

# ----------------------------------------------------------------------------

#### 6. Para criar um projeto novo ###########################################

#> √ Checking that current branch is default branch ('master')
usethis::create_project("~/GitHub/Nome do projeto")
# Meus projetos são salvos dentro da pasta GitHub no diretório.

#>   A GitHub PAT must consist of 40 hexadecimal digits
usethis::use_git()

# Tente atualizar o pacote gh. Recentemente, ele adicionou suporte para o novo
usethis::use_github("Seu GitHub", private = FALSE)

# Commmit no terminal:
git commit -m "Seu comentário"

# Push pelo terminal:
git push


# ----------------------------------------------------------------------------

##############################################################################
