.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;
.super Ljava/lang/Object;
.source "BubbleContainerFolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 646
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 647
    invoke-static {}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$400()Z

    move-result v0

    const-string v2, "BubbleContainerManager"

    if-eqz v0, :cond_0

    const-string v0, "[FolderView] mOpenFolderRunnable Run()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x14d

    .line 652
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v3}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    move v6, v0

    move v7, v6

    .line 654
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v8}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v8

    if-ge v0, v8, :cond_7

    .line 655
    iget-object v8, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {v8, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;

    if-nez v8, :cond_1

    goto/16 :goto_3

    .line 659
    :cond_1
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 660
    invoke-static {}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$400()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FolderView] openAnim, itemView="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    .line 662
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 666
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v9}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v9

    sub-int/2addr v9, v1

    if-ne v0, v9, :cond_4

    move v9, v1

    goto :goto_1

    :cond_4
    move v9, v4

    .line 667
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    .line 668
    invoke-static {v10}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1700(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v11}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    move-result-object v11

    iget v11, v11, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v10, v11

    mul-int/2addr v10, v0

    if-eqz v3, :cond_5

    move v11, v1

    goto :goto_2

    :cond_5
    const/4 v11, -0x1

    :goto_2
    mul-int/2addr v10, v11

    .line 669
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v10

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12, v12, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    int-to-long v13, v5

    .line 670
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    int-to-long v13, v6

    .line 671
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 672
    sget-object v10, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v10}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 673
    new-instance v10, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;

    invoke-direct {v10, p0, v8, v9}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;Landroid/view/View;Z)V

    invoke-virtual {v11, v10}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 699
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v12, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v12, 0x64

    .line 700
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    int-to-long v12, v7

    .line 701
    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 702
    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 703
    sget-object v10, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 705
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 706
    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 707
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 708
    invoke-virtual {v8, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v8, v5, -0x21

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_6

    add-int/lit8 v5, v5, -0x21

    add-int/lit8 v6, v6, 0x21

    add-int/lit8 v7, v7, 0x42

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 716
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0, v4}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1502(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z

    return-void
.end method
