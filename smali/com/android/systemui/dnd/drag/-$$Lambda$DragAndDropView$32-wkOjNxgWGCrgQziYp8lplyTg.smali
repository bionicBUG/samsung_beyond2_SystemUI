.class public final synthetic Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

.field private final synthetic f$1:Landroid/view/ViewGroup$MarginLayoutParams;

.field private final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;->f$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p3, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;->f$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object v1, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;->f$2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->lambda$onDragStart$0$DragAndDropView(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;)V

    return-void
.end method
