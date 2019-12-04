.class public Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockServiceBox.java"


# instance fields
.field private mServiceBoxBottom:I

.field private mServiceBoxExpandable:Z

.field private mServiceBoxTopPadding:I

.field private mServiceBoxVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxTopPadding:I

    .line 14
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxBottom:I

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxExpandable:Z

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxVisibility:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockServiceBox"

    const-string v1, "apply()"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 29
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getPaddingTop()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxTopPadding:I

    .line 30
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getPaddingBottom()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxBottom:I

    .line 31
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getExpandable()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxExpandable:Z

    .line 32
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxVisibility:I

    :cond_2
    return-void
.end method

.method public getServiceBoxTopPadding()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxTopPadding:I

    return p0
.end method

.method public getServiceBoxVisibility()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxVisibility:I

    return p0
.end method

.method public reset(Z)V
    .locals 1

    const-string p1, "PluginLockServiceBox"

    const-string v0, "reset()"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxTopPadding:I

    .line 51
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxBottom:I

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxExpandable:Z

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->mServiceBoxVisibility:I

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

    const-string v0, "PluginLockServiceBox"

    const-string/jumbo v1, "update()"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method
