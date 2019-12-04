.class public Lcom/android/systemui/pluginlock/component/PluginLockSecure;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockSecure.java"


# instance fields
.field private mSecureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->mSecureMode:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    const-string p1, "PluginLockSwipe"

    const-string v0, "apply()"

    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getCaptureData()Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->getType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->mSecureMode:I

    return-void
.end method

.method public getSecureMode()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->mSecureMode:I

    return p0
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockSwipe"

    const-string v1, "recover()"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 2

    const-string v0, "PluginLockSwipe"

    const-string v1, "reset()"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->mSecureMode:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockSwipe"

    const-string/jumbo v1, "update()"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method
