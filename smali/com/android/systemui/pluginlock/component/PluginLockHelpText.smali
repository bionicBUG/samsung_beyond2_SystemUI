.class public Lcom/android/systemui/pluginlock/component/PluginLockHelpText;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockHelpText.java"


# instance fields
.field private mHelpTextMarginBottom:I

.field private mHelpTextVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->mHelpTextVisibility:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->mHelpTextMarginBottom:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    const-string p1, "PluginLockHelpText"

    const-string v0, "apply()"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->getHelpTextVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->mHelpTextVisibility:I

    .line 24
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->getMarginBottom()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->mHelpTextMarginBottom:I

    return-void
.end method

.method public getHelpTextMarginBottom()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->mHelpTextMarginBottom:I

    return p0
.end method

.method public getHelpTextVisibility()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->mHelpTextVisibility:I

    return p0
.end method

.method public isHelpTextInvisible()Z
    .locals 1

    .line 45
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->mHelpTextVisibility:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockHelpText"

    const-string/jumbo v1, "update()"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method
