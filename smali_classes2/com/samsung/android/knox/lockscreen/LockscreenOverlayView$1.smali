.class Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;
.super Landroid/os/Handler;
.source "LockscreenOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->access$000(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)Z

    return-void
.end method
