%{
    /* Primeiro exemplo */
%}

/* URL ---------------------------------- */
/* A estrutrua da url obede o padrão: */
/* [esquema ou protocolo://domínio:porta/caminho/recurso?query_string#fragmento] */
url ^(https?:\/\/)?(www\.)?([\w\@\%\.\+\~\#\=\-]{2,255}\.[a-z]{2,6}|[\d.]+)(\:\d+)?(\/[\w\@\:\%\+\.\~\#\?\&\/\=\-]*)?$

reais ^(R\$\s)?\d\d(\,\d\d?)?$

cartao ^(\d{4}\s){3}\d{4}$

%%

[\t ]+

{url} {printf("url");}
{reais} {printf("reais");}
{cartao} {printf("cartao");}

%%

int main(){
    yylex();
    printf("Fim de execução!!\n");

}

void readURL(char* palavra){
    printf("URL: %s\n", palavra);
}

void readReais(char* palavra){
    printf("Reais: %s\n", palavra);
}

void readCard(char* palavra){
    printf("URL: %s\n", palavra);
}
