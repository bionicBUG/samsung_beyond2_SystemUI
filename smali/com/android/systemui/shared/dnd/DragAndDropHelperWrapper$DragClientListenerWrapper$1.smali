.class Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper$1;
.super Ljava/lang/Object;
.source "DragAndDropHelperWrapper.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper$1;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(IZ)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 27
    iget-object p0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper$1;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;->onDragEnd(IZ)V

    return-void
.end method

.method public onDragStart()V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper$1;->this$0:Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;->onDragStart()V

    return-void
.end method
