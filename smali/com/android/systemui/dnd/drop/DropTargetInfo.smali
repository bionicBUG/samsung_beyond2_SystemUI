.class public Lcom/android/systemui/dnd/drop/DropTargetInfo;
.super Ljava/lang/Object;
.source "DropTargetInfo.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mDisabled:Z

.field private mDropTarget:I
    .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
    .end annotation
.end field

.field private mTouchBounds:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mDropTarget:I

    .line 24
    iput-object p2, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mBounds:Landroid/graphics/Rect;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mTouchBounds:Landroid/graphics/Rect;

    .line 26
    iput-boolean p4, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mDisabled:Z

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 28
    iget p2, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mDropTarget:I

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mBounds:Landroid/graphics/Rect;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iget-object p0, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mTouchBounds:Landroid/graphics/Rect;

    const/4 p2, 0x2

    aput-object p0, p1, p2

    const-string p0, "dropTarget=%d, mBounds=%s, mTouchBounds=%s"

    .line 28
    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDropTarget()I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 39
    iget p0, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mDropTarget:I

    return p0
.end method

.method public getTouchBounds()Landroid/graphics/Rect;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mTouchBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isDisabled()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;->mDisabled:Z

    return p0
.end method
