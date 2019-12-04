.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageButtonResources(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
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

    .line 171
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method
