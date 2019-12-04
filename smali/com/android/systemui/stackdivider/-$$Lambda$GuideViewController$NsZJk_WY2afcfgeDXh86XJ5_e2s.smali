.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/GuideViewController;

.field private final synthetic f$1:Lcom/android/systemui/stackdivider/DividerView;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;->f$0:Lcom/android/systemui/stackdivider/GuideViewController;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;->f$1:Lcom/android/systemui/stackdivider/DividerView;

    iput p3, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;->f$3:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;->f$0:Lcom/android/systemui/stackdivider/GuideViewController;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;->f$1:Lcom/android/systemui/stackdivider/DividerView;

    iget v2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;->f$2:I

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;->f$3:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/stackdivider/GuideViewController;->lambda$actionUpOrCancel$0$GuideViewController(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V

    return-void
.end method
