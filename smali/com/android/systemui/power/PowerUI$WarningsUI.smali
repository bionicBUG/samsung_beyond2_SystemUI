.class public interface abstract Lcom/android/systemui/power/PowerUI$WarningsUI;
.super Ljava/lang/Object;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WarningsUI"
.end annotation


# virtual methods
.method public abstract dismissBatteryHealthInterruptionWarning()V
.end method

.method public abstract dismissBatterySwellingNotice()V
.end method

.method public abstract dismissBatterySwellingPopup()V
.end method

.method public abstract dismissChargingNotice()V
.end method

.method public abstract dismissHighTemperatureWarning()V
.end method

.method public abstract dismissIncompatibleChargerNotice()V
.end method

.method public abstract dismissInvalidChargerWarning()V
.end method

.method public abstract dismissLowBatteryWarning()V
.end method

.method public abstract dismissOverheatWarning()V
.end method

.method public abstract dismissPowerSharingCableNotice()V
.end method

.method public abstract dismissUnintentionalLcdOnNotice()V
.end method

.method public abstract dismissWaterProtectionAlertDialog(Z)V
.end method

.method public abstract dismissWillOverheatShutdownWarning()V
.end method

.method public abstract dismissWirelessFodAlertDialog()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract isInvalidChargerWarningShowing()Z
.end method

.method public abstract isLowBatteryWarningShowing()Z
.end method

.method public abstract playPowerSound(I)V
.end method

.method public abstract playWaterAlertSound()V
.end method

.method public abstract runOverheatShutdownTask(I)V
.end method

.method public abstract showBatteryHealthInterruptionWarning()V
.end method

.method public abstract showBatterySwellingNotice(I)V
.end method

.method public abstract showBatterySwellingPopup(I)V
.end method

.method public abstract showChargingNotice(I)V
.end method

.method public abstract showChargingTypeSwitchedNotice(Z)V
.end method

.method public abstract showHighTemperatureWarning()V
.end method

.method public abstract showIncompatibleChargerNotice()V
.end method

.method public abstract showInvalidChargerWarning()V
.end method

.method public abstract showLowBatteryWarning(Z)V
.end method

.method public abstract showOverheatShutdownHappenedNotice()V
.end method

.method public abstract showOverheatWarning(I)V
.end method

.method public abstract showPowerSharingCableNotice()V
.end method

.method public abstract showSafeModeNotice()V
.end method

.method public abstract showThermalShutdownWarning()V
.end method

.method public abstract showUnintentionalLcdOnNotice()V
.end method

.method public abstract showUsbDamageProtectionAlertDialog()V
.end method

.method public abstract showUsbHighTemperatureAlarm()V
.end method

.method public abstract showWaterProtectionAlertDialog(Z)V
.end method

.method public abstract showWillOverheatShutdownWarning()V
.end method

.method public abstract showWirelessChargerDisconnectNotice(Z)V
.end method

.method public abstract showWirelessFodAlertDialog()V
.end method

.method public abstract stopPowerSound(I)V
.end method

.method public abstract update(IIJ)V
.end method

.method public abstract updateBatteryHealthState(II)V
.end method

.method public abstract updateCallState(Z)V
.end method

.method public abstract updateHiccupState(Z)V
.end method

.method public abstract updateLowBatteryWarning()V
.end method

.method public abstract updateSnapshot(Lcom/android/systemui/power/BatteryStateSnapshot;)V
.end method

.method public abstract updateTemperatureHiccupState(Z)V
.end method

.method public abstract userSwitched()V
.end method
