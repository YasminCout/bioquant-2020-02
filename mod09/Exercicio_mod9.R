# Para a pr�tica dessa semana usaremos os dados de detec��o de pardais no pacote Rdistance
# Backstory: Voc�, e um estagi�rio (chamado Valdisnei) fizeram um transecto de linha para se detectar pardais
# em arvores, com o intuito de descobrir a abund�ncia dele. Para isso Valdisnei montou uma tabela, na qual
# sigthdist � a dist�ncia do pardal do transecto e sightangle � o angulo de vis�o para detecta-lo 
# (relacionado � altura da arvore).
install.packages('Rdistance')
library('Rdistance')
data(sparrowDetectionData)

# Primeiro vamos corrigir o erro do Valdisney e renomear a coluna para distancia usando a fun��o rename do pacote dplyr
install.packages('dplyr')
library('dplyr')
sparrowDetectionData = rename(sparrowDetectionData, 'distance' = 'sightdist')

# Agora � com voc�s, calculem a densidade e a abund�ncia observada e estimada para os grupos de pardal.
