.class Lcom/android/systemui/qs/SecPageIndicator$1;
.super Ljava/lang/Object;
.source "SecPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecPageIndicator;

.field final synthetic val$pageNumber:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecPageIndicator;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->this$0:Lcom/android/systemui/qs/SecPageIndicator;

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->val$pageNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->this$0:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-static {p1}, Lcom/android/systemui/qs/SecPageIndicator;->access$000(Lcom/android/systemui/qs/SecPageIndicator;)Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->this$0:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-static {p1}, Lcom/android/systemui/qs/SecPageIndicator;->access$100(Lcom/android/systemui/qs/SecPageIndicator;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->this$0:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-static {p1}, Lcom/android/systemui/qs/SecPageIndicator;->access$000(Lcom/android/systemui/qs/SecPageIndicator;)Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->val$pageNumber:I

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;->setViewPageToSelected(I)V

    :cond_0
    return-void
.end method
