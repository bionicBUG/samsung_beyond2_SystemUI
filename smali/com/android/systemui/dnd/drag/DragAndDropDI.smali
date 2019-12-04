.class public Lcom/android/systemui/dnd/drag/DragAndDropDI;
.super Ljava/lang/Object;
.source "DragAndDropDI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDropTargetStrategy()Lcom/android/systemui/dnd/drop/DropTargetStrategy;
    .locals 1

    .line 10
    sget-boolean v0, Lcom/android/systemui/Rune;->APPDOCK_SUPPORT_WINNER:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;

    invoke-direct {v0}, Lcom/android/systemui/dnd/drop/WinnerDropTargetStrategy;-><init>()V

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;

    invoke-direct {v0}, Lcom/android/systemui/dnd/drop/TabletDropTargetStrategy;-><init>()V

    return-object v0
.end method
