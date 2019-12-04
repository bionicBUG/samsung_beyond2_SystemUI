.class Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizerTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerTileLayout;->moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field final synthetic val$emptyPos:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;I)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$emptyPos:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "CustomizerTileLayout"

    const-string v0, "moveTile onAnimationStart"

    .line 317
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$emptyPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 319
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$emptyPos:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
