.class public abstract Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;
.super Ljava/lang/Object;
.source "DragAndDropHelperWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DragClientListenerWrapper"
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper$1;-><init>(Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/dnd/DragAndDropHelperWrapper$DragClientListenerWrapper;->mListener:Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;

    return-void
.end method


# virtual methods
.method public abstract onDragEnd(IZ)V
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
.end method

.method public abstract onDragStart()V
.end method
