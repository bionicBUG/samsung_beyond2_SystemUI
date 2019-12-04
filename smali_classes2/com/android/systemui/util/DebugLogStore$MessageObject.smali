.class Lcom/android/systemui/util/DebugLogStore$MessageObject;
.super Ljava/lang/Object;
.source "DebugLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/DebugLogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObject"
.end annotation


# instance fields
.field debugLog:Lcom/android/systemui/util/DebugLogStore$DebugLog;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/util/DebugLogStore;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DebugLogStore;Ljava/lang/String;Lcom/android/systemui/util/DebugLogStore$DebugLog;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/util/DebugLogStore$MessageObject;->this$0:Lcom/android/systemui/util/DebugLogStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/android/systemui/util/DebugLogStore$MessageObject;->tag:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/android/systemui/util/DebugLogStore$MessageObject;->debugLog:Lcom/android/systemui/util/DebugLogStore$DebugLog;

    return-void
.end method
