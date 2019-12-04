.class final Lcom/android/systemui/DebugUiOffloadThread$InternalTask$run$1;
.super Ljava/lang/Object;
.source "DebugUiOffloadThread.kt"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DebugUiOffloadThread$InternalTask;


# direct methods
.method constructor <init>(Lcom/android/systemui/DebugUiOffloadThread$InternalTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask$run$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread$InternalTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask$run$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread$InternalTask;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->access$end(Lcom/android/systemui/DebugUiOffloadThread$InternalTask;J)V

    return-void
.end method
