.class public interface abstract Lcom/android/systemui/dnd/drop/DropTargetStrategy;
.super Ljava/lang/Object;
.source "DropTargetStrategy.java"


# virtual methods
.method public abstract getVisibleDropTargets(Landroid/content/Context;Lcom/android/systemui/dnd/StackVisibility;Lcom/android/systemui/dnd/RequesterInfo;)Ljava/util/List;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/dnd/StackVisibility;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/dnd/RequesterInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/dnd/StackVisibility;",
            "Lcom/android/systemui/dnd/RequesterInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/dnd/drop/DropTargetInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWindowingModeFromDropTarget(I)I
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end method

.method public abstract postDragEnd(I)V
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param
.end method

.method public abstract preDragEnd(I)V
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param
.end method
