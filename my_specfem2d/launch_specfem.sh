#!/bin/sh


rm mesherz solverz 
rm  OUTPUT_FILES/*

NPROC=4

mpirun -n 1 $HOME/specfem2d/bin/xmeshfem2D >> mesherz
mpirun -n $NPROC $HOME/specfem2d/bin/xspecfem2D >> solverz

#$HOME/specfem2d/bin/xspecfem2D >> solverz


   	#f0=$(sed -n 1,15p DATA/SOURCE | grep 'f0' | cut -d\= -f2 | tr -d '[:space:]')
   	#
   	#intf0=${f0%.*}
   	#echo 'intf0 ='$intf0
   	#
   	#
   	#foldname_for_results_saving=$(printf "$HOME/data_bk/specfem2d_d/noutput_intf0_${intf0}")
   	#echo 'bk path is '$foldname_for_results_saving
   	#
   	#        if [ -d "$foldname_for_results_saving" ]; then
   	#        echo 'nothing'
   	#        else
   	#        echo 'make a folder'
   	#        mkdir "$foldname_for_results_saving"
   	#        fi
   	#
   	#
   	#
   	#
   	#cp -r OUTPUT_FILES "$foldname_for_results_saving"/ &
   	#cp -r DATA "$foldname_for_results_saving"/ &

#. zall_plot_su
#wait
#xdg-open ./OUTPUT_FILES/zseismo.png

