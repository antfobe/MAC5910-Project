

DEF("check", img_check,
"check [-q] [-f fmt] [--output=ofmt] [-r [leaks | all]] [-T src_cache] filename")

DEF("create", img_create,
"create [-q] [-f fmt] [-o options] filename [size]")

DEF("commit", img_commit,
"commit [-q] [-f fmt] [-t cache] [-b base] [-d] [-p] filename")

DEF("compare", img_compare,
"compare [-f fmt] [-F fmt] [-T src_cache] [-p] [-q] [-s] filename1 filename2")

DEF("convert", img_convert,
"convert [-c] [-p] [-q] [-n] [-f fmt] [-t cache] [-T src_cache] [-O output_fmt] [-o options] [-s snapshot_id_or_name] [-l snapshot_param] [-S sparse_size] filename [filename2 [...]] output_filename")

DEF("info", img_info,
"info [-f fmt] [--output=ofmt] [--backing-chain] filename")

DEF("map", img_map,
"map [-f fmt] [--output=ofmt] filename")

DEF("snapshot", img_snapshot,
"snapshot [-q] [-l | -a snapshot | -c snapshot | -d snapshot] filename")

DEF("rebase", img_rebase,
"rebase [-q] [-f fmt] [-t cache] [-T src_cache] [-p] [-u] -b backing_file [-F backing_fmt] filename")

DEF("resize", img_resize,
"resize [-q] filename [+ | -]size")

DEF("amend", img_amend,
"amend [-p] [-q] [-f fmt] [-t cache] -o options filename")
