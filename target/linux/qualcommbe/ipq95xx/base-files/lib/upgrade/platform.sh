PART_NAME=firmware

RAMFS_COPY_BIN='fw_printenv fw_setenv head'
RAMFS_COPY_DATA='/etc/fw_env.config /var/lock/fw_printenv.lock'

<<<<<<< HEAD
platform_check_image() {
	return 0;
}

platform_do_upgrade() {
	case "$(board_name)" in
	8devices,kiwi-dvk)
		CI_KERNPART="0:HLOS"
		CI_ROOTPART="rootfs"
		emmc_do_upgrade "$1"
		;;
=======
platform_do_upgrade() {
	case "$(board_name)" in
>>>>>>> 94392b39ec (稳定版本发布)
	*)
		default_do_upgrade "$1"
		;;
	esac
}
<<<<<<< HEAD

platform_copy_config() {
	case "$(board_name)" in
	8devices,kiwi-dvk)
		emmc_copy_config
		;;
	esac
}
=======
>>>>>>> 94392b39ec (稳定版本发布)
