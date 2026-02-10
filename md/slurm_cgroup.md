1. Activation de cgroup dans slurm.conf. Le cgroup lié au job semble etre disponible 
```
/sys/fs/cgroup/system.slice/slurmstepd.scope/job_1/step_0
```
Il y a un dossier user notamment.

Parmi l'arborescence il y a job_id, step_x, task_x
job_ID	Regroupe toutes les ressources alloués au job sur le noeud:  memory.max
step_X	job a plusieurs étapes, exemple plusieurs srun : 	cpu.stat
task_X	slurm crée une tache par processus (ex -N 2 créera 2 task)	: cpuset.cpus

Ils ont un super schéma :

https://slurm.schedmd.com/cgroup_v2.html#real_sysd_prob
