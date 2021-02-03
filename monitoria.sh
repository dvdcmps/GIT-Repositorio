### # set -vx
### 
### PROCESSO=${1}
### LEN_PROC=`echo ${PROCESSO} | wc -c`
### 
### if [ `ps -ef | grep ${PROCESSO} | grep -v grep | awk 'BEGIN { FS = " " } { print $NF }'` = "${PROCESSO}"  ]
### then
###    ENCONTRADO=`ps -ef | grep ${PROCESSO} | grep -v grep | awk 'BEGIN { FS = " " } { print $NF }'`
###    PROC_UNIX=`ps -ef | grep c4b00102p_6 | grep -v grep | awk 'BEGIN { FS = " " } { print $2 }'`
###    LEN_ENCONT=`echo ${ENCONTRADO} | wc -c`
###    
###    if [ ${LEN_PROC} -eq ${LEN_ENCONT} ]
###    then
###       echo "Eh este mesmo - use: kill -9 ${PROC_UNIX}"
###    else
###       echo "O Processo é outro: ${ENCONTRADO}"
###    fi
### else
###    echo "Processo nao esta rodando neste momento..."
### fi
### 
### # set +vx



# set -vx

PROCESSO=${1}
LEN_PROC=`echo ${PROCESSO} | wc -c`

if [ `ps -ef | grep ${PROCESSO} | grep -v grep | awk 'BEGIN { FS = " " } { print $NF }'` = "${PROCESSO}"  ]
then
   echo "Processo rodando - para derruba-lo use: kill -9 `ps -ef | grep c4b00102p_6 | grep -v grep | awk 'BEGIN { FS = \" \" } { print $2 }'`"
else
   echo "Processo nao esta rodando neste momento..."
fi

# set +vx
