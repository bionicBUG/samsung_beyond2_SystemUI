.class Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;
.super Ljava/lang/Object;
.source "FaceWidgetViewPager.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/facewidget/FaceWidgetViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateClockPositionFraction(IF)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    sub-float p2, v1, p2

    goto :goto_0

    :cond_1
    move p2, v1

    .line 139
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$000(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 140
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {p1}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_3

    sub-float/2addr p2, v1

    .line 141
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 143
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$000(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/systemui/facewidget/FaceWidgetController;->updateClockPageLocation(F)V

    :cond_4
    return-void
.end method


# virtual methods
.method isFirstPageLocated(IF)Z
    .locals 3

    .line 159
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$600(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    if-ne p1, v2, :cond_0

    cmpl-float p0, p2, v0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    cmpl-float p0, p2, v0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method isLastPageLocated(IF)Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 151
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$600(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    if-ne p1, v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged() state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$400(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPageMoveForced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$500(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$402(Lcom/android/systemui/facewidget/FaceWidgetViewPager;I)I

    .line 174
    sget-boolean v0, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$500(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$700(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$800(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setCurrentItem(IZ)V

    const-string v0, "onPageScrollStateChanged() move to first page forced"

    .line 178
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$300(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$200(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setCurrentItem(IZ)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged() move to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$200(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " page forced"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$100(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$100(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$202(Lcom/android/systemui/facewidget/FaceWidgetViewPager;I)I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, p2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$302(Lcom/android/systemui/facewidget/FaceWidgetViewPager;F)F

    .line 97
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$400(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)I

    move-result v0

    const-string v1, "FaceWidgetViewPager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->isFirstPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, v3}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$502(Lcom/android/systemui/facewidget/FaceWidgetViewPager;Z)Z

    .line 100
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, v2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$402(Lcom/android/systemui/facewidget/FaceWidgetViewPager;I)I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setCurrentItem(IZ)V

    const-string v0, "onPageScrolled() move to last page"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->isLastPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, v3}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$502(Lcom/android/systemui/facewidget/FaceWidgetViewPager;Z)Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, v2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$402(Lcom/android/systemui/facewidget/FaceWidgetViewPager;I)I

    .line 106
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->setCurrentItem(IZ)V

    const-string v0, "onPageScrolled() move to first page"

    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$400(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    const-string v0, "onPageScrolled() dragging, mIsPageMoveForced = false"

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, v2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$502(Lcom/android/systemui/facewidget/FaceWidgetViewPager;Z)Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0, v3}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$402(Lcom/android/systemui/facewidget/FaceWidgetViewPager;I)I

    .line 116
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$000(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$000(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/facewidget/FaceWidgetController;->playOwnerInfoAnimation(F)V

    .line 120
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->updateClockPositionFraction(IF)V

    .line 123
    sget-boolean v0, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$100(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 125
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$100(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$000(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->getCurrentPagePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$000(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->onPageSelected(Ljava/lang/String;)V

    .line 83
    :cond_1
    sget-boolean v1, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {v1}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$100(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetViewPager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->access$100(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected() position = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", packageName = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetViewPager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
