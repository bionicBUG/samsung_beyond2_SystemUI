.class Lcom/android/systemui/util/DebugLogStore$DebugLog;
.super Ljava/lang/Object;
.source "DebugLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DebugLogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugLog"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/util/DebugLogStore;

.field time:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DebugLogStore;Ljava/lang/String;)V
    .locals 2

    .line 125
    iput-object p1, p0, Lcom/android/systemui/util/DebugLogStore$DebugLog;->this$0:Lcom/android/systemui/util/DebugLogStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/util/DebugLogStore$DebugLog;->time:J

    .line 127
    iput-object p2, p0, Lcom/android/systemui/util/DebugLogStore$DebugLog;->text:Ljava/lang/String;

    return-void
.end method
