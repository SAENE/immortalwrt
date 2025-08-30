SUBTARGET:=ipq50xx
BOARDNAME:=Qualcomm Atheros IPQ50xx
<<<<<<< HEAD
DEFAULT_PACKAGES += ath11k-firmware-ipq5018 ath11k-firmware-qcn6122
=======
DEFAULT_PACKAGES += ath11k-firmware-ipq5018
>>>>>>> 94392b39ec (稳定版本发布)

define Target/Description
	Build firmware images for Qualcomm Atheros IPQ50xx based boards.
endef
