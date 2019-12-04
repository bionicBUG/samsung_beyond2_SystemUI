.class Lcom/android/systemui/util/DebugLogStore$1;
.super Landroid/os/Handler;
.source "DebugLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/DebugLogStore;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DebugLogStore;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/DebugLogStore;Landroid/os/Looper;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/util/DebugLogStore$1;->this$0:Lcom/android/systemui/util/DebugLogStore;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/util/DebugLogStore$1;->this$0:Lcom/android/systemui/util/DebugLogStore;

    invoke-static {p0, p1}, Lcom/android/systemui/util/DebugLogStore;->access$000(Lcom/android/systemui/util/DebugLogStore;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
