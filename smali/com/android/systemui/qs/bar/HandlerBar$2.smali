.class Lcom/android/systemui/qs/bar/HandlerBar$2;
.super Ljava/lang/Object;
.source "HandlerBar.java"

# interfaces
.implements Lcom/android/systemui/qs/QSSecurityFooter$QSSecurityFooterCallback;


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

    .line 56
    iput-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    iget-boolean v1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpanded:Z

    if-eqz v1, :cond_2

    .line 60
    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->access$000(Lcom/android/systemui/qs/bar/HandlerBar;)Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->access$000(Lcom/android/systemui/qs/bar/HandlerBar;)Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/HandlerBar;->access$100(Lcom/android/systemui/qs/bar/HandlerBar;)Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->hasFooter()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->access$200(Lcom/android/systemui/qs/bar/HandlerBar;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/HandlerBar;->access$300(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/widget/ImageView;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method
