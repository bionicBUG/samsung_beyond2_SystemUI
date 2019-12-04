.class Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizerTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field final synthetic val$idx:I

.field final synthetic val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 219
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->access$100(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 221
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 210
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->access$100(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 212
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$info:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "CustomizerTileLayout"

    const-string v0, "moveTile onAnimationStart"

    .line 202
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 204
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->val$idx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
