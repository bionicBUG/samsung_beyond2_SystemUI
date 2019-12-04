.class Lcom/android/systemui/pluginlock/component/PluginLockClock$1;
.super Ljava/lang/Object;
.source "PluginLockClock.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/component/PluginLockClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/pluginlock/component/PluginLockClock;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockStyleChanged()V
    .locals 7

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->access$000(Lcom/android/systemui/pluginlock/component/PluginLockClock;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->access$000(Lcom/android/systemui/pluginlock/component/PluginLockClock;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->access$000(Lcom/android/systemui/pluginlock/component/PluginLockClock;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    const-string v1, "PluginLockClock"

    if-gez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->access$002(Lcom/android/systemui/pluginlock/component/PluginLockClock;J)J

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClockCallbackRegisterTime changed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->access$000(Lcom/android/systemui/pluginlock/component/PluginLockClock;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClockStyleChanged() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->access$100(Lcom/android/systemui/pluginlock/component/PluginLockClock;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->access$100(Lcom/android/systemui/pluginlock/component/PluginLockClock;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 195
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;->this$0:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->recover()V

    :cond_2
    return-void
.end method
