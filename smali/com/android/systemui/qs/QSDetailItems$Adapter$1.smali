.class Lcom/android/systemui/qs/QSDetailItems$Adapter$1;
.super Ljava/lang/Object;
.source "QSDetailItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetailItems$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

.field final synthetic val$item:Lcom/android/systemui/qs/QSDetailItems$Item;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$500(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    const v0, 0x1020016

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailItemActive:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->qs_detail_item_title_progress_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {p1}, Lcom/android/systemui/qs/QSDetailItems;->access$500(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSDetailItems$Callback;->onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :cond_1
    return-void
.end method
