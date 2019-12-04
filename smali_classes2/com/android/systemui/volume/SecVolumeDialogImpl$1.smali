.class Lcom/android/systemui/volume/SecVolumeDialogImpl$1;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onConfigurationChanged()V

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onDismiss()V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0

    return-void
.end method

.method public onPlaySound()V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onPlaySound()V

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onScreenOff()V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onShow(I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onShowSafetyWarning(I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 0

    return-void
.end method

.method public onShowVibrateHint()V
    .locals 0

    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->onShowVolumeLimiterToast()V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumePanelImpl;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeStateMapper;->convertState(Lcom/android/systemui/plugins/VolumeDialogController$State;)Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onStateChanged(Lcom/samsung/systemui/splugins/volume/VolumeState;)V

    return-void
.end method
