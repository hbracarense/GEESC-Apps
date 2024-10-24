library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(shinyjs)
library(shinycssloaders)
library(shinythemes)

#Apresentação-------------------------------------------------------------------
tab_apresentacao <-tabPanel(
         "",
         fluidRow(
           column(12,
                  align = 'center',
                  h1("Bem-vindo ao Portal de Aplicativos do GEESC!"),
                  box(
                    width = 1,
                    solidHeader = TRUE,
                    p("Sem sombra", style ="text-align: justify;", style = "color: white;", style = "font-size:18px;"),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    p("Sem sombra", style ="text-align: justify;", style = "color: white;", style = "font-size:18px;")
                  ),
                  box(
                    width = 10,
                    solidHeader = TRUE,
                    br(),
                    column(
                      width = 12,
                      div(tags$h3("Sobre o Grupo", style="text-align:left; color:black"),
                          class = "col-sm-6", style = "padding-left:20px"),
                      box(width = 12,             
                          status = "warning",
                          solidHeader = FALSE,
                          p("O ", a(href = 'https://geesc.cedeplar.ufmg.br/', 'GEESC', .noWS = "outside"), .noWS = c("after-begin", "before-end"), " é o Grupo de Estudos em Economia da Saúde e Criminalidade, abrigado no Centro de Desenvolvimento e Planejamento Regional (CEDEPLAR), sede do Programa de Pós-Graduação em Economia e Demografia da Faculdade de Ciências Econômicas da Universidade Federal de Minas Gerais. Teve seu início em 2001, com a intensifação das pesquisas na área de Economia da Saúde. Constituído principalmente por professores, pesquisadores e alunos do CEDEPLAR, o grupo desenvolve pesquisas acadêmicas e trabalhos, sobretudo na área de planejamento e avaliação de políticas em saúde e criminalidade envolvendo os setores público e privado.", style ="text-align: justify;", style = "color: black;", style = "font-size:18px;")
                          
                      )
                    ),
                    br(),
                    column(
                      width = 12,
                      div(tags$h3("Aplicativos", style="text-align:left; color:black"),
                          class = "col-sm-6", style = "padding-left:20px"),
                      box(width = 12,             
                          status = "warning",
                          solidHeader = FALSE,
                          p("No curso das pesquisas desenvolvidas pelo GEESC, foram criados aplicativos que sintetizam os resultados alcançados. Desta forma, é possível ao mesmo tempo divulgar, para o público em geral, a produção científica do Grupo e fornecer ferramentas auxiliares na tomada de decisão de gestores de políticas de saúde. ", style ="text-align: justify;", style = "color: black;", style = "font-size:18px;"),
                          p("Estas plataformas estão reunidas aqui, no Portal de Aplicativos do GEESC. Clique nos links para conhecer um pouco mais do nosso trabalho.", style ="text-align: justify;", style = "color: black;", style = "font-size:18px;")
                          
                      ),
                      div(tags$h4("SIGAM-BR", style="text-align:left; color:black"),
                          class = "col-sm-6", style = "padding-left:20px"),
                      box(width = 12,             
                          status = "primary",
                          solidHeader = FALSE,
                          fluidRow(
                            column(
                              width = 8,
                              p("O " , a(href = 'https://geesc.shinyapps.io/sigam_br/', 'SIGAM-BR', .noWS = "outside"), .noWS = c("after-begin", "before-end")," é um Sistema de Informações de Gastos com Malaria nos estados da Região Amazônica Brasileira. Este sistema foi desenvolvido para estimar os gastos com malária financiados pelos municípios e governo Federal. O sistema permite desagregação das despesas anuais no nível municipal considerando três domínios principais:  Diagnostico e Tratamento, Recursos Humanos e Vigilância e Controle da malária. Esse painel traz indicadores de gasto total, per capita e por notificação e permite comparações regionais e anuais. Atualmente a plataforma está vigente para os anos de 2015 a 2019.", style ="text-align: justify;", style = "color: black;", style = "font-size:18px;")
                            ),
                            box(
                              width = 4,
                              solidHeader = TRUE,
                              tags$a(img(src = "logo_sigam_app.jpeg", height = '100%', width = '100%'), href = 'https://geesc.shinyapps.io/sigam_br/')
                            )
                            
                            
                          )
                          
                          
                      ),
                      div(tags$h4("SIDES-RUE", style="text-align:left; color:black"),
                          class = "col-sm-6", style = "padding-left:20px"),
                      box(width = 12,             
                          status = "primary",
                          solidHeader = FALSE,
                          fluidRow(
                            column(
                              width = 8,
                              p("O " , a(href = 'https://geesc.shinyapps.io/sides_rue/', 'SIDES-RUE', .noWS = "outside"), .noWS = c("after-begin", "before-end")," é um Sistema de Informações que apresenta indicadores associados ao Desempenho da Rede de Urgência e Emergência (RUE) do Estado de Minas Gerais. Nessa primeira versão priorizamos as linhas de cuidado do Infarto Agudo do Miocárdio (IAM) e do Acidente Vascular Cerebral (AVC). Além do marco regulatório, incluindo a regulamentação federal e estadual, são apresentados uma caracterização dos estabelecimentos hospitalares segundo o status de habilitação ou credenciamento na rede, uma tipologia das microrregiões de saúde e indicadores de desempenho da rede do IAM e AVC considerando as micro e macrorregiões de saúde.", style ="text-align: justify;", style = "color: black;", style = "font-size:18px;")
                            ),
                            box(
                              width = 4,
                              solidHeader = TRUE,
                              tags$a(img(src = "logo_sus_app.png", height = '100%', width = '100%'), href = 'https://geesc.shinyapps.io/sides_rue/')
                            )
                            
                            
                          )
                          
                          
                      ),
                      div(tags$h4("Portal BDOSS", style="text-align:left; color:black"),
                          class = "col-sm-6", style = "padding-left:20px"),
                      box(width = 12,             
                          status = "primary",
                          solidHeader = FALSE,
                          fluidRow(
                            column(
                              width = 8,
                              p("O " , a(href = 'https://geesc.shinyapps.io/portal_bdoss/', 'Portal BDOSS', .noWS = "outside"), .noWS = c("after-begin", "before-end")," abriga a Base de Dados das Organizações Sociais de Saúde (OSS), com um levantamento censitário dos estabelecimentos geridos por OSS em todo o território nacional. É possível realizar tanto uma pesquisa direta na Base quanto gerar indicadores e estatísticas descritivas.", style ="text-align: justify;", style = "color: black;", style = "font-size:18px;")
                            ),
                            box(
                              width = 4,
                              solidHeader = TRUE,
                              tags$a(img(src = "logo_bdoss_app.png", height = '100%', width = '100%'), href = 'https://geesc.shinyapps.io/portal_bdoss/')
                            )
                            
                            
                          )
                          
                          
                      )
                    ),
                  ),
                  box(
                    width = 1,
                    solidHeader = TRUE,
                    p("Sem sombra", style ="text-align: justify;", style = "color: white;", style = "font-size:18px;"),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    br(),
                    p("Sem sombra", style ="text-align: justify;", style = "color: white;", style = "font-size:18px;"),
                    
                  )
           )
           
         )
         
)

#UI-----------------------------------------------------------------------------
ui <- navbarPage(title = img("GEESC Apps", src="logo_geesc_app.png", height = '40px', width = '120px',align = 'center'),
                 theme = shinytheme("cosmo"),
                 useShinyjs(),
                 tags$head(
                   tags$style(HTML("
                                    .navbar-nav > li > a, .navbar-brand {
                            padding-top:4px !important; 
                            padding-bottom:0 !important;
                            height: 45px;
                            }
                           .navbar {min-height:45px !important;}
                           
                           nav.navbar.navbar-default.navbar-static-top{border-color: #000000;background-color: #000000;}
                           .navbar-default .navbar-nav > .active > a, 
                           .navbar-default .navbar-nav > .active > a:focus, 
                           .navbar-default .navbar-nav > .active > a:hover {
                                color: #000000;
                                background-color: #000000;
                            }')
                                    .box.box-solid.box-warning>.box-header {
                                    color:#ffffff;
                                    background:#000000
                                    }
                                    
                                    .box.box-solid.box-warning{
                                    border-bottom-color:#000000;
                                    border-left-color:#000000;
                                    border-right-color:#000000;
                                    border-top-color:#000000;
                                    }
                                    
                                    .box.box-warning>.box-header {
                                    color:#000000;
                                    background:#00000
                                    }

                                    .box.box-warning{
                                    border-bottom-color:#000000;
                                    border-left-color:#000000;
                                    border-right-color:#000000;
                                    border-top-color:#000000;
                                    }
                                    
                                    .box.box-solid.box-primary>.box-header {
                                    color:#ffffff;
                                    background:#CED2CC
                                    }
                                    
                                    .box.box-solid.box-primary{
                                    border-bottom-color:#CED2CC;
                                    border-left-color:#CED2CC;
                                    border-right-color:#CED2CC;
                                    border-top-color:#CED2CC;
                                    }
                                    
                                    .box.box-primary>.box-header {
                                    color:#CED2CC;
                                    background:#CED2CC
                                    }

                                    .box.box-primary{
                                    border-bottom-color:#CED2CC;
                                    border-left-color:#CED2CC;
                                    border-right-color:#CED2CC;
                                    border-top-color:#CED2CC;
                                    }
                                    
                       .footer {
                         position: fixed;
                         bottom: 0;
                         width: 100%;
                         height: 12.5px;
                         background-color: black;
                       }
                    ")),
                   tags$style(type="text/css",
                              ".shiny-output-error { visibility: hidden; }",
                              ".shiny-output-error:before { visibility: hidden; }"
                   )
                 ),
                 header = tagList(useShinydashboard()),
                 tab_apresentacao,
                 tags$footer("", class = 'footer')
)

#Server-------------------------------------------------------------------------
server <- function(input, output, session){

}

shinyApp(ui = ui, server = server)

