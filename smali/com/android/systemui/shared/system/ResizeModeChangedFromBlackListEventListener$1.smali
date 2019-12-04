.class Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;
.super Lcom/samsung/android/multiwindow/IResizeModeChangedFromBlackListEventListener$Stub;
.source "ResizeModeChangedFromBlackListEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;->this$0:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IResizeModeChangedFromBlackListEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeModeChangedFromBlackList(Ljava/util/List;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;->this$0:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;

    invoke-static {v0}, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;->access$100(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;-><init>(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
