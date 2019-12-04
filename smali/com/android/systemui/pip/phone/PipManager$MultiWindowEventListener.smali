.class Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    return-void
.end method


# virtual methods
.method public onFocusedDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onFocusedStackChanged(Landroid/app/ActivityManager$StackInfo;)V
    .locals 0

    return-void
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "PipManager"

    const-string v0, "onMultiWindowEnableChanged: Try to register PinnedStackListener."

    .line 283
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$MultiWindowEventListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$1000(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to register pinned stack listener"

    .line 287
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onSnapWindowVisibilityChanged(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method
