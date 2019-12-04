.class Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;
.super Landroid/os/Handler;
.source "KeyguardInfinityPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 118
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {p1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->access$000(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->access$100(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    :cond_1
    :goto_0
    return-void
.end method
