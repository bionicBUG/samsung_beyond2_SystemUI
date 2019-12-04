.class Lcom/android/systemui/qs/bar/HandlerBar$1;
.super Ljava/lang/Object;
.source "HandlerBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/HandlerBar;->inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/HandlerBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/HandlerBar;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar$1;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar$1;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    iget p2, p1, Lcom/android/systemui/qs/bar/HandlerBar;->mOldHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/HandlerBar;->getBarHeight()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar$1;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/HandlerBar;->getBarHeight()I

    move-result p2

    iput p2, p1, Lcom/android/systemui/qs/bar/HandlerBar;->mOldHeight:I

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/bar/HandlerBar$1;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    :cond_0
    return-void
.end method
