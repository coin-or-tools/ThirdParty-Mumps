# Copyright (C) 2007-2010 International Business Machines and others.
# All Rights Reserved.
# This file is distributed under the Eclipse Public License.

EXTRA_DIST = get.Mumps INSTALL.MUMPS

lib_LTLIBRARIES = libcoinmumps.la

nodist_libcoinmumps_la_SOURCES = \
  MUMPS/src/ana_AMDMF.F \
  MUMPS/src/ana_blk.F \
  MUMPS/src/ana_blk_m.F \
  MUMPS/src/ana_omp_m.F \
  MUMPS/src/ana_orderings.F \
  MUMPS/src/ana_orderings_wrappers_m.F \
  MUMPS/src/ana_set_ordering.F \
  MUMPS/src/bcast_errors.F \
  MUMPS/src/dana_aux_ELT.F \
  MUMPS/src/dana_aux.F \
  MUMPS/src/dana_aux_par.F \
  MUMPS/src/dana_dist_m.F \
  MUMPS/src/dana_driver.F \
  MUMPS/src/dana_LDLT_preprocess.F \
  MUMPS/src/dana_lr.F \
  MUMPS/src/dana_mtrans.F \
  MUMPS/src/dana_reordertree.F \
  MUMPS/src/darrowheads.F \
  MUMPS/src/dbcast_int.F \
  MUMPS/src/dend_driver.F \
  MUMPS/src/dfac_asm_ELT.F \
  MUMPS/src/dfac_asm.F \
  MUMPS/src/dfac_asm_master_ELT_m.F \
  MUMPS/src/dfac_asm_master_m.F \
  MUMPS/src/dfac_b.F \
  MUMPS/src/dfac_determinant.F \
  MUMPS/src/dfac_distrib_distentry.F \
  MUMPS/src/dfac_distrib_ELT.F \
  MUMPS/src/dfac_driver.F \
  MUMPS/src/dfac_front_aux.F \
  MUMPS/src/dfac_front_LDLT_type1.F \
  MUMPS/src/dfac_front_LDLT_type2.F \
  MUMPS/src/dfac_front_LU_type1.F \
  MUMPS/src/dfac_front_LU_type2.F \
  MUMPS/src/dfac_front_type2_aux.F \
  MUMPS/src/dfac_lastrtnelind.F \
  MUMPS/src/dfac_lr.F \
  MUMPS/src/dfac_mem_alloc_cb.F \
  MUMPS/src/dfac_mem_compress_cb.F \
  MUMPS/src/dfac_mem_dynamic.F \
  MUMPS/src/dfac_mem_free_block_cb.F \
  MUMPS/src/dfac_mem_stack_aux.F \
  MUMPS/src/dfac_mem_stack.F \
  MUMPS/src/dfac_omp_m.F \
  MUMPS/src/dfac_par_m.F \
  MUMPS/src/dfac_process_band.F \
  MUMPS/src/dfac_process_bf.F \
  MUMPS/src/dfac_process_blfac_slave.F \
  MUMPS/src/dfac_process_blocfacto.F \
  MUMPS/src/dfac_process_blocfacto_LDLT.F \
  MUMPS/src/dfac_process_contrib_type1.F \
  MUMPS/src/dfac_process_contrib_type2.F \
  MUMPS/src/dfac_process_contrib_type3.F \
  MUMPS/src/dfac_process_end_facto_slave.F \
  MUMPS/src/dfac_process_maprow.F \
  MUMPS/src/dfac_process_master2.F \
  MUMPS/src/dfac_process_message.F \
  MUMPS/src/dfac_process_root2slave.F \
  MUMPS/src/dfac_process_root2son.F \
  MUMPS/src/dfac_process_rtnelind.F \
  MUMPS/src/dfac_root_parallel.F \
  MUMPS/src/dfac_scalings.F \
  MUMPS/src/dfac_scalings_simScaleAbs.F \
  MUMPS/src/dfac_scalings_simScale_util.F \
  MUMPS/src/dfac_sispointers_m.F \
  MUMPS/src/dfac_sol_l0omp_m.F \
  MUMPS/src/dfac_sol_pool.F \
  MUMPS/src/dfac_type3_symmetrize.F \
  MUMPS/src/dini_defaults.F \
  MUMPS/src/dini_driver.F \
  MUMPS/src/dlr_core.F \
  MUMPS/src/dlr_stats.F \
  MUMPS/src/dlr_type.F \
  MUMPS/src/dmumps_comm_buffer.F \
  MUMPS/src/dmumps_config_file.F \
  MUMPS/src/dmumps_driver.F \
  MUMPS/src/dmumps_f77.F \
  MUMPS/src/dmumps_gpu.c \
  MUMPS/src/dmumps_iXamax.F \
  MUMPS/src/dmumps_load.F \
  MUMPS/src/dmumps_lr_data_m.F \
  MUMPS/src/dmumps_ooc_buffer.F \
  MUMPS/src/dmumps_ooc.F \
  MUMPS/src/dmumps_save_restore.F \
  MUMPS/src/dmumps_save_restore_files.F \
  MUMPS/src/dmumps_sol_es.F \
  MUMPS/src/dmumps_struc_def.F \
  MUMPS/src/domp_tps_m.F \
  MUMPS/src/dooc_panel_piv.F \
  MUMPS/src/double_linked_list.F \
  MUMPS/src/drank_revealing.F \
  MUMPS/src/dsol_aux.F \
  MUMPS/src/dsol_bwd_aux.F \
  MUMPS/src/dsol_bwd.F \
  MUMPS/src/dsol_c.F \
  MUMPS/src/dsol_distrhs.F \
  MUMPS/src/dsol_driver.F \
  MUMPS/src/dsol_fwd_aux.F \
  MUMPS/src/dsol_fwd.F \
  MUMPS/src/dsol_lr.F \
  MUMPS/src/dsol_matvec.F \
  MUMPS/src/dsol_omp_m.F \
  MUMPS/src/dsol_root_parallel.F \
  MUMPS/src/dstatic_ptr_m.F \
  MUMPS/src/dtools.F \
  MUMPS/src/dtype3_root.F \
  MUMPS/src/estim_flops.F \
  MUMPS/src/fac_asm_build_sort_index_ELT_m.F \
  MUMPS/src/fac_asm_build_sort_index_m.F \
  MUMPS/src/fac_descband_data_m.F \
  MUMPS/src/fac_future_niv2_mod.F \
  MUMPS/src/fac_ibct_data_m.F \
  MUMPS/src/fac_maprow_data_m.F \
  MUMPS/src/front_data_mgt_m.F \
  MUMPS/src/lr_common.F \
  MUMPS/src/mumps_c.c \
  MUMPS/src/mumps_comm_ibcast.F \
  MUMPS/src/mumps_common.c \
  MUMPS/src/mumps_config_file_C.c \
  MUMPS/src/mumps_io_basic.c \
  MUMPS/src/mumps_io.c \
  MUMPS/src/mumps_io_err.c \
  MUMPS/src/mumps_io_thread.c \
  MUMPS/src/mumps_l0_omp_m.F \
  MUMPS/src/mumps_memory_mod.F \
  MUMPS/src/mumps_metis64.c \
  MUMPS/src/mumps_metis.c \
  MUMPS/src/mumps_metis_int.c \
  MUMPS/src/mumps_mpitoomp_m.F \
  MUMPS/src/mumps_numa.c \
  MUMPS/src/mumps_ooc_common.F \
  MUMPS/src/mumps_pord.c \
  MUMPS/src/mumps_print_defined.F \
  MUMPS/src/mumps_save_restore_C.c \
  MUMPS/src/mumps_scotch64.c \
  MUMPS/src/mumps_scotch.c \
  MUMPS/src/mumps_scotch_int.c \
  MUMPS/src/mumps_size.c \
  MUMPS/src/mumps_static_mapping.F \
  MUMPS/src/mumps_thread_affinity.c \
  MUMPS/src/mumps_thread.c \
  MUMPS/src/mumps_type2_blocking.F \
  MUMPS/src/mumps_type_size.F \
  MUMPS/src/mumps_version.F \
  MUMPS/src/omp_tps_common_m.F \
  MUMPS/src/sol_common.F \
  MUMPS/src/tools_common.F \
  MUMPS/libseq/mpi.f \
  MUMPS/libseq/mpic.c \
  MUMPS/libseq/elapse.c

AM_CPPFLAGS = -I$(srcdir)/MUMPS/src -I$(srcdir)/MUMPS/libseq -I$(srcdir)/MUMPS/include

libcoinmumps_la_LIBADD = $(MUMPS_LFLAGS)

libcoinmumps_la_LDFLAGS = $(LT_LDFLAGS)

# Dependencies between modules:
# i) arithmetic-dependent modules:
MUMPS/src/dana_aux.lo: \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/mumps_static_mapping.lo \
  MUMPS/src/ana_blk_m.lo \
  MUMPS/src/ana_orderings_wrappers_m.lo
MUMPS/src/dana_aux_par.lo: \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/mumps_memory_mod.lo \
  MUMPS/src/ana_orderings_wrappers_m.lo
MUMPS/src/dana_lr.lo: MUMPS/src/dlr_core.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/lr_common.lo \
  MUMPS/src/ana_orderings_wrappers_m.lo
MUMPS/src/dfac_asm_master_ELT_m.lo: \
  MUMPS/src/omp_tps_common_m.lo \
  MUMPS/src/fac_ibct_data_m.lo \
  MUMPS/src/fac_asm_build_sort_index_ELT_m.lo \
  MUMPS/src/lr_common.lo \
  MUMPS/src/dfac_mem_dynamic.lo \
  MUMPS/src/dlr_core.lo \
  MUMPS/src/dana_lr.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/domp_tps_m.lo \
  MUMPS/src/dmumps_comm_buffer.lo \
  MUMPS/src/dmumps_load.lo
MUMPS/src/dfac_asm_master_m.lo: \
  MUMPS/src/omp_tps_common_m.lo \
  MUMPS/src/fac_ibct_data_m.lo \
  MUMPS/src/fac_asm_build_sort_index_m.lo \
  MUMPS/src/lr_common.lo \
  MUMPS/src/dfac_mem_dynamic.lo \
  MUMPS/src/dlr_core.lo \
  MUMPS/src/dana_lr.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/domp_tps_m.lo \
  MUMPS/src/dmumps_comm_buffer.lo \
  MUMPS/src/dmumps_load.lo
MUMPS/src/dfac_b.lo: \
  MUMPS/src/dfac_sispointers_m.lo
MUMPS/src/dfac_front_aux.lo: \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/dmumps_comm_buffer.lo \
  MUMPS/src/dmumps_load.lo \
  MUMPS/src/dmumps_ooc.lo \
  MUMPS/src/mumps_ooc_common.lo \
  MUMPS/src/mumps_l0_omp_m.lo
MUMPS/src/dfac_front_LU_type1.lo : \
  MUMPS/src/dfac_front_aux.lo \
  MUMPS/src/dmumps_ooc.lo \
  MUMPS/src/dfac_lr.lo \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/dana_lr.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/mumps_l0_omp_m.lo
MUMPS/src/dfac_front_LU_type2.lo : \
  MUMPS/src/dfac_front_aux.lo \
  MUMPS/src/dfac_front_type2_aux.lo \
  MUMPS/src/dmumps_ooc.lo \
  MUMPS/src/dmumps_comm_buffer.lo \
  MUMPS/src/mumps_comm_ibcast.lo \
  MUMPS/src/dfac_lr.lo \
  MUMPS/src/dlr_core.lo \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/dana_lr.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/dmumps_struc_def.lo
MUMPS/src/dfac_front_LDLT_type1.lo : \
  MUMPS/src/dfac_front_aux.lo \
  MUMPS/src/dmumps_ooc.lo \
  MUMPS/src/dfac_lr.lo \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/dana_lr.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/mumps_l0_omp_m.lo
MUMPS/src/dfac_front_LDLT_type2.lo : \
  MUMPS/src/dfac_front_aux.lo \
  MUMPS/src/dfac_front_type2_aux.lo \
  MUMPS/src/dmumps_ooc.lo \
  MUMPS/src/dmumps_comm_buffer.lo \
  MUMPS/src/dmumps_load.lo \
  MUMPS/src/dfac_lr.lo \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/dana_lr.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/dmumps_struc_def.lo
MUMPS/src/dfac_front_type2_aux.lo : \
  MUMPS/src/mumps_ooc_common.lo \
  MUMPS/src/dfac_front_aux.lo \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/dmumps_comm_buffer.lo \
  MUMPS/src/dmumps_load.lo \
  MUMPS/src/mumps_comm_ibcast.lo \
  MUMPS/src/fac_ibct_data_m.lo
MUMPS/src/dfac_lr.lo: \
  MUMPS/src/dlr_core.lo \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/dlr_stats.lo
MUMPS/src/dfac_mem_dynamic.lo: \
  MUMPS/src/dmumps_load.lo \
  MUMPS/src/dstatic_ptr_m.lo
MUMPS/src/dfac_omp_m.lo: \
  MUMPS/src/dfac_asm_master_m.lo \
  MUMPS/src/dfac_asm_master_ELT_m.lo \
  MUMPS/src/dfac_front_LU_type1.lo \
  MUMPS/src/dfac_front_LDLT_type1.lo \
  MUMPS/src/dmumps_load.lo \
  MUMPS/src/domp_tps_m.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/omp_tps_common_m.lo \
  MUMPS/src/mumps_l0_omp_m.lo
MUMPS/src/dfac_par_m.lo: \
  MUMPS/src/dmumps_load.lo \
  MUMPS/src/dmumps_ooc.lo \
  MUMPS/src/dfac_asm_master_m.lo \
  MUMPS/src/dfac_asm_master_ELT_m.lo \
  MUMPS/src/domp_tps_m.lo \
  MUMPS/src/dfac_front_LU_type1.lo \
  MUMPS/src/dfac_front_LU_type2.lo \
  MUMPS/src/dfac_front_LDLT_type1.lo \
  MUMPS/src/dfac_front_LDLT_type2.lo \
  MUMPS/src/dfac_mem_dynamic.lo \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/omp_tps_common_m.lo \
  MUMPS/src/mumps_l0_omp_m.lo
MUMPS/src/dlr_core.lo: \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/lr_common.lo
MUMPS/src/dlr_stats.lo: MUMPS/src/dlr_type.lo
MUMPS/src/dmumps_comm_buffer.lo: \
  MUMPS/src/mumps_comm_ibcast.lo \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dlr_core.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/fac_ibct_data_m.lo
MUMPS/src/dmumps_config_file.lo: MUMPS/src/dmumps_struc_def.lo
MUMPS/src/dmumps_load.lo: \
  MUMPS/src/dmumps_comm_buffer.lo \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/fac_future_niv2_mod.lo
MUMPS/src/dmumps_lr_data_m.lo: \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/front_data_mgt_m.lo
MUMPS/src/dmumps_ooc_buffer.lo: MUMPS/src/mumps_ooc_common.lo
MUMPS/src/dmumps_ooc.lo: \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/dmumps_ooc_buffer.lo \
  MUMPS/src/mumps_ooc_common.lo
MUMPS/src/dmumps_sol_es.lo: \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dmumps_lr_data_m.lo
MUMPS/src/dmumps_save_restore.lo: \
  MUMPS/src/dfac_sol_l0omp_m.lo \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/dmumps_save_restore_files.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/dmumps_ooc.lo \
  MUMPS/src/front_data_mgt_m.lo
MUMPS/src/dmumps_save_restore_files.lo : MUMPS/src/dmumps_struc_def.lo
MUMPS/src/dsol_lr.lo: \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/dmumps_lr_data_m.lo
# Dependencies between modules:
# ii) arithmetic-independent modules:
MUMPS/src/ana_omp_m.lo: MUMPS/src/double_linked_list.lo
MUMPS/src/fac_asm_build_sort_index_ELT_m.lo: MUMPS/src/omp_tps_common_m.lo
MUMPS/src/fac_asm_build_sort_index_m.lo: MUMPS/src/omp_tps_common_m.lo
MUMPS/src/fac_descband_data_m.lo: MUMPS/src/front_data_mgt_m.lo
MUMPS/src/fac_ibct_data_m.lo: MUMPS/src/front_data_mgt_m.lo
MUMPS/src/fac_maprow_data_m.lo: MUMPS/src/front_data_mgt_m.lo
MUMPS/src/mumps_comm_ibcast.lo: MUMPS/src/fac_future_niv2_mod.lo
MUMPS/src/mumps_static_mapping.lo: MUMPS/src/lr_common.lo
# iii) compile modules before others
OBJS_COMMON_MOD = \
  MUMPS/src/ana_omp_m.lo \
  MUMPS/src/ana_orderings_wrappers_m.lo \
  MUMPS/src/double_linked_list.lo \
  MUMPS/src/fac_asm_build_sort_index_ELT_m.lo \
  MUMPS/src/fac_asm_build_sort_index_m.lo \
  MUMPS/src/fac_descband_data_m.lo \
  MUMPS/src/fac_future_niv2_mod.lo \
  MUMPS/src/fac_ibct_data_m.lo \
  MUMPS/src/fac_maprow_data_m.lo \
  MUMPS/src/front_data_mgt_m.lo \
  MUMPS/src/lr_common.lo \
  MUMPS/src/mumps_comm_ibcast.lo \
  MUMPS/src/mumps_l0_omp_m.lo \
  MUMPS/src/mumps_memory_mod.lo \
  MUMPS/src/mumps_mpitoomp_m.lo \
  MUMPS/src/mumps_ooc_common.lo \
  MUMPS/src/mumps_static_mapping.lo \
  MUMPS/src/omp_tps_common_m.lo
OBJS_COMMON_OTHER = \
  MUMPS/src/ana_orderings.lo \
  MUMPS/src/ana_set_ordering.lo \
  MUMPS/src/ana_AMDMF.lo \
  MUMPS/src/bcast_errors.lo \
  MUMPS/src/estim_flops.lo \
  MUMPS/src/mumps_type_size.lo \
  MUMPS/src/mumps_type2_blocking.lo \
  MUMPS/src/mumps_version.lo \
  MUMPS/src/mumps_print_defined.lo \
  MUMPS/src/mumps_common.lo \
  MUMPS/src/mumps_pord.lo \
  MUMPS/src/mumps_metis.lo \
  MUMPS/src/mumps_metis64.lo \
  MUMPS/src/mumps_metis_int.lo \
  MUMPS/src/mumps_scotch.lo \
  MUMPS/src/mumps_scotch64.lo \
  MUMPS/src/mumps_scotch_int.lo \
  MUMPS/src/mumps_size.lo \
  MUMPS/src/mumps_io.lo \
  MUMPS/src/mumps_io_basic.lo \
  MUMPS/src/mumps_io_thread.lo \
  MUMPS/src/mumps_io_err.lo \
  MUMPS/src/mumps_numa.lo \
  MUMPS/src/mumps_thread.lo \
  MUMPS/src/mumps_save_restore_C.lo \
  MUMPS/src/mumps_config_file_C.lo \
  MUMPS/src/mumps_thread_affinity.lo \
  MUMPS/src/tools_common.lo \
  MUMPS/src/sol_common.lo
OBJS_MOD = \
  MUMPS/src/dana_aux.lo \
  MUMPS/src/dana_aux_par.lo \
  MUMPS/src/dana_lr.lo \
  MUMPS/src/dfac_asm_master_ELT_m.lo \
  MUMPS/src/dfac_asm_master_m.lo \
  MUMPS/src/dfac_front_aux.lo \
  MUMPS/src/dfac_front_LU_type1.lo \
  MUMPS/src/dfac_front_LU_type2.lo \
  MUMPS/src/dfac_front_LDLT_type1.lo \
  MUMPS/src/dfac_front_LDLT_type2.lo \
  MUMPS/src/dfac_front_type2_aux.lo \
  MUMPS/src/dfac_lr.lo \
  MUMPS/src/dfac_mem_dynamic.lo \
  MUMPS/src/dfac_omp_m.lo \
  MUMPS/src/dfac_par_m.lo \
  MUMPS/src/dlr_core.lo \
  MUMPS/src/dlr_stats.lo \
  MUMPS/src/dlr_type.lo \
  MUMPS/src/dmumps_comm_buffer.lo \
  MUMPS/src/dmumps_config_file.lo \
  MUMPS/src/dmumps_load.lo \
  MUMPS/src/dmumps_lr_data_m.lo \
  MUMPS/src/dmumps_ooc_buffer.lo \
  MUMPS/src/dmumps_ooc.lo \
  MUMPS/src/dmumps_sol_es.lo \
  MUMPS/src/dmumps_save_restore.lo \
  MUMPS/src/dmumps_save_restore_files.lo \
  MUMPS/src/dmumps_struc_def.lo \
  MUMPS/src/domp_tps_m.lo \
  MUMPS/src/dsol_lr.lo \
  MUMPS/src/dstatic_ptr_m.lo
OBJS_OTHER = \
  MUMPS/src/dini_driver.lo \
  MUMPS/src/dana_driver.lo \
  MUMPS/src/dfac_driver.lo \
  MUMPS/src/dsol_driver.lo \
  MUMPS/src/dsol_distrhs.lo \
  MUMPS/src/dend_driver.lo \
  MUMPS/src/dana_aux_ELT.lo \
  MUMPS/src/dana_dist_m.lo \
  MUMPS/src/dana_LDLT_preprocess.lo \
  MUMPS/src/dana_reordertree.lo \
  MUMPS/src/darrowheads.lo \
  MUMPS/src/dbcast_int.lo \
  MUMPS/src/dfac_asm_ELT.lo \
  MUMPS/src/dfac_asm.lo \
  MUMPS/src/dfac_b.lo \
  MUMPS/src/dfac_distrib_distentry.lo \
  MUMPS/src/dfac_distrib_ELT.lo \
  MUMPS/src/dfac_lastrtnelind.lo \
  MUMPS/src/dfac_mem_alloc_cb.lo \
  MUMPS/src/dfac_mem_compress_cb.lo \
  MUMPS/src/dfac_mem_free_block_cb.lo \
  MUMPS/src/dfac_mem_stack_aux.lo \
  MUMPS/src/dfac_mem_stack.lo \
  MUMPS/src/dfac_process_band.lo \
  MUMPS/src/dfac_process_blfac_slave.lo \
  MUMPS/src/dfac_process_blocfacto_LDLT.lo \
  MUMPS/src/dfac_process_blocfacto.lo \
  MUMPS/src/dfac_process_bf.lo \
  MUMPS/src/dfac_process_end_facto_slave.lo \
  MUMPS/src/dfac_process_contrib_type1.lo \
  MUMPS/src/dfac_process_contrib_type2.lo \
  MUMPS/src/dfac_process_contrib_type3.lo \
  MUMPS/src/dfac_process_maprow.lo \
  MUMPS/src/dfac_process_master2.lo \
  MUMPS/src/dfac_process_message.lo \
  MUMPS/src/dfac_process_root2slave.lo \
  MUMPS/src/dfac_process_root2son.lo \
  MUMPS/src/dfac_process_rtnelind.lo \
  MUMPS/src/dfac_root_parallel.lo \
  MUMPS/src/dfac_scalings.lo \
  MUMPS/src/dfac_determinant.lo \
  MUMPS/src/dfac_scalings_simScaleAbs.lo \
  MUMPS/src/dfac_scalings_simScale_util.lo \
  MUMPS/src/dfac_sol_pool.lo \
  MUMPS/src/dfac_type3_symmetrize.lo \
  MUMPS/src/dini_defaults.lo \
  MUMPS/src/dmumps_c.lo \
  MUMPS/src/dmumps_driver.lo \
  MUMPS/src/dmumps_f77.lo \
  MUMPS/src/dmumps_gpu.lo \
  MUMPS/src/dmumps_iXamax.lo \
  MUMPS/src/dana_mtrans.lo \
  MUMPS/src/dooc_panel_piv.lo \
  MUMPS/src/drank_revealing.lo \
  MUMPS/src/dsol_aux.lo \
  MUMPS/src/dsol_bwd_aux.lo \
  MUMPS/src/dsol_bwd.lo \
  MUMPS/src/dsol_c.lo \
  MUMPS/src/dsol_fwd_aux.lo \
  MUMPS/src/dsol_fwd.lo \
  MUMPS/src/dsol_matvec.lo \
  MUMPS/src/dsol_root_parallel.lo \
  MUMPS/src/dtools.lo \
  MUMPS/src/dtype3_root.lo
$(OBJS_COMMON_OTHER) : $(OBJS_COMMON_MOD)
$(OBJS_OTHER) : $(OBJS_COMMON_MOD) $(OBJS_MOD)

# Module files that need to be deleted
CLEANFILES = *.mod

AM_CFLAGS = $(MY_DEFS) $(MUMPS_CFLAGS)
FCFLAGS += $(MY_FDEFS)

# automake thinks that the .F files are F77, not F95, and requires F77 to be set
# set it to FC, and same for FFLAGS
F77 = $(FC)
FFLAGS = $(FCFLAGS)

thirdpartyincludedir = $(includedir)/coin-or/mumps
thirdpartyinclude_HEADERS = \
  MUMPS/include/dmumps_c.h \
  MUMPS/include/mumps_c_types.h \
  MUMPS/libseq/mumps_mpi.h \
  mumps_compat.h \
  mumps_int_def.h

pkgconfiglibdir = $(libdir)/pkgconfig
pkgconfiglib_DATA = coinmumps.pc

test:
	@echo "No test available for Mumps."
