.class Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;
.super Ljava/lang/Object;
.source "ResizeModeChangedFromBlackListEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;->onResizeModeChangedFromBlackList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;Ljava/util/List;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;->this$1:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResizeModeChangedFromBlackList: black list size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;->this$1:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;

    iget-object v1, v1, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;->this$0:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;

    .line 42
    invoke-static {v1}, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;->access$000(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlackListListener"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;->this$1:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;

    iget-object v0, v0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;->this$0:Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;

    iget-object p0, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1$1;->val$list:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;->onResizeModeChangedFromBlackList(Ljava/util/ArrayList;)V

    return-void
.end method
