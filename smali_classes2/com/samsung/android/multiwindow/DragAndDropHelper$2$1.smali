.class Lcom/samsung/android/multiwindow/DragAndDropHelper$2$1;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/DragAndDropHelper$2;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 186
    sget-object v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$2;

    iget-object v0, v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$200(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    .line 188
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$2;

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$100(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;->onDragEnd(IZ)V

    return-void
.end method
