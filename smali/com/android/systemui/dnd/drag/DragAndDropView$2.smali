.class Lcom/android/systemui/dnd/drag/DragAndDropView$2;
.super Ljava/lang/Object;
.source "DragAndDropView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dnd/drag/DragAndDropView;->addOnPreDrawListener(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

.field final synthetic val$postRunnable:Ljava/lang/Runnable;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$2;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$2;->val$rootView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$2;->val$postRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$2;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 336
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$2;->val$postRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 337
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
