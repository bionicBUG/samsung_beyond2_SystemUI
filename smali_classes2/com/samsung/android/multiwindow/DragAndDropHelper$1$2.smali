.class Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->onDragEnd(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

.field final synthetic val$area:I

.field final synthetic val$forceFullPrimary:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/DragAndDropHelper$1;IZ)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    iput p2, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;->val$area:I

    iput-boolean p3, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;->val$forceFullPrimary:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    iget-object v0, v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$100(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;->val$area:I

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;->val$forceFullPrimary:Z

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;->onDragEnd(IZ)V

    return-void
.end method
