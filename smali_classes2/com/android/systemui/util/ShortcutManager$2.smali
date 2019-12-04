.class Lcom/android/systemui/util/ShortcutManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$100(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result p1

    .line 181
    iget-object p2, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz p3, :cond_0

    .line 182
    invoke-static {p2}, Lcom/android/systemui/util/ShortcutManager;->access$200(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 181
    :goto_0
    invoke-static {p2, p3}, Lcom/android/systemui/util/ShortcutManager;->access$102(Lcom/android/systemui/util/ShortcutManager;Z)Z

    .line 183
    iget-object p2, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p2}, Lcom/android/systemui/util/ShortcutManager;->access$100(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 184
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method
