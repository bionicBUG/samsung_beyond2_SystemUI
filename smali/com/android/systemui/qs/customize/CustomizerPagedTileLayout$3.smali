.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 136
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    .line 137
    invoke-static {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$500(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    int-to-long v0, p0

    const-string p0, "3002"

    .line 136
    invoke-static {p1, p0, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$400(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 125
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p2, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$502(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;F)F

    .line 126
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 127
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    .line 128
    invoke-virtual {p3}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 127
    :goto_0
    invoke-interface {p2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_3
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v3

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    move v2, v3

    :cond_2
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_3
    return-void
.end method
